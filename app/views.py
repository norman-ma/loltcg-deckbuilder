"""
Flask Documentation:     http://flask.pocoo.org/docs/
Jinja2 Documentation:    http://jinja.pocoo.org/2/documentation/
Werkzeug Documentation:  http://werkzeug.pocoo.org/documentation/
This file creates your application.
"""
import base64
import io
import os
import ast
import random
from app import app, db
from flask import render_template, request, redirect, url_for, flash, json, jsonify, send_file, send_from_directory, make_response
from app.models import *
import xml.etree.ElementTree as xml_tree
from werkzeug.utils import secure_filename
from flask_cors import cross_origin


def flash_errors(form):
    for field, errors in form.errors.items():
        for error in errors:
            flash(u"Error in the %s field - %s" % (
                getattr(form, field).label.text,
                error
            ))


idset = False
ids = []


def get_ids():
    global idset
    if idset:
        return ids
    else:
        out = []
        query = db.session
        sql = "select card_id from card;"

        result = query.execute(sql).fetchall()
        for r in result:
            out.append(r[0])
        idset = True
        return out



def next_id():
    global ids
    ids = get_ids()
    i = random.randint(1000, 9999)
    while i in ids:
        i = random.randint(1000, 9999)

    ids.append(i)
    return i


###
# Routing for your application.
###

@app.route('/', methods=['GET'])
def home():
    """Render website's home page."""
    return render_template('home.html')


@app.route("/deckbuilder", methods=['GET'])
def deckbuilder():
    return render_template('deckbuilder.html')


@app.route('/search', methods=["POST"])
def search():
    if request.method == "POST":

        data = request.get_json(force=True)

        keyword = data['keyword']
        card_type = data['card_type']

        if card_type == 'CHAMPION':

            region = data['champ_region']
            champ_class = data['champ_class']
            champ_type = data['champ_type']
            hp = [data['min_hp'], data['max_hp']]
            ad = [data['min_ad'], data['max_ad']]
            ap = [data['min_ap'], data['max_ap']]

            cards = search_champs(keyword, region, champ_class, champ_type, hp, ad, ap)

        elif card_type == 'SUMMONERSPELL':

            spell_type = data['spell_type']

            cards = search_spells(keyword, spell_type)

        elif card_type == 'ITEM':

            hp = [data['min_hp'], data['max_hp']]
            ad = [data['min_ad'], data['max_ad']]
            ap = [data['min_ap'], data['max_ap']]

            stats = []

            if data['cdr']:
                stats.append('COOLDOWNREDUCTION')

            if data['res']:
                stats.append('RESISTANCE')

            if data['ats']:
                stats.append('ATTACKSPEED')

            if data['crit']:
                stats.append('CRITICALSTRIKECHANCE')

            if data['ls']:
                stats.append('LIFESTEAL')

            if data['pen']:
                stats.append('PENETRATION')

            if data['hsp']:
                stats.append('HEALANDSHIELDPOWER')

            cards = search_items(keyword, hp, ad, ap, stats)

        elif card_type == 'PET' or card_type == 'NEUTRALMONSTER':

            cards = search_cards(keyword, card_type)

        else:

            cards = search_cards(keyword)

        result = []

        for c in cards:
            result.append({"id": c["id"], "name": c["name"], "img": c["img"], "type": c["cardtype"]})

        out = {'error': None, 'data': result, 'message': 'Success'}

        return jsonify(out)


def search_cards(keyword, ctype=''):
    query = db.session

    sql = "select card_id from card "

    if keyword != '' and keyword is not None:
        sql += "where (card.card_name ilike \'%" + keyword + "%\' or card.card_text ilike \'%" + keyword + "%\') "

    if ctype != '' and ctype is not None:
        if 'where' in sql:

            sql += 'and '

        else:

            sql += 'where '

        sql += " card.card_type = \'" + ctype + "\' "

    sql += 'order by card.card_name asc;'

    res = query.execute(sql).fetchall()

    out = []
    for card in res:
        out.append(get_card(card[0]))

    return out


