from . import db


class Card(db.Model):
    __tablename__ = 'card'
    card_id = db.Column(db.Integer, primary_key=True)
    card_name = db.Column(db.String(50))
    card_text = db.Column(db.String(10000))
    card_type = db.Column(db.String(50))
    champions = db.relationship('Champion', backref='card', lazy=True, uselist=False)
    pets = db.relationship('Pet', backref='card', lazy=True, uselist=False)
    monsters = db.relationship('NeutralMonster', backref='card', lazy=True, uselist=False)
    spells = db.relationship('SummonerSpell', backref='card', lazy=True, uselist=False)
    items = db.relationship('Item', backref='card', lazy=True, uselist=False)


class Champion(db.Model):
    __tablename__ = 'champion'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    epithet = db.Column(db.String(60))
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    ap = db.Column(db.Integer)
    region = db.Column(db.String(12))
    class1 = db.Column(db.String(12))
    class2 = db.Column(db.String(12))
    type1 = db.Column(db.String(12))
    type2 = db.Column(db.String(12))
    pets = db.relationship('Pet', backref='champion', lazy=True)


class Pet(db.Model):
    __tablename__ = 'pet'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    belongs_to = db.Column(db.Integer, db.ForeignKey('champion.card_id'))


class NeutralMonster(db.Model):
    __tablename__ = 'neutral_monster'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    monster_type = db.Column(db.String(12))


class SummonerSpell(db.Model):
    __tablename__ = 'summoner_spell'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    spell_type = db.Column(db.String(14))


class Item(db.Model):
    __tablename__ = 'item'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    ap = db.Column(db.Integer)
    has = db.relationship('ItemHas', backref='item', lazy=True)


class ItemHas(db.Model):
    __tablename__ = 'item_has'
    card_id = db.Column(db.Integer, db.ForeignKey('item.card_id'), primary_key=True, nullable=False)
    stat_name = db.Column(db.String(20), primary_key=True)
    qty = db.Column(db.Integer)