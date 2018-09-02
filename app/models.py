from . import db


class Card(db.Model):
    __tablename__ = 'card'
    card_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50))
    text = db.Column(db.String(10000))
    type = db.Column(db.String(50))
    champions = db.relationship('Champion', backref='card', lazy=True, uselist=False)
    pets = db.relationship('Pet', backref='card', lazy=True, uselist=False)
    monsters = db.relationship('NeutralMonster', backref='card', lazy=True, uselist=False)
    spells = db.relationship('SummonerSpell', backref='card', lazy=True, uselist=False)
    items = db.relationship('Item', backref='card', lazy=True, uselist=False)

    def get_id(self):
        return str(self.id)  # python 3 support


class Champion(Card):
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

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<Champion %r>' % (self.name)


class Pet(Card):
    __tablename__ = 'pet'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    belongs_to = db.Column(db.Integer, db.ForeignKey('champion.card_id'))

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<Pet %r>' % (self.name)


class MeutralMonster(Card):
    __tablename__ = 'neutral_monster'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    monster_type = db.Column(db.String(12))

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<NeutralMonster %r>' % (self.name)


class SummonerSpell(Card):
    __tablename__ = 'summoner_spell'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    spell_type = db.Column(db.String(14))

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<SummonerSpell %r>' % (self.name)


class Item(Card):
    __tablename__ = 'item'
    __table_args__ = {'extend_existing': True}
    card_id = db.Column(db.Integer, db.ForeignKey('card.card_id'), primary_key=True, nullable=False)
    hp = db.Column(db.Integer)
    ad = db.Column(db.Integer)
    ap = db.Column(db.Integer)
    has = db.relationship('ItemHas', backref='item', lazy=True)

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<Item %r>' % (self.name)


class ItemHas(db.Model):
    __tablename__ = 'item_has'
    card_id = db.Column(db.Integer, db.ForeignKey('item.card_id'), primary_key=True, nullable=False)
    stat_name = db.Column(db.String(20))
    qty = db.Column(db.Integer)

    def get_id(self):
        return str(self.id)  # python 3 support

    def __repr__(self):
        return '<ItemHas %r>' % (self.name)