def search_champs(keyword, region, champ_class, champ_type, hp, ad, ap):
    query = db.session

    sql = "select card.card_id from card, champion where card.card_id = champion.card_id "

    if keyword != '' and keyword is not None:
        sql += "and (card.card_name ilike \'%" + keyword + "%\' or card.card_text ilike \'%" + keyword + "%\' or champion.epithet ilike \'%" + keyword + "%\') "

    if region != '' and region is not None:
        sql += "and champion.region = \'" + region + "\' "

    if champ_class != '' and champ_class is not None:
        sql += "and (champion.class1 = \'" + champ_class + "\' or champion.class2 = \'" + champ_class + "\') "

    if champ_type != '' and champ_type is not None:
        sql += "and (champion.type1 = \'" + champ_type + "\' or champion.type2 = \'" + champ_type + "\') "

    if hp[0] > 0 and hp[1] == 0:
        sql += "and champion.hp = " + str(hp[0]) + " "
    elif 0 < hp[0] < hp[1] and hp[1] > 0:
        sql += "and champion.hp >= " + str(hp[0]) + " and champion.hp <= " + str(hp[1]) + " "

    if ad[0] > 0 and ad[1] == 0:
        sql += "and champion.ad = " + str(ad[0]) + " "
    elif 0 < ad[0] < ad[1] and ad[1] > 0:
        sql += "and champion.ad >= " + str(ad[0]) + " and champion.ad <= " + str(ad[1]) + " "

    if ap[0] > 0 and ap[1] == 0:
        sql += "and champion.ap = " + str(ap[0]) + " "
    elif 0 < ap[0] < ap[1] and ap[1] > 0:
        sql += "and champion.ap >= " + str(ap[0]) + " and champion.ap <= " + str(ap[1]) + " "

    sql += "order by card.card_name asc;"

    res = query.execute(sql).fetchall()

    out = []
    for card in res:
        out.append(get_card(card[0]))

    return out


def search_items(keyword, hp, ad, ap, stats):
    query = db.session

    if len(stats) > 0:

        sql = 'select card.card_id from card, item, item_has where card.card_id = item.card_id and item.card_id = item_has.card_id '

        for i in range(len(stats)):
            if i == 0:
                sql += 'and ( '
            else:
                sql += 'or '

            sql += 'item_has.stat_name = \'' + stats[i] + '\' '

        sql += ") "

    else:

        sql = "select card.card_id from card, item where card.card_id = item. card_id "

    if keyword != '' and keyword is not None:
        sql += "and (card.card_name ilike \'%" + keyword + "%\' or card.card_text ilike \'%" + keyword + "%\') "

    if hp[0] > 0 and hp[1] == 0:
        sql += "and item.hp = " + str(hp[0]) + " "
    elif 0 < hp[0] < hp[1] and hp[1] > 0:
        sql += "and item.hp >= " + str(hp[0]) + " and item.hp <= " + str(hp[1]) + " "

    if ad[0] > 0 and ad[1] == 0:
        sql += "and item.ad = " + str(ad[0]) + " "
    elif 0 < ad[0] < ad[1] and ad[1] > 0:
        sql += "and item.ad >= " + str(ad[0]) + " and item.ad <= " + str(ad[0]) + " "

    if ap[0] > 0 and ap[1] == 0:
        sql += "and item.ap = " + ap[0] + " "
    elif 0 < ap[0] < ap[1] and ap[1] > 0:
        sql += "and item.ap >= " + str(ap[0]) + " and item.ap <= " + str(ap[1]) + " "

    sql += "order by card.card_name asc;"

    res = query.execute(sql).fetchall()

    out = []
    for id in res:
        card = get_card(id[0])

        if len(stats) == 0:

            if card not in out:
                out.append(card)

        else:

            cstat = []
            for s in card["stats"]:
                cstat.append(s["stat"])

            all_in = []

            for s in stats:
                all_in.append(s in cstat)

            if False not in all_in and card not in out:
                out.append(card)

    return out


def search_spells(keyword, stype=""):
    query = db.session

    sql = "select card.card_id from card, summoner_spell where card.card_id = summoner_spell. card_id "

    if keyword != '' and keyword is not None:
        sql += "and (card.card_name ilike \'%" + keyword + "%\' or card.card_text ilike \'%" + keyword + "%\') "

    if stype != '' and stype is not None:
        sql += "and summoner_spell.spell_type = \'" + stype + "\' "

    sql += 'order by card.card_name asc;'

    res = query.execute(sql).fetchall()

    out = []
    for card in res:
        out.append(get_card(card[0]))

    return out


def get_card(id):
    img = url_for('static', filename='cards/' + str(id) + '.jpg')

    query = db.session

    sql = 'select card_name,card_text,card_type from card where card.card_id = ' + str(id) + ';'

    res = query.execute(sql).first()

    name = res[0]
    text = res[1]
    ctype = res[2]

    if ctype == "CHAMPION":
        sql = 'select * from champion where card_id = ' + str(id) + ";"

        res = query.execute(sql).first()

        epithet = res["epithet"]
        hp = res["hp"]
        ad = res["ad"]
        ap = res["ap"]
        region = res["region"]

        if res["class2"] != "NULL":
            classes = [res["class1"], res["class2"]]
        else:
            classes = [res["class1"]]

        if res["type2"] != "NULL":
            types = [res["type1"], res["type2"]]
        else:
            types = [res["type1"]]

        return {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "epithet": epithet,
                "region": region, "class": classes, "type": types, "hp": hp, "ad": ad, "ap": ap}

    if ctype == "PET":
        sql = 'select * from pet where card_id = ' + str(id) + ";"

        res = query.execute(sql).first()

        hp = res["hp"]
        ad = res["ad"]
        belongs_to = get_card(res["belongs_to"])["name"]

        return {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "belongs_to": belongs_to, "hp": hp,
                "ad": ad}

    if ctype == "NEUTRALMONSTER":
        sql = 'select * from neutral_monster where card_id = ' + str(id) + ";"

        res = query.execute(sql).first()

        hp = res["hp"]
        ad = res["ad"]
        mtype = res["monster_type"]

        return {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "type": mtype, "hp": hp, "ad": ad}

    if ctype == "SUMMONERSPELL":
        sql = 'select * from summoner_spell where card_id = ' + str(id) + ";"

        res = query.execute(sql).first()

        stype = res["spell_type"]

        return {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "type": stype}

    if ctype == "ITEM":
        sql = 'select * from item where card_id = ' + str(id) + ';'

        res = query.execute(sql).first()

        hp = res["hp"]
        ad = res["ad"]
        ap = res["ap"]

        sql = 'select * from item_has where card_id = ' + str(id) + ';'

        res = query.execute(sql).fetchall()

        stats = []

        for stat in res:
            stats.append({"stat": stat["stat_name"], "qty": stat["qty"]})

        return {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "stats": stats, "hp": hp, "ad": ad,
                "ap": ap}


@app.route('/card/<id>', methods=["GET"])
def card(id):
    return jsonify(get_card(id))


@app.route('/card/update', methods=['GET'])
def update():
    return render_template('update.html')


@app.route('/card/<id>/update', methods=["POST"])
def update_card(id):
    if request.method == "POST":

        file = request.files['file']
        if file is not None:
            path = os.path.join('app/static/cards/', str(id) + '.jpg')
            file.save(path)

        data = request.form

        ex = db.session
        sql = 'select * from card where card.card_id = ' + str(id) + ';'
        res = ex.execute(sql).first()
        ctype = res[3]

        sql = 'update card set '
        comma = False

        if data['name'] != '':
            sql += 'card_name = \'' + data['name'] + '\''
            comma = True

        if data['text'] != '':
            if comma:
                sql += ','
            sql += ' card_text = \'' + data['text'].replace('\\n', '\n') + '\''

        sql += ' where card_id = ' + str(id) + ';'

        ex.execute(sql)
        ex.commit()

        if ctype == "CHAMPION":
            sql = 'update champion set '
            comma = False

            if data['epithet'] != '':
                sql += 'epithet = \'' + data['epithet'] + '\' '
                comma = True

            if data['hp'] != '':
                if comma:
                    sql += ', '
                sql += 'hp = ' + str(data['hp'])
                comma = True

            if data['ad'] != '':
                if comma:
                    sql += ', '
                sql += 'ad = ' + str(data['ad'])
                comma = True

            if data['ap'] != '':
                if comma:
                    sql += ', '
                sql += 'ap = ' + str(data['ap'])
                comma = True

            if data['region'] != '':
                if comma:
                    sql += ', '
                sql += 'region = \'' + data['region'] + '\' '
                comma = True

            if data['class1'] != '':
                if comma:
                    sql += ', '
                sql += 'class1 = \'' + data['class1'] + '\' '
                comma = True

            if data['class2'] != '':
                if comma:
                    sql += ', '
                sql += 'class2 = \'' + data['class2'] + '\' '
                comma = True

            if data['type1'] != '':
                if comma:
                    sql += ', '
                sql += 'type1 = \'' + data['type1'] + '\' '
                comma = True

            if data['type2'] != '':
                if comma:
                    sql += ', '
                sql += 'type2 = \'' + data['type2'] + '\' '

            sql += ' where card_id = ' + str(id) + ';'

            ex.execute(sql)
            ex.commit()

        if ctype == "PET":
            sql = 'update pet set '
            comma = False

            if data['hp'] != '':
                if comma:
                    sql += ', '
                sql += 'hp = ' + str(data['hp'])
                comma = True

            if data['ad'] != '':
                if comma:
                    sql += ', '
                sql += 'ad = ' + str(data['ad'])

            sql += ' where card_id = ' + str(id) + ';'

            ex.execute(sql)
            ex.commit()

        if ctype == "NEUTRALMONSTER":
            sql = 'update neutral_monster set '
            comma = False

            if data['hp'] != '':
                if comma:
                    sql += ', '
                sql += 'hp = ' + str(data['hp'])
                comma = True

            if data['ad'] != '':
                if comma:
                    sql += ', '
                sql += 'ad = ' + str(data['ad'])

            sql += ' where card_id = ' + str(id) + ';'

            ex.execute(sql)
            ex.commit()

        if ctype == "SUMMONERSPELL":
            sql = 'update neutral_monster set '

            if data['spell_type'] != '':
                sql += 'spell_type = ' + data['spell_type']

            ex.execute(sql)
            ex.commit()

        if ctype == "ITEM":
            sql = 'update item set '
            comma = False

            if data['hp'] != '':
                if comma:
                    sql += ', '
                sql += 'hp = ' + str(data['hp'])
                comma = True

            if data['ad'] != '':
                if comma:
                    sql += ', '
                sql += 'ad = ' + str(data['ad'])
                comma = True

            if data['ap'] != '':
                if comma:
                    sql += ', '
                sql += 'ap = ' + str(data['ap'])

            sql += ' where card_id = ' + str(id) + ';'

            ex.execute(sql)
            ex.commit()

            sql = 'select stat_name from item_has where card_id = ' + str(id) + ';'
            res = ex.execute(sql).fetchall()
            stats = []
            for s in res:
                stats.append(s[0])

            item_stats = ast.literal_eval('[\'' + data['stat_name'].replace(',', '\',\'') + '\']')
            qtys = ast.literal_eval('[ \'' + data['qty'].replace(',', '\',\'') + '\' ]')
            for i in range(len(item_stats)):

                if item_stats[i].decode('utf-8') in stats:

                    sql = 'update item_has set '

                    if qtys[i] != '':
                        sql += 'qty = ' + str(qtys[i])

                    sql += ' where card_id = ' + str(id) + ' and stat_name = \'' + item_stats[
                        i] + '\';'

                    ex.execute(sql)
                    ex.commit()

                else:

                    sql = 'insert into item_has values (' + id + ',\'' + item_stats[i] + '\',' + str(qtys[i]) + ');'

                    ex.execute(sql)
                    ex.commit()

    return jsonify(get_card(id))


@app.route('/card/new', methods=["POST", "GET"])
def new_card():
    if request.method == "GET":
        return render_template('newcard.html')

    if request.method == "POST":

        ex = db.session

        out = {}

        id = next_id()
        img = url_for('static', filename='cards/' + str(id) + '.jpg')

        file = request.files['file']
        path = os.path.join('app/static/cards/', str(id) + '.jpg')
        file.save(path)

        data = request.form

        ctype = data['card_type']
        name = data['name']
        text = data['text']

        crd = Card(card_id=id, card_name=name, card_text=text, card_type=ctype)
        ex.add(crd)
        ex.commit()

        if ctype == "CHAMPION":
            epithet = data['epithet']
            region = data['region']
            hp = data['hp']
            ad = data['ad']
            ap = data['ap']
            type1 = data['type1']
            if data['type2'] == '':
                type2 = 'NULL'
            else:
                type2 = data['type2']
            class1 = data['class1']
            if data['class2'] == '':
                class2 = 'NULL'
            else:
                class2 = data['class2']

            champ = Champion(card_id=id, epithet=epithet, region=region, hp=hp, ad=ad, ap=ap, type1=type1, type2=type2,
                             class1=class1, class2=class2)
            ex.add(champ)
            ex.commit()

            out = {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "epithet": epithet,
                   "region": region, "class": [class1, class2], "type": [type1, type2], "hp": hp, "ad": ad, "ap": ap}

        if ctype == "PET":
            hp = data['hp']
            ad = data['ad']
            belongs_to = data['belongs_to']

            pet = Pet(card_id=id, hp=hp, ad=ad, belongs_to=belongs_to)
            ex.add(pet)
            ex.commit()

            out = {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "belongs_to": belongs_to,
                   "hp": hp, "ad": ad}

        if ctype == "NEUTRALMONSTER":
            hp = data['hp']
            ad = data['ad']
            monster_type = data['monster_type']

            nm = NeutralMonster(card_id=id, hp=hp, ad=ad, monster_type=monster_type)
            ex.add(nm)
            ex.commit()

            out = {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "type": monster_type, "hp": hp,
                   "ad": ad}

        if ctype == "SUMMONERSPELL":
            spell_type = data['spell_type']

            ss = SummonerSpell(card_id=id, spell_type=spell_type)
            ex.add(ss)
            ex.commit()

            out = {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "type": spell_type}

        if ctype == "ITEM":
            hp = data['hp']
            ad = data['ad']
            ap = data['ap']

            item = Item(card_id=id, hp=hp, ad=ad, ap=ap)
            ex.add(item)
            ex.commit()

            item_stats = ast.literal_eval('[\'' + data['stat_name'].replace(',', '\',\'') + '\']')
            qtys = ast.literal_eval('[ \'' + data['qty'].replace(',', '\',\'') + '\' ]')

            stats = []
            for i in range(len(item_stats)):
                s = ItemHas(card_id=id, stat_name=item_stats[i], qty=qtys[i])
                ex.add(s)
                ex.commit()

                stats.append({"stat": item_stats[i], "qty": qtys[i]})

            out = {"id": id, "img": img, "name": name, "text": text, "cardtype": ctype, "stats": stats, "hp": hp,
                   "ad": ad, "ap": ap}

        return jsonify(out)


@app.route('/deck/save/<name>', methods=["POST"])
def save_deck(name):
    if request.method == "POST":

        data = request.get_json(force=True)

        file = open('app/static/deck/' + name + '.dek', 'w')
        text = "<deck version=\"0.1\">\n\t<meta>\n\t\t<game>loltcg</game>\n\t</meta>\n\t<superzone name=\"Deck\">\n"
        for c in data['cards']:
            text += "\t\t<card><name id=\"" + str(c['id']) + "\" type=\"" + c['type'] + "\">" + c['name'] + "</name><set>Alpha</set></card>\n"

        text += "\t</superzone>\n</deck>"

        file.write(text)
        file.close()

        return 'static\\deck\\' + name + '.dek'


@app.route('/deck/load', methods=['POST'])
@cross_origin()
def load_deck():
    if request.method == "POST":

        file = request.files['file']
        filename = secure_filename(file.filename)
        path = os.path.join('app/static/deck/', filename)
        file.save(path)

        text = open(path).read()

        root = xml_tree.fromstring(text)
        szone = root[1]
        cards = []
        for card in szone:
            id = int(card[0].attrib['id'])
            ctype = card[0].attrib['type']
            name = card[0].text
            img = url_for('static', filename='cards/' + str(id) + '.jpg')
            cards.append({'id': id, 'img': img, 'name': name, 'type': ctype})

        out = {'error': None, 'data': cards, 'message': 'Success'}

        return jsonify(out)



###
# The functions below should be applicable to all Flask apps.
###

@app.route('/<file_name>.txt')
def send_text_file(file_name):
    """Send your static text file."""
    file_dot_text = file_name + '.txt'
    return app.send_static_file(file_dot_text)


@app.after_request
def add_header(response):
    """
    Add headers to both force latest IE rendering engine or Chrome Frame,
    and also to cache the rendered page for 10 minutes.
    """
    response.headers['X-UA-Compatible'] = 'IE=Edge,chrome=1'
    response.headers['Cache-Control'] = 'public, max-age=0'
    return response


@app.errorhandler(404)
def page_not_found(error):
    """Custom 404 page."""
    return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port="8080")
