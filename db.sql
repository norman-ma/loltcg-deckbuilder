--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: card; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.card (
    card_id integer NOT NULL,
    card_name character varying(50) NOT NULL,
    card_text character varying(10000),
    card_type character varying(50),
    trial452 character(1)
);


ALTER TABLE public.card OWNER TO lol;

--
-- Name: TABLE card; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.card IS 'TRIAL';


--
-- Name: COLUMN card.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.card.card_id IS 'TRIAL';


--
-- Name: COLUMN card.card_name; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.card.card_name IS 'TRIAL';


--
-- Name: COLUMN card.card_text; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.card.card_text IS 'TRIAL';


--
-- Name: COLUMN card.card_type; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.card.card_type IS 'TRIAL';


--
-- Name: COLUMN card.trial452; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.card.trial452 IS 'TRIAL';


--
-- Name: champion; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.champion (
    card_id integer NOT NULL,
    epithet character varying(60),
    hp integer,
    ad integer,
    ap integer,
    region character varying(12),
    class1 character varying(12),
    class2 character varying(12),
    type1 character varying(12),
    type2 character varying(12),
    trial455 character(1)
);


ALTER TABLE public.champion OWNER TO lol;

--
-- Name: TABLE champion; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.champion IS 'TRIAL';


--
-- Name: COLUMN champion.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.card_id IS 'TRIAL';


--
-- Name: COLUMN champion.epithet; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.epithet IS 'TRIAL';


--
-- Name: COLUMN champion.hp; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.hp IS 'TRIAL';


--
-- Name: COLUMN champion.ad; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.ad IS 'TRIAL';


--
-- Name: COLUMN champion.ap; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.ap IS 'TRIAL';


--
-- Name: COLUMN champion.region; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.region IS 'TRIAL';


--
-- Name: COLUMN champion.class1; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.class1 IS 'TRIAL';


--
-- Name: COLUMN champion.class2; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.class2 IS 'TRIAL';


--
-- Name: COLUMN champion.type1; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.type1 IS 'TRIAL';


--
-- Name: COLUMN champion.type2; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.type2 IS 'TRIAL';


--
-- Name: COLUMN champion.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.champion.trial455 IS 'TRIAL';


--
-- Name: item; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.item (
    card_id integer NOT NULL,
    hp integer,
    ad integer,
    ap integer,
    trial455 character(1)
);


ALTER TABLE public.item OWNER TO lol;

--
-- Name: TABLE item; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.item IS 'TRIAL';


--
-- Name: COLUMN item.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item.card_id IS 'TRIAL';


--
-- Name: COLUMN item.hp; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item.hp IS 'TRIAL';


--
-- Name: COLUMN item.ad; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item.ad IS 'TRIAL';


--
-- Name: COLUMN item.ap; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item.ap IS 'TRIAL';


--
-- Name: COLUMN item.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item.trial455 IS 'TRIAL';


--
-- Name: item_has; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.item_has (
    card_id integer NOT NULL,
    stat_name character varying(20) NOT NULL,
    qty integer,
    trial455 character(1)
);


ALTER TABLE public.item_has OWNER TO lol;

--
-- Name: TABLE item_has; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.item_has IS 'TRIAL';


--
-- Name: COLUMN item_has.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item_has.card_id IS 'TRIAL';


--
-- Name: COLUMN item_has.stat_name; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item_has.stat_name IS 'TRIAL';


--
-- Name: COLUMN item_has.qty; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item_has.qty IS 'TRIAL';


--
-- Name: COLUMN item_has.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.item_has.trial455 IS 'TRIAL';


--
-- Name: neutral_monster; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.neutral_monster (
    card_id integer NOT NULL,
    hp integer,
    ad integer,
    monster_type character varying(12),
    trial455 character(1)
);


ALTER TABLE public.neutral_monster OWNER TO lol;

--
-- Name: TABLE neutral_monster; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.neutral_monster IS 'TRIAL';


--
-- Name: COLUMN neutral_monster.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.neutral_monster.card_id IS 'TRIAL';


--
-- Name: COLUMN neutral_monster.hp; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.neutral_monster.hp IS 'TRIAL';


--
-- Name: COLUMN neutral_monster.ad; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.neutral_monster.ad IS 'TRIAL';


--
-- Name: COLUMN neutral_monster.monster_type; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.neutral_monster.monster_type IS 'TRIAL';


--
-- Name: COLUMN neutral_monster.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.neutral_monster.trial455 IS 'TRIAL';


--
-- Name: pet; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.pet (
    card_id integer NOT NULL,
    hp integer,
    ad integer,
    belongs_to integer,
    trial455 character(1)
);


ALTER TABLE public.pet OWNER TO lol;

--
-- Name: TABLE pet; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.pet IS 'TRIAL';


--
-- Name: COLUMN pet.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.pet.card_id IS 'TRIAL';


--
-- Name: COLUMN pet.hp; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.pet.hp IS 'TRIAL';


--
-- Name: COLUMN pet.ad; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.pet.ad IS 'TRIAL';


--
-- Name: COLUMN pet.belongs_to; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.pet.belongs_to IS 'TRIAL';


--
-- Name: COLUMN pet.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.pet.trial455 IS 'TRIAL';


--
-- Name: summoner_spell; Type: TABLE; Schema: public; Owner: lol
--

CREATE TABLE public.summoner_spell (
    card_id integer NOT NULL,
    spell_type character varying(14),
    trial455 character(1)
);


ALTER TABLE public.summoner_spell OWNER TO lol;

--
-- Name: TABLE summoner_spell; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON TABLE public.summoner_spell IS 'TRIAL';


--
-- Name: COLUMN summoner_spell.card_id; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.summoner_spell.card_id IS 'TRIAL';


--
-- Name: COLUMN summoner_spell.spell_type; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.summoner_spell.spell_type IS 'TRIAL';


--
-- Name: COLUMN summoner_spell.trial455; Type: COMMENT; Schema: public; Owner: lol
--

COMMENT ON COLUMN public.summoner_spell.trial455 IS 'TRIAL';


--
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.card (card_id, card_name, card_text, card_type, trial452) FROM stdin;
18	Voidborn Symbiote	Target 1 Champion you control; Equip this card to the target (This card is not treated as an Item). The equipped Champion gains 1 AD and 1 AP. If the equipped Champion slays a Champion: It gains 1 AD and 1 AP. At the end of the turn, if the equipped Champion has not Slain a Champion during this turn: It loses 1 HP. Only 1 “Voidborn Symbiote” may be equipped to a card.	SUMMONERSPELL	T
56	On The Slaughter Docks	Discard 1 Card; Bilgewater Champions you control attacks and abiliies deal 1 bonus damage to Neutral Monsters this turn. At the end of the turn: Draw 1 card for every enemy Champion and Neutral Monster slayed this turn, but if you have less cards in your hand than you had when this card was activated, after resolving this effect: Discard your hand. 	SUMMONERSPELL	T
66	Imperial Sorcery	Target 1 Noxus Champion you control: Equip this card to the target (this card is not treated as an Item). The equipped card gains 1 HP and 2 AP. Whenever the equipped Champion slays a Champion(s): It gains 1AP.  If the equipped Champion would be slain or destroyed by a card effect: Send this card to the Fountain and the equipped Champion takes no damage from that attack, ability or effect. Only 1 “Imperial Sorcery” may be equipped to a Champion.	SUMMONERSPELL	T
125	Illaoi	Prophet of an Elder God\nStatic Cooldown: 3 Turns\nIf no Tentacle Token is adjacent to this card, Place a Tentacle Token with 1 HP, , 1 Range and AD equal to half this card’s AD to a Zone adjacent to this card.  When this card attacks, all Tentacle Tokens will deal damage to any units in range in the target’s column and Heal this card for 3 HP.\nTest of Spirit | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Champion in range and flip a coin; If the result is Heads: Place a Spirit Token in the Zone infront of the target with HP equal to half of the target’s current HP until the end of the Turn. Half of the damage dealt to the Spirit Token is dealt to the target as well. If the Spirit Token is destroyed this turn, place a Tentacle Token in the Target’s Zone.\nLeap of Faith | 6 MANA | Range: 1\nCooldown: 4 Turns\nCooldown: 4 Turns\nQuick: Deal damage to all enemy cards and Spirit Tokens in range equal to half this card’s AD and place a Tentacle Token in the Zone of every Champion or Spirit Token damaged by this ability. This card gains +1 Attack Speed this turn.	CHAMPION	T
154	The Swarm	Quick: Banish up to 2 Champions from either player's Fountain; Summon 1 Voidling Token with 2 HP and 1 AD for each card banished as the cost for this card's effect.	SUMMONERSPELL	T
160	The Darkest Days	If you do not control “The First Lands”, Add 1 “The First Lands” from your Deck to your hand. If your opponent controls at least 1 Noxus Champion: You may also discard 1 other Summoner Spell to add 1 Ionia Champion with 4 or less HP from your Deck to your Hand, but for the rest of your turn, you cannot summon Champions.	SUMMONERSPELL	T
254	Ghost	Quick: Target 1 Champion you control: The target gains 1 Reposition Range until the End Phase.	SUMMONERSPELL	T
282	Cassiopeia	Noxious Miasma | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Zone in range: Deal damage equal to half this card’s AP to any card in that zone and Poison the target until the end of the turn. You may double this ability’s mana cost to target 2 Zones in range instead; apply this ability’s damage and effects to those zones and Ground affected cards. Poisoned targets take 1 Damage every Phase.\nTwin Fang | 1 MANA | Range: 2\nCooldown: Each Turn\nUp to 3 times this turn, target 1 enemy card in range: deal damage equal to half thid card’s AP. If target is Poisoned: This ability deals double damage.\nPetrifying Gaze | 6 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Deal damage to all cards in range equal to this card’s AP. Flip a coin for each affected card, and if the result is Heads: Disable that card for 2 Phases.	CHAMPION	T
286	Denizens of the Shadow Isles	Quick: Discard 1 card; Place 2 Undead Tokens on your side of the field with 2 HP and 2 AD. These are treated as Undead-type Champions for the effects of Summoner Spells, but you cannot summon any Champions for the rest of this turn. Whenever an Undead Token is slain: You may send 1 Champion from your deck to your Fountain.	SUMMONERSPELL	T
338	The Ruins of the Kingdom	Whenever a Shurima Champion is sent to your Fountain: Send the top 2 cards from your opponent's Deck to the Fountain. Whenever a Champion is slain: The controller of the slain card sends the top 2 cards from their Deck to the Fountain. Once per turn, you may discard 1 card and if you do: Add 1 Shurima Champion or Summoner Spell from your Fountain to your Hand. At the end of the turn: If you control no Shurima Champions: Send the top 2 cards from your Deck to the Fountain or destroy this card.	SUMMONERSPELL	T
386	Twitch	Deadly Venom\nWhen this card attacks a card: Apply 1 Deadly Venom Stack to the target. At the end of the turn: Deal damage to each card equal to the number of Deadly Venom Stacks on that card and consume all Deadly Venom Stacks.\nAmbush | 2 MANA\nCooldown: 2 Turns\nThis card enters Camouflage and during this Phase its Reposition range is 2; Upon coming out of Camouflage: this card gains +1 Attack Speed. If a Champion with Deadly Venom is slain: Refresh this ability’s cooldown.\nSpray and Pray | 5 MANA\nCooldown: 3 Turns\nQuick: During this turn, this card gains 2 AD and 1 range and its attacks damage all cards in range in the attack target’s column.	CHAMPION	T
417	Death's Dance	UNIQUE: When the  equipped Champion deals damage to any unit: Heal the equipped Champion for half the damage dealt - 1.\nUNIQUE: When the equipped Champion would be damaged: Reduce the damage by 3 and for 3 Phases: The equpped Champion takes 1 Damage at the end of the Phase. (This damage ignores Resistance stacks).	ITEM	T
423	Thornmail	Thorns\nUNIQUE: When the equipped card is attacked: deal damage to the attacking card equal to half the Resistance stacks of the equipped card and apply Grievous Wounds to that card for the rest of the Phase.\nCold Steel\nUNIQUE: When the equipped card is attacked: Reduce the attacking Champion's Attack Speed stacks by 1 until the end of the turn.	ITEM	T
472	Juggernaut's Return	Discard 1 card and Target 1 Banished Noxus Champion with 5 or more HP; Summon the target and it loses half its HP, gains AD/AP (adaptive) equal to half of its HP and it becomes Undead-type. Banish that card when it leaves the field. You may only activate 1 “Juggernaut's Return” per turn.	SUMMONERSPELL	T
543	Blitzcrank	Rocket Grab | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Zone in range and flip a coin: If the result is Heads: Deal damage equal to the  target Zone equal to this card’s AP, Disable the affected unit for 1 Phase and Reposition it to the Frontline Zone of its row (if possible).\nPower Fist | 2 MANA\nCooldown: 2 Turns\nThis card’s next attack deals bonus damage equal to this card’s AD and Knocks Up the target for 1 Phase. This card may attack again this turn. \nStatic Field | 5 MANA | Range: 2\nCooldown: 3 Turns\nAt the beginning of each turn roll a die and deal 1 damage the corresponding enemy zone. Quick: Deal damage to all cards in range equal to this card’s AP + 1 and Silence all affected cards.	CHAMPION	T
578	Ninja Tabi	UNIQUE: If the equipped Champion is attacked: Reduce that damage by 1.\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
593	Lee Sin	Sonic Wave/Resonating Strike | Range: 2\nCooldown: Each Turn\nTarget 1 enemy champion in range and flip a coin; If the result is Heads, deal damage to the champion equal to half this card’s AD and mark the Target with Sonic Wave for 2 Phases. You may reactivate this ability to Dash to the mk=arked card dealing damage equal to the target’s missing HP + 1.\nSafeguard/Iron Will | Range: 2\nCooldown: 2 Turns\nQuick:Target an allied unit, Reposition this card to an Zone adjacent to the target, and if the target is a Champion: Shield this card and the target for this card’s AP + 1. You may reactivate this ability and if you do: For the rest of the turn, this card gains +1 Life Steal and heals for 2 HP when it damages a unit with an ability.\nDragon’s Rage | Range: 1\nCooldown: 3 Turns\nOnce while this card is on the field, you may target 1 enemy card in range or that is marked with Sonic Wave; Displace the target. If the card was marked with Sonic Wave this turn: You may Reposition that card to the Frontline card of the target’s column instead.	CHAMPION	T
696	Progress Day	If you control at least 1 Piltover or Zaun Champion: Add 1 “The City of Progress” from your Deck to your Hand. Only cards with the Region mentioned in that card may attack this turn.	SUMMONERSPELL	T
719	Jhin	Death in 4 Acts\nThis card cannot attack more than once per turn and Critical Strikes deal 1.5 x this card’s AD.\nThis card gains 2 AD for each stack of Attack Speed\nThis card gains 1 AD for each stack of Critical Strike Chance\nEvery 4th  attack this card makes will Criticaly Strike (you do not flip a coin).\nDeadly Flourish | 4 MANA | Range: 2\nCooldown: 2 Turns\nIf an enemy champion has been damaged by an allied card this turn: Target that champion and flip a coin; If the result is Heads deal damage to the target equal to half this card’s AD and Root the target for 2 Phases.\nCurtain Call | 6 MANA | Range: 4\nCooldown: 4 Turns\nCooldown: 4 Turns\nChannel for 1 Phase: Flip a coin 4 times, targeting a column in range each time: If the result is Heads: Deal damage equal to this champion’s AD to the first enemy champion in range in the target column. The 4th attack will Criticaly Strike.	CHAMPION	T
734	Sion	Glory in Death\nWhen this card is slain: This card stays on the field until the end of the turn. During this period this card may attack or Reposition during any Phase and may attack once per Phase. At the beginning of each turn or when an enemy card is slain, flip a coin. If the result is Heads: This card gains 1 HP.\nDecimating Smash | 3 MANA | Range: 2\nCooldown: 2 Turns\nDeal damage equal to this card’s AD to all cards in range in this card’s column and Slow the cards affected. You may Channel this ability for 1 Phase; Dealing damage equal to this card’s AD + 1 and Knocking Up affected cards instead.\nUnstoppable Unslaught | 5 MANA | Range: 4\nCooldown: 3 Turns\nQuick: Target 1 Zone in range, this card is immune to all Crowd Control for 1 Phase; At the beginning of the next Phase, Dash to the target Zone, Knock Up all enemy cards beside the target Zone and Deal damage equal to half this card’s AD + 2 to all affected cards. 	CHAMPION	T
763	Recovery of the Ancient Magics	Target 1 Summoner Spell in your Fountain, except “Recovery of the Ancient Magics”; Activate the target's effect and shuffle it into the Deck.	SUMMONERSPELL	T
801	Kai'Sa	Second Skin\nThis card’s attacks deal bonus On-Hit damage equal to half this card’s AP (min 1) and apply 1 stack of Plasma to the target. If this card attacks a card with 4 Plasma stacks: Consume those stacks and deal damage to that card equal to half of the target’s missing HP. If this card has 2 stacks of Attack Speed it becomes Invisible for 1 Phase after it Repositions. If an enemy card is Disabled by an allied Champion: Apply 1 Stack of Plasma to that card.\nIcathian Rain/Void Seeker | 2 MANA | Range: 2\nCooldown: 2 Turns\nIf this card’s AD is higher than its AP: Deal damage equal to half this card’s AD  + half this card’s AP, to the first card in range in each column. If this card has 3 or more AD: Increase the damage dealt by this ability by 3.\nIf this card’s AP is higher than its AD: Target 1 column in range; Deal damage to the first card in range in the target column equal to half this card’s AP - 1 (min 1) + half this card’s AD - 1 (min 1) and apply 2 Stacks of Plasma to the target. If this card has 3 or more AP: Apply 3 Stacks of Plasma instead.\nIf this card’s AD and AP are equal: You may choose either of the two effects.\nKiller Instinct | 1 MANA | Range: 3\nCooldown: 3 Turns\nQuick: Target a card in range with at least 1 Plasma stack: Dash to that card and Shield this card for HP equal to 2 x this card’s AD + 2 x this card’s AP for up to 2 Phases.	CHAMPION	T
812	Call of the Avarosa	Discard 1 card or remove 2 Frost Stacks from anywhere on the field; Add 1 Human-Type Freljord Champion from your Deck to your Hand.	SUMMONERSPELL	T
862	Clarity	Restore Mana equal to half of your total Mana. You may only activate one “Clarity” per Game.	SUMMONERSPELL	T
887	Athene's Unholy Grail	UNIQUE:  When the equipped Champion damages a Champion gain 1 Blood Stack (max 3). When this card Heals or Shields an allied Champion: Consume all the Blood stacks and heal that Champion for the number of stacks consumed.	ITEM	T
898	Tahm Kench	An Aquired Taste\nThis card’s attacks and abilities deal 1 bonus damage. If this card damages an enemy Champion: Mark that card with Acquired Taste until the end of this turn.\nDevour | 2 MANA | Range: 1\nCooldown: 2 Turns\nQuick: Target 1 allied Champion, Enemy non-Champion card or enemy Champion marked with Aquired Taste in range; Apply the appropriate effect:\nAllied Champion: The target becomes Unargetable for 1 Phase and you may Reposition that card to any Zone in range.\nEnemy Champion: Disable the target for 2 Phases and the target becomes Untargetable for 1 Phase and you may Reposition that card to any Zone in range, dealing damage equal to half the target’s HP - 1 (min 2) and reduce this ability’s cooldown by 1.\nNon-Champion Card: Target 1 Column in range: Deal damage equal to this card’s AP to the first unit in that column and Slow that unit for 1 Phase.\n\nAbyssal Voyage | 5 MANA\nWhen this card is Summoned: Summon 1 Champion from the Hand or Fountain.	CHAMPION	T
902	Zz'Rot Portal	Void Gate\nUNIQUE: Target 1 Zone in range and place 1 Void Gate token in that Zone with 2 HP. At the end of each Turn: Deal 1 Damage to the first enemy unit in the Void Gate Token's column. If there are no units in the column: Deal 1 Damage to that column's Structure. You may only control 1 Void Gate Token at a time.	ITEM	T
932	Compassion	Quick: Discard 1 card and Target 1 Plant, Beast or Spirit-type Champion you control with 3 or less HP; During this Phase, if the target would take damage: Heal the target for that damage instead.	SUMMONERSPELL	T
940	Green Father's Protection	If a Plant, Beast, or Spirit-type Champion would be Slain by a Sumoner Spell effect or a Champion attack or ability: Activate the appropriate effect:\n• Champion Attack: Negate the attack and Silence the Champion for 1 Phase\n• Champion Ability: Negate the ability and Disable the Champion for 2 Phase\n• Summoner Spell Effect: Negate the effect, Destroy the card and your opponent cannot activate Summoner Spells for the rest of the turn.\nYou may only activate 1 “Green Father's Protection” per Turn.	SUMMONERSPELL	T
4718	Celestial Tether	If you control at least 1 Aspect-type Champion: Summon 1 Celestial-type Champion from your Deck.	SUMMONERSPELL	T
957	Prayer of the Solari Templar	Discard 1 card; Add 1 Aspect or Celestial-type Champion, whose name is different from all cards you control or in your Fountain, from your Deck to your Hand. If you control 1 “Targon Prime, The Celestial City”: Summon the card instead.	SUMMONERSPELL	T
974	Miss Fortune	Love Tap\nWhen this card attacks, if the target is different from the target of its last attack: That attack deals bonus damage equal to half of this card’s AD (On-Hit).\nDouble Up | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy unit in range; deal damage equal to this card’s AD and apply On-Hit effects (including Love Tap) to that card and any unit behind that target. This ability may Critically Strike and if the first target was slain by this ability then it will Critically Strike the second target.\nBullet Time | 6 MANA | Range: 2\nCooldown: Once while this card is on the field\nCooldown: Once while this card is on the field\nChannel for 3 Phases; During each Phase deal damage to every enemy card in range equal to this card’s AD. This ability may Criticaly Strike.	CHAMPION	T
1016	Flash	Quick: Target 1 allied Champion: Reposition the target to an allied Zone in 2 Range.	SUMMONERSPELL	T
1025	The Black Cleaver	UNIQUE:  When the equipped Champion damages an enemy Champion: Reduce that champion's Resistance Stacks by 1 for the rest of the turn.\nRage\nWhen the equipped Champion attacks or Slays a unit: it gains 1 Reposition range until the end of the turn.	ITEM	T
1048	The True Ice Shield	Quick: Target 1 Freljord Champion and equip this card to the target (This card is not treated as an Item). When an enemy Champion would inflict damage on the equipped Champion: Reduce the damage by the number of Frost stacks on that Champion (min. damage: 1). Only 1 “The True Ice Shield” may be equipped to a Champion.	SUMMONERSPELL	T
1056	Jinx	Get Excited!\nWhen this card slays an enemy Champion or destroys a Structure: This card gains +1 Attack Speed until the End Phase.\nSwitcheroo!\nCooldown: Each Turn\nOn: Quick: This card’s attacks cost 1 MANA, gain 1 range, deal 1 bonus damage and deal half the of the attack’s damage to any card beside the attack target.\nOff: This card gains +1 Attack Speed.\nSuper Mega Death Rocket! | 5 MANA | Range: Global\nCooldown: 3 Turns\nQuick: Target 1 Column; at the beginning of the next phase: Deal damage to the first card in that column equal to half this card’s AD + the number of Rows between this card and the affected card + 1. If the affected card is below half of their max HP: This ability deals double damage.	CHAMPION	T
1059	Taliyah	Threaded Volley | MANA 2 | Range: 2\nCooldown: Each Turn\nQuick: Channel for 2 Phases (this card may Repositon); At the beginning of each phase of the Channel duration, this card deals damage equal to half this card’s AP to the first card in range in this card’s column. Mark the Zone this ability is cast from with Worked Ground for 2 Turns. If this ability is cast from a Zone with Worked Ground: It has no mana cost but only Channels for 1 Phase.\nSeismic Shove | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Zone in range; At the end of the Phase, activate 1 of following effects:\n• Displace any unit in the target Zone.\n• Reposition any unit in the target Zone to the other Zone in it’s Column.\nWeaver’s Wall | 5 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Target 1 Column in range; Reposition all enemy units in the target Column to an empty Zone beside that unit, and if no zone is available: Displace that unit. For the rest of the turn: No units may be placed on that Column by any means.	CHAMPION	T
1074	The Immortal Bastion	While a Noxus Champion you control has bonus AD/AP from a source other than Items; that card cannot be targeted or damaged by the effects of your opponent's Summoner Spells. Once per turn, you may target 1 Noxus Champion you control; The target gains AD/AP (adaptive) equal to half the number of Champions on your opponent's side of the field and in their Fountain - the number of Champions in your Fountain and destroy the target at the end of the turn.	SUMMONERSPELL	T
1077	Ahri	Charm | 4 Mana | Range: 2\nCooldown: 2 Turns\nCooldown: 2 Turns\nTarget 1 enemy champion in range and flip a coin; If the result is Heads, Charm and Deal damage to the target equal to half this card’s AP. Each time Ahri damages that target again this turn deal 1 bonus damage.\nFox Fire | 2 MANA | Range: 1\nCooldown: Each Turn\nQuick: Deal damage to all cards in range equal to half this card’s AP. If only 1 card is in range or a card has been hit by Charm this turn, that card will take damage equal to this card’s AP + 2\nSpirit Rush | 5 MANA\nCooldown: 3 Turns\nQuick: Up to 3 times this turn, Dash to a zone in range and Deal damage equal to half this card’s AP to the first enemy unit in range in this card’s column.	CHAMPION	T
1159	Hextech GLP-800	Haste\nUNIQUE: + 1 Cooldown Reduction\nFrost Bolt | Range: 2\nCooldown: 2 Turns\nACTIVE: Quick: Deals damage to the first card in range in each column equal to half the equipped Champion's AP - 1 (min 2).  (This ability's cooldown is shared with all “Hextech” Item cards equipped to the same Champion)	ITEM	T
1176	Master Yi	Double Strike\nEvery other turn, this card may attack twice during that battle phase. The second attack deals damage equal to half this card’s AD.\nAlpha Strike | 3 MANA | Range: 1\nCooldown: 4 Turns\nTarget 1 enemy card, this card becomes Untargetable until the end of the current Phase; Deal damage equal to this card’s AD - 1 to the target and all adjacent  enemy units. For double the Mana Cost this ability is a Quick effect. When this card attacks: Reduce this ability’s cooldown by 1.\nHighlander | 4 MANA\nCooldown: 3 Turns\nFor the remainder of the turn this card is immune to Slow and gains 1 Reposition range. If this card slays an enemy card during the Battle Phase: It can attack again during that Battle Phase.	CHAMPION	T
1178	The Maiden of the Mist	“The Maiden of the Mist” may only be summoned by the effect of “Yorick” and by no other means. When this card is summoned: “Yorick, The Shepherd of Souls” gains 1 Stack of Grave.\nOmen\nThis card will attack the card infront of it or any card that “Yorick” attacks. If this card and Yorick attack the same target: deal bonus damage to the target equal to half the target’s HP - 2 (min 1).	PET	T
1196	Rakan	Lover’s Leap\nWhen this card is summoned: You may summon 1 “Xayah” from your hand or Fountain. When “Xayah” is summoned: You may summon this card from your hand or Fountain. Quick: Up to 2 times per turn; Dash to a zone adjacent to “Xayah” and Shield this card and Xayah for this card’s AP.\nGrand Entrance | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick:Target 1 enemy Zone and Dash to that target; At the beginning of the next Phase, Knock Up all enemy units on or beside the target Zone for 2 Phases and deal damage equal to this card’s AP to the affected units.\nThe Quickness | 7 MANA\nCooldown: Once while this card is on the field\nQuick:Target up to 6 Zones in range and roll a die; If the result is greater than or equal to the number of targets: Dash to a target of choice and deal damage equal to this card’s AP and Charm all enemy champions in the target Zones for 2 Phases.	CHAMPION	T
2471	Sprout!	Add 1 Plant, Beast or Spirit-type Champion from your Deck to your Hand. If you control at least 1 Plant, Beast or Spirit-type Champion : Summon that Champion instead.	SUMMONERSPELL	T
1219	Trundle	Chomp | 2 MANA\nCooldown: Each Turn\nThis card’s next attack deals bonus damage equal to half this card’s AD -1 and apply On-Hit effects and Heal this card for half the damage dealt. Increase this card’s AD by 2 and reduce the target’s AD by 1 until your next Turn. This card may atack again this turn.\nPillar of Ice | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick:Target 1 enemy Zone in range; At the beginning of the next Phase, Displace any card in the target Zone and Slow any card in a Zone beside the target Zone for 1 Phase.Subjugate | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Target 1 enemy card in range. Each Phase until the end of the turn: Deal damage to the target equal to half that target’s HP - 2 (min 1)  each Phase, Increase this card’s HP by the damage dealt, Reduce the target’s Resistance Stacks by 1 if possible and if you do, increase this card’s Resistance Stacks by 1.	CHAMPION	T
1244	Nashor's Tooth	UNIQUE: When the equipped Champion attacks: Deal bonus On-Hit damage equal to half the equipped Champion's AP - 2 (min 1).	ITEM	T
1304	Exhaust	Quick: Target 1 enemy Champion: Half that card's AD and AP until the End Phase.	SUMMONERSPELL	T
1412	Shyvana	Fury of the Dragonborn\nThis card’s attacks and abilities deal 1 bonus damage to Dragons. This card gains +1 Resistance for each Dragon you have slain.\nFlame Breath | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Zone in range and flip a coin; If the result is Heads: deal damage to that card equal to half this card’s AD + this card’s AP and mark them for the rest of the turn. If this card attacks a marked card, that attack deals On Hit damage equal to half that card’s maximum HP - 3 (min: 1)\nDragon Form:  Target 2 Adjacent Zones in range instead, deal 2 bonus damage, and at the beginning of the next phase, deal damage to those Zones equal to half this card’s AD + half this card’s AP to cards in the target Zones.\nDragon’s Descent | Range: 2\nCooldown: Charge: 1 per Attack | Max 6\nCooldown: Charge: 1 per Attack | Max 6\nQuick: Consume 6 Charges and enter Dragon Form gaining 1 Range and 2 HP for 2 Turns. Target 1 Zone in range; Dash to the target Zone, deal damage equal to this card’s AP + 2 to any card in or beside the target Zone and Knock Up affected cards. This card is immune to all Crowd Control except Stasis applied in response to this ability’s activation.	CHAMPION	T
1448	Divine Artistry	During this turn if an Aspect or Celestial-type Champion slays an ememy Champion: That card gains 2 AD/AP (adaptive) and you may add 1 Summoner Spell from your Deck to your Hand.	SUMMONERSPELL	T
1452	Hextech Protobelt-01	Fire Bolt | Range: 2\nCooldown: 2 Turns\nACTIVE: Quick:The equipped Champion Dashes to the Zone infront of or behind it and deals damage to the first card in range in each column equal to half the equipped Champion's AP - 2 (min 2). (This ability's cooldown is shared with all “Hextech” Item cards equipped to the same Champion)	ITEM	T
1472	Braum	Concussive Blows\nWhen this card attacks a card: Mark that card with Concussive Blows until the end of the Turn. Allied Champion’s attacks add 1 stack of Frost to a target marked with Concussive Blows. If 3 stacks of Frost is added to a Champion marked with Concussive Blows: Disable that card for 1 Phase and deal 1 damage.\nStand Behind Me | 3 MANA | Range: 1\nCooldown: 2 Turns\nQuick:Target 1 allied card in range; Reposition this card in front of the target and for 2 Phases, damage to this card is halved and damage to cards behind this card is negated.\nGlacial Fissure | 5 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Knock Up all cards in range in this card’s Column for 2 Phases and deal damage to all cards affected equal to this card’s AP + 2.	CHAMPION	T
1475	Pantheon	Aegis Protection\nWhen this card attacks or casts an ability: Gain 1 Aegis Protection (max 4). At 4 stacks: The next attack that target’s this card deals no damage and consumes all stacks of Aegis Protection.\nSpear Shot | 3 MANA | Range; 2\nCooldown: Each Turn\nTarget 1 enemy card in range; Deal damage to the target equal to half this card’s AD. If the target is below half HP:  This ability will Critically Strike.\nGrand Skyfall | 5 MANA | Range 4\nCooldown: 3 Turns\nTarget 2 enemy Zone in range; Channel for 1 Phase. At the beginning of the next Phase this card becomes Untargetable and at the end of the Phase; Dash to the target Zone and deal damage equal to this card’s AD to the target Zone and half this card’s AD to the Zones beside the target Zone. Slow all cards damaged by this ability for 1 Phase.	CHAMPION	T
1483	Deadly Sin: Gluttony	If an enemy Champion adds a card(s) to the hand by the effect of a card while you control a Demon-type monster: Send 1 Demon-type Champion you control to the Fountain; Your opponent discards 1 card for each  “Deadly Sin” card in your Fountain. At the end of the turn, If your opponent has no cards in their hand: Summon 1 “Tahn Kench, The River King” from your Hand, Fountain or Deck. You may only activate 1 “Deadly Sin: Gluttony” per Turn.	SUMMONERSPELL	T
1573	Gangplank	Parrrley | 2 MANA | Range: 2\nCooldown: Each Turn\nQuick: Target 1 card or Powder Keg Token in range; deal damage equal to this card’s AD + 1 applies On Hit effects., and may Critically Strike. Plunder: If this ability slays a unit: Flip a coin and if the result is Heads: Draw 1 card.\nPowder Keg | Range: 2\nCooldown: Charge - Each Turn | Max: 3\nQuick: Consume 1 Charge and target 1 zone in range; Place a Powder Keg Token with 1 HP on the target Zone for 1 Turn. If this card destroys a Powder Keg Token deal damage to zones on or beside that token’s Zone equal to the attack or ability that was used to destroy it and detonate adjacent Powder Keg Tokens. Powder Keg Tokens ignore up to 2 Resistance stacks. If Parrrley is used to detonate a Powder Keg Token: The detonation applies Plunder.\nCannon Barrage | 5 MANA | Range: Global\nCooldown: 3 Turns\nCooldown: 3 Turns\nTarget 3 adjacent enemy Zones: For 3 Phases; deal damage equal to half this card’s AD + 1 per Phase to the selected Zones.	CHAMPION	T
1616	Return to The Capital	Add 1 Shurima Champion from your Deck to your Hand. If you control “The Risen Kingdom” you may summon 1 Human-type Shurima Champion from your Deck instead.	SUMMONERSPELL	T
1635	LeBlanc	Mirror Image\nCooldown: Once while this card is on the field.\nWhen this card falls below half HP: Place 1 Clone Token in an adjacent Zone  with HP equal to this card’s current HP until the end of the turn. Reposition either the Clone Token or this card. If this card is targeted by an ability or attack: Flip a coin; If the result is Heads: The attack or ability affects the Clone Token.\nSigil of Malice | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy card in range: Deal damage to the target equal to half this card’s AP and mark that card with Malice. If any of this card’s abilities damage a card marked with Malice: Consume the mark and deal this ability’s damage again. Mimic: You may recast this ability dealing double damage.\nDistortion | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 zone in range; Dash to the target Zone and deal damage equal to this card’s AP to that Zone and Zones beside it. At the beginning of the next Phase: This card may Dash to its position when this ability was cast. Mimic: You may recast this ability dealing bonus damage equal to half this card’s AP.	CHAMPION	T
2851	NOXUS!	Banish all the Champions in your Fountain: Allied Noxus Champions gain 1 AD/AP (adaptive) for each card banished by this effect. At the end of the turn: Destroy all Champions you control.	SUMMONERSPELL	T
1638	Leona	Eclipse | 2 MANA\nCooldown: 2 Turns\nQuick: This card gains +2 Resistance for 2 Phases. At the end of this duration deal damage equal to this card’s AP + 1 to all adjacent enemy units.\nZenith Blade | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick:Target 1 Zone in range; Dash to the first card in the target Zone’s column and Root that card for 1 Phase. This card’s next attack deals bonus damage equal to this card’s AP + 1 and Disables the target for 1 Phase.\nSolar Flare | 5 MANA\nCooldown: Once while this card is on the field\nQuick: Roll a die; Target the Enemy zone whose number is equal to the die roll result and deal damage equal to this card’s AP + 1 and Disable all enemy champions in Zones adjacent to the target zone for 2 Phases.	CHAMPION	T
1648	Titanic Hydra	This card may only be equipped to a Champion with 1 Range.\nCleave\nThis card may only be equipped to a Champion with 1 Range.UNIQUE: When the equipped Champion attacks deal 1 bonus On-Hit damage and deal damage equal to half its max HP - 4 (min 1) to any card behind the target.\nCrescent\nCooldown: 2 Turns\nUNIQUE: ACTIVE: The equipped Champion's next attack doubles the damage from Cleave and the equipped Champion may attack once more this turn	ITEM	T
1665	The Zaun Grey	You may only activate this card if you control “The City of Progress”. Deal 3 damage to all Champions on the Field. Each Champion takes 1 less damage for each equipped Item card. Zaun Champions gain 1 AD/AP (adaptive) for each enemy Champion slain by this effect. You may only activate 1 “The Zaun Grey” per turn.	SUMMONERSPELL	T
1668	Draven	League of DravenWhen this card attacks: deal bonus damage equal to half this card’s AD and Roll a die until the result corresponds to an adjacent Zone; Mark that Zone with Axe until the end of your next turn. If this card Repositions to a Zone marked with Axe or slays a non-Champion unit: consume all Axe marks from the field and gain 2 Adoration Stacks (max 4), if an Axe mark expires without being consumed: Lose 1 Adoration Stack and this card’s next attack does not deal bonus damage. When this card slays a Champion: Consume all stacks of Adoration and draw 1 card for each stack consumed.\nWhirling Death | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Deal damage equal to this card’s AD + 2 to all enemy cards in this card’s column. At the end of the turn deal this ability’s damage again to all enemy card’s in this card’s column.	CHAMPION	T
1748	Kha'Zix	Taste Their Fear | 2 MANA | Range: 1\nCooldown: 2 Turns\nTarget 1 enemy card; Deal damage to that card equal to this card’s AD. If this card and the target have no adjacent allies: this ability deals double damage.\nLeap | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 Zone in range; Dash to that target Zone, dealing damage equal to half this card’s AD to all cards on or besde the target Zone. If this card slays a Champion: reset this ability’s cooldown.\nVoid Assault | 4 MANA\nCooldown: 3 Turns\nQuick: Up to 3 times this turn; This card becomes Invisible for 1 Phase and may Reposition.	CHAMPION	T
1810	Deadly Sin's Temptation	Each time a Demon-type Champion is summoned by the effect of a  Summoner Spell or Champion ability: This card gains 1 Temptation Stack. Demon-type Champions gain 1 AD/AP (adaptive) for each Temptation Stack on this card. When this card is send to the Fountain: Add 1 Demon-type Champion from your deck and 1 “Deadly Sins” card from your Fountain to your Hand.	SUMMONERSPELL	T
1849	Camille	Precision Protocol | 2 MANA\nCooldown: Each Turn\nThis card’s next 2 attacks deal bonus On Hit damage equal to half this card’s AD (min 1) and this card may attack again this turn. If the second attack occurs after all other allied champions have attacked: it deals double bonus damage instead and that damage ignores Resistance stacks. \nHookshot | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Allied Zone in range and Dash to the target Zone; Target 1 Zone in range and Dash to the target dealing damage to cards in and beside the target Zone equal to this card’s AD and Disable affected cards for 2 Phases.\nThe Hextech Ultimatum | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 enemy Champion in range and this card becomes Untargetable for 1 Phase; at the beginning of the next Phase, Dash to the target Champion and Displace any Champions beside the target Champion. For the rest of the turn the target cannot be Repositioned by any means and if this card attacks the target: that attack deals 1 bonus damage.	CHAMPION	T
1864	Bard	Cosmic Binding | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 column in range; Deal damage to the unit in range equal to this card’s AP and Slow the card for 1 Phase. If there is a unit behind the target: deal this ability’s damage to that unit and Disable both cards for 2 Phases instead.\nCaretaker’s Shrine | 3 MANA | Range: 1\nCooldown: 2 Turns\nTarget 1 allied Zone in range and place 1 Shrine Token in the target Zone. For each Phase the Shrine Token is there it gains 1 Charge (max 2). If an allied Champion Repositions to that Zone: Heal that Champion for half this card’s AP  + the number of charges on the Shrine Token and remove the Token.\nTempered Fate | 6 MANA | Range: 3 \nCooldown: 3 Turns\nQuick: Target 4 Zones in range which are all adjacent to each other; At the end of the Phase: All cards in the target Zones enter Stasis for 1 Phase.	CHAMPION	T
1938	Darkin Possession	Apply one of the following effects:\n• Target 1 Human-type Champion and send it to the Fountain; Summon 1 Darkin-type Champion to the target's Zone and equip this card to the summoned card (this card is not treated as an Item.) When the equipped Champion damages a Champion: Heal it for 2 HP.\n• Target 1 Darkin-type Champion and send it to the Fountain; Summon 1 Human-type Champion to the target's Zone and equip this card to the summoned card t(this card is not treated as an Item.) When the equipped Champion damages a Champion: Deal 2 bonus damage to that Champion.\nOnly 1 “Darkin Possession” may be equipped to a card. You may only activate 1 Darkin Possesion per turn.	SUMMONERSPELL	T
1942	Crest of Cinders	Target  1 Champion you control: For the Rest of the turn; When that card attacks an enemy card (or hits it with an ability which applied On-Hit effects): that card is Slowed for 1 Phase and for 2 Phases takes 1 Damage at the end of each Phase.	SUMMONERSPELL	T
1983	Shurelya's Reverie	UNIQUE: +1 Cooldown Reduction\nCooldown: 3 Turns\nUNIQUE: For the duration of the current Phase the equipped Champion and any allied Champion beside it gain 1 Reposition Range.	ITEM	T
2009	Taric	Bastion | 2 MANA | Range: 1\nCooldown: 2 Turns\nQuick: Target 1 allied Champion in range; Shield this card and the target for HP equal to half of the target card’s HP for 1 Phase and mark that card with Bastion (Only 1 card may be marked with Bastion at a time) While this card is within Range 2 of the card marked with Bastion: This card and the card marked with Bastion gain Resistance equal to half this card’s Resistance stacks.\nDazzle | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: At the beginning of the next Phase, Disable all enemy card’s in range, in this card’s Column and deal damage equal to this card’s AP + this card’s Resistance stacks to affected cards. This ability is also cast from any champion marked with Bastion.\nCosmic Radiance | 6 MANA\nCooldown: Once while this card is on the field\nQuick: At the beginning of the next Phase, for 1 Phase, all cards beside this card are immune to all damage. This ability is also cast from any champion marked with Bastion.	CHAMPION	T
2017	Kalista	Martial Poise\nWhen this card is summoned: Target 1 allied champion; that card is marked with Oathsworn. While adjacent to\t the card marked with Oathsworn, this card gains 1 AD. This card may Reposition after each attack.\nRend | 4 MANA\nCooldown: 3 Turns\nWhen this card attacks a card: Apply 1 Rend Stack to that card (On Hit) for 2 Turns. Quick: Deal damage to each card with Rend Stacks equal to this card’s AD + the number of Rend stacks on that card, Slow all cards damaged by this ability and remove all stacks of Rend from the field. If this ability slays a card: Refresh this ability’s cooldown and refund half its mana cost.\nFate’s Call | 6 MANA | Range: 2\nCooldown: 3 Turns\nQuick: The card marked with Oathsworn enters Stasis for 1 Phase; At the beginning of the next Phase target 1 Zone in range. The card marked with Oathsworn Dashes to the target Zone and if the target Zone was an enemy zone: Knock Up all cards on or beside the Target Zone for 1 Phases.	CHAMPION	T
2031	Condemnation	During this turn, Marksman Champions deal 1 bonus damage to Demon-type Champions with all abilities and attacks and if a Demon Champion is removed from the field by any means: Banish that card.	SUMMONERSPELL	T
2032	Ekko	Parallel Convergence | 3 MANA | Range: 2Cooldown: 2 Turns\nTarget 1 Column in range; At the end of the next phase, Slow all cards in the target column for 1 Phase. If this card is in the Frontline Zone of the target column at the end of the next Phase: Disable the cards instead.\nPhase Dive | 2 MANA | Range: 1\nCooldown: Each Turn\nQuick: Target 1 allied Zone in range and Dash to that zone; This card’s next attack gains 1 range, deals bonus damage equal to half this card’s AP and this card Dashes to the attack target.\nChronobreak | 5 MANA\nCooldown: 3 Turns\nAt Summoner Level 6 or whenever this ability is available, Place 1 Holo Token on this card’s Zone. At the beginning of each Turn: Reposition the Holo Token to this card’s Zone. Quick: Dash to the Holo Token and remove it, Deal damage equal to this card’s AP + 1 to all adjacent enemy cards and Heal this card for HP equal to half of this card’s AP + 1.	CHAMPION	T
2036	Lord Dominik's Regards	Last Whisper\nUNIQUE: +2 Penetration	ITEM	T
2053	Rapid Firecannon	Firecannon\nUNIQUE: When the equipped Champion Repositions or attacks: Gain 2 Energy stack (max 3). While at max Energy stacks the equipped Champion gains 1 Range and the next attack consumes all Energey stacks and deals 2 bonus damage.	ITEM	T
2113	The Spider Queen's Offering	You may only activate this card if you have 3 or more cards in your hand; Banish your hand; Summon Undead-type Champions from your Fountain or Deck whose HP add up to a value less than or equal to the HP of all Champions banished by this card's effect.	SUMMONERSPELL	T
2123	Clash of the Ancients	Quick: Discard 1 card and target 1 Demigod-type Freljord Champion you control; Send 1 Demigod-type Freljord Champion from your Deck to the Fountain with a different name and increase the target's HP, AD and AP by that of the card sent to the Fountain until the end of the turn.	SUMMONERSPELL	T
2155	The Black Rose	Activate one of the folowing effects:\n • Add 1 Noxus or Shadow Isles Mage Champion from your Deck to your Hand.\n • Summon 1 Champion from your Fountain and change its type to Undead.\nYou may only activate 1 “The Black Rose” per turn.	SUMMONERSPELL	T
2202	Kennen	Mark of the Storm\nIf this card attacks a card: Mark that card with Mark of the Storm (On Hit) until the end of the Turn. If a card has 3 Marks of the Storm: Disable that card for 1 Phase and deal damage equal to this card’s AP.\nLightening Rush | Range: 2\nCooldown: 2 Turns\nCooldown: 2 Turns\nQuick: Target 1 Zone in range and Dash to the target Zone; Deal damage equal to this card’s AP to adjacent enemy cards and applying 1 Mark of the Storm to affected cards until the end of the turn. This card gains +1 Attack Speed until your next End Phase.\nSlicing Maelstrom | Range: 2\nCooldown: Once while this card is on the field\nFor 2 Phases, on cast and at the beginning of each Phase of this ability’s duration; Deal damage to all units in range equal to this card’s AP + 1 and apply 1 Mark of the Storm to affected cards until the end of the Turn.	CHAMPION	T
2235	Fiddlesticks	Drain | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 card in range and Channel for up to 3 Phases: At the end of each Phase during the Channel duration, deal damage equal to half this card’s AP and Heal this card for half the damage dealt by this ability. \nDark Wind | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy card in range Deal damage to that card equal to half this card’s AP - 1 and Silence that card for 1 Phase. At the beginning of the next Phase apply this ability’s effects to all enemy units adjacent to the target.\nCrowstorm | 6 MANA | Range: 2\nCooldown: Once while this card on the field\nQuick: Target 1 zone in range and Channel for 1 Phase: Dash to the target zone and for up to 2 Phases: At the beginning of each Phase, deal damage equal to half this card’s AP to all card’s in range.	CHAMPION	T
2268	Soraka	Astral Infusion\nQuick: Up to twice per turn, target 1 Champion you control, except “Soraka”; Reduce this card’s HP by 1 and Heal by this card’s AP. Cannot be cast while this card is at 1 HP.\nEquinox | 4 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target an 2 Adjacent enemy zones; Silence all cards in the target Zones dealing damage equal to this card’s AP to affected cards and Heal this card for half the damage dealt. \nWish | 6 MANA\nCooldown: Once while this card is on the field\nQuick: Heal all allied champions for HP equal to this card’s AP + half your Summoner Level - 3.	CHAMPION	T
2295	Mikael's Crucible	Cooldown: 3 Turns\nUNIQUE: Quick:  Target 1 allied Champion: Remove all Crowd Control effects from the target and for the rest of the Phase the target is immune to Slows.	ITEM	T
2327	Anti-Void Weaponry	Target 1 Champion you control; Equip this card to the target (This card is not treated as an Item). The equipped Champion takes 1 less damage from the attacks and abilities of Void Champions. When the equipped Champion damages a Voidborn-type Champion: Deal 1 bonus damage. If the equiped card slays a Voidborn-type Champion: It gains 2AD/AP(adaptive) until the end of the turn and may attack once more this turn if the target is a Voidborn-type Champion. Only 1 “Anti-Void Weaponry” may be equipped to a card.	SUMMONERSPELL	T
2331	Return of the Lunari	For the rest of the turn, whenever an Aspect-type Champion is sent to the Fountain: Increase the AD/AP of all Aspect-type Champions by 1. If any card(s) gains 3 AD/AP by this effect: Draw 1 card. You can only activate 1 “Return of the Lunari” per turn.	SUMMONERSPELL	T
2402	Infinity Edge	UNIQUE: Double the equipped Champion's Critical Strike Chance Stacks (Note: max Critical Strike Chance Stacks is 3).\nUNIQUE: When the equipped Champion Critically Strikes: That attack/ability ignores the target's Resistance Stacks.	ITEM	T
2437	Cryopreservation	Quick: Target 1 Champion you control and Banish that target; At the end of your next turn: Summon the target and if the target was a Yordle-type Champion: it gains 1 HP and 1 AD/AP (adaptive).	SUMMONERSPELL	T
2439	Mercurial Scimitar	Quicksilver\nCooldown: 3 Turns\nUNIQUE: Quick: Remove all Crowd Control from the equipped Champion and iu gains 1 Reposition Range for the rest of the Phase.	ITEM	T
2526	Zeke's Convergence	UNIQUE: Target 1 allied Champion; Mark the target as the Conduit. When the equipped Champion activates its Ultimate Ability: Slow all adjacent enemy and mark them with Frost for 2 Phases. Champions and activate Frostbite Covenant\nFrostbite Covenant\nUNIQUE: When the Conduit attacks a Champion marked with Frost: their attacks deal bonus damage equal to half their AD.	ITEM	T
2545	Swain	Ravenous Flock | Range: 2\nWhen an enemy Champion is slain: This card gains 1 Soul Fragment (max 5) and heal this card for half this card’s HP - 2 (min 1). When an enemy card in range is Disabled, target that card; Deal 1 damage and gain 1 Soul Fragment and if the target was in a Backline Row: Reposition it to the Frontline Row of its column.\nDeath’s Hand | 3 MANA | Range: 2\nCooldown: Each Turn\nDeal damage to the first unit in each column in range equal to half this card’s AP. If this ability slays a unit: Deal this ability’s damage to any unit behind that unit in range and restore 1 Mana for each card slain.\nDemonic Ascension | Range: 2\nCooldown: 3 Turns\nQuick: Consume all Soul Fragments: Until the end of the turn, gain 2 HP and at the beginning of each Phase, deal damage equal to half this card’s AP - 1( min 1) to each card adjacent to this card and Heal this card for the damage dealt. At the end of the turn, if this card is still on the field: Deal damage to all enemy cards in range equal to 2 x the number of Soul Fragments consumed by this ability. 	CHAMPION	T
2556	Zhonya's Hourglass	Stasis\nCooldown: Once while this card is on the field\nUNIQUE: Quick: The target Champion enters Stasis for 1 Phase.	ITEM	T
2611	Veigar	Phenomenal Evil Power\nWhen this card attacks a champion, or hits a champoion with an ability: this card gains 1 AP. If this card slays a Champion: it gains 2 AP instead. This card’s attacks deal damage equal to half this card’s AP instead.\nEvent Horizon | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 zone in range;  at the beginning of the next Phase, for 2 Phases, Disable any card beside and behind the target Zone.\nPrimordial Burst | 5 MANA |  Range: 2\nCooldown: 3 Turns\nTarget an enemy champion in range: deal damage  to the target equal to this card’s AP. Cannot be used before Summoner Level 6 	CHAMPION	T
2640	Trumphant Rebellion	Target 1 Ionia Champion you control and discard 1 Summoner Spell, except “Triumphant Rebellion”; The target gains AD/AP (adaptive) equal to the number of Noxus Champions your opponent controls + 1. During this turn, whenever a Champion you control slays an enemy Champion: Target 1 Summoner Spell in your Fountain and shuffle it into your deck and if the Champion was a Noxus Champion: Draw 1 card.	SUMMONERSPELL	T
2643	Item Shop	Discard 1 card; Add 1 Item card from your Deck to your Hand.	SUMMONERSPELL	T
2694	Ziggs	Bouncing Bomb | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 Column in range: Deal damage to the Frontline Zone of the target column equal to half this card’s AP. If no enemy unit was in the Frontline Zone: at the end of the Phase, Deal this ability’s damage to the Backline Zone of the target column.\nSatchel Charge | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick:Target 1 Zone in Range: Place 1 Satchel Token on the target Zone until the end of the Phase. When the token is removed: Deal damage to all cards on the Satchel Token equal to half this card’s AP and if this damage does not slay a card: Displace it. If an enemy Tower with 2 or less HP is behind the Satchel Token when it is removed: Destroy that Tower.\nMega Inferno Bomb | 6 MANA | Range: 3\nCooldown: 3 Turns\nQuick: Target 3 Adjacent  Zones in range; At the end of the turn, deal damage to all cards in the target Zones equal to this card’s AP + 1.	CHAMPION	T
2697	Maokai	Sap Magic\nStatic Cooldown: 4 Turns\nThis card’s next attack heals this card for half of this card’s max HP - 3. If this card activates an ability or is hit by an opponent’s ability: Reduce this ability’s cooldown by 1.\nTwisted Advance | 3 MANA | 2 Range\nTwisted Advance | 3 MANA | 2 Range\nCooldown: 2 Turns\nQuick: Target 1 card in range and this card becomes Untargetable; Dash to and Root the target for 1 Phase and deal damage equal to this card’s AP + 1.\nNatures Grasp | 5 MANA\nCooldown: 3 Turns\nQuick: Root the first enemy card in every Column adjacent to this card and deal damage equal to this card’s AP + 1 to each card Rooted by this ability. 	CHAMPION	T
2706	Arcane Maelstrom	Quick: At the end of this turn: Deal damage to each enemy Champion equal to half the number of Summoner Spell cards in your Graveyard. If this card slays atleast 1 Champion: Summon 1 Ionia Champion from your deck with HP equal to or less than the number of Summoner Spells in your Graveyard. You may only activate 1 “Arcane Maelstrom” per turn.	SUMMONERSPELL	T
2714	Hextech Augmentation	Target 1 Champion with an equipped Item: Equip this card to thhe target (This card is treated as an Item card). The equipped card gains the Construct type and also gains 2 AD/AP (adaptive) for each equipped Item. If this card is sent to the Fountain: Draw 1 card. Only 1 “Hextech Augmentation” may be used per turn.	SUMMONERSPELL	T
2731	Blade of the Ruined King	UNIQUE:  When the equipped Champion attacks: Deal bonus On-Hit damage equal to  half the target's HP - 3 (min 1). The On-Hit damage against Pets, Tokens and Neutral Monsters is always 1.\nUNIQUE:  When the equipped Champion attacks: Deal bonus On-Hit damage equal to  half the target's HP - 3 (min 1). The On-Hit damage against Pets, Tokens and Neutral Monsters is always 1.\nCooldown: 3 Turns\nACTIVE: Quick: Target 1 enemy Champion in range; Deal 2 damage equal to the target and Slow the target for 1 Phase.	ITEM	T
2780	Chemtech Augmentation	Quick:Target 1 Zaun or Piltover Champion with an equipped Item: Equip this card to thhe target (This card is treated as an Item card). The equipped card gains the Construct type and also gains 1 HP and 1 AD/AP (adaptive) for each equipped Item. If the equiped card is slain: Banish it and Draw 1 card. Only 1 “Chemtech Augmentation” may be used per turn.	SUMMONERSPELL	T
2798	Banshee's Veil	Cooldown: 3 Turns\nNegate the first ability that affects the equipped Champion this turn.	ITEM	T
2813	Lux	Light Binding | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Column in range and flip a coin; if the result is Heads: Deal damage to all Champions in the target column equal to half this card’s AP and Root the damaged Champions for 2 Phases.\nLucent Singularity | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 2 adjacent enemy zones in range; For up to 2 Phases Slow all champion in the target Zones. At the end of the duration or upon a second  activation of this ability: Deal damage equal to this card’s AP to all units in the target Zones.\nFinal Spark | 6 MANA\nCooldown: 3 Turns\nAt the end of this Phase, deal damage to every enemy champion in this card’s Column equal to 2 x this card’s AP. Reduce this ability’s cooldown by 1 for each Champion slain by this ability.	CHAMPION	T
2824	Targon Prime, The Celestial City	Once per turn: You may send 1 card you control to the Fountain, and if you do: Summon 1 Aspect-type Champion from the Deck to the field. Whenever an Aspect or Celestial-type Champion is sent to the Fountain: Summon a card with the same name from your Hand, and if you can't: Add a card with the same name from your Deck or Fountain to the Hand and discard 1 card.	SUMMONERSPELL	T
2911	Lissandra	Ice Shard | 2 MANA | Range: 1\nCooldown: Each Turn\nTarget 1 column in range; Deal damage equal to this card’s AP - 1 to the first unit in range in the target column and all adjacent cards in the row behind that unit, Slow affected units for 1 Phase and add 1 stack of Frost to all affected cards.\nGlacial Path | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick:Target 1 Zone in range; deal damage equal to half this card’s AP to all enemy cards on or infront of the target zone and mark those affected with Frost.\nDuring this turn, you may recast this ability (paying the full mana cost) and if you do: Deal damage equal to half this card’s AP to all enemy cards adjacent to this card and marked with Frost.\nFrozen Tomb | 5 MANA | Range: 1\nCooldown: 3 Turns\nCooldown: 3 Turns\nQuick: Target this card or an enemy Champion in range; If the target is an Enemy Champion: Disable the target for 2 Phases. At the beginning of the next Phase, deal damage to the target and cards beside it equal to this cards AP and Slow all affected cards for 1 Phase. If the target is this card: It enters Stasis and is Healed for this card’s AP and the damage is dealt to adjacent enemy cards instead. 	CHAMPION	T
2927	Jax	Leap Strike | 2 MANA | Range: 2Cooldown: 2 Turns\nQuick: Target 1 card in range; Dash to that card and if it is an enemy card: Deal damage equal to half this card’s AD + half this card’s AP.\nCounter Strike | 3 MANA\nCooldown: 2 Turns\nQuick: For up to two Phases, this card takes no damage from attacks and reduce ability damage by 1. At the end of this effect: Disable all adjacent enemy cards and deal damage equal to half this card’s AD + the number of times this card was attacked this turn.\nGrandmaster’s Might | 5 MANA\nCooldown: 3 Turns\nEvery third attack by this card deals bonus damage equal to half this card’s AP + 1. Quick: This card giains +2 Resistance for the rest of this turn.	CHAMPION	T
2965	Phantom Dancer	Lament\nUNIQUE: When the equipped Champion damages a Champion: Half all damage from that Champion to the equipped Champion	ITEM	T
2973	Tales of the Bard	Add 1 Celestial-type Champion from your Deck to your Hand and if there are 3 or more Celestial-type Champions in your Fountain: Draw 1 card.	SUMMONERSPELL	T
2980	Fury of the Elemental	Target 1 Spirit-type Champion you control: The target gains 2 AD/AP. If the target does not slay a Champion this turn: Destroy it.	SUMMONERSPELL	T
3027	Garen	Perseverance\nAt the end of each turn, Heal this card for 2 HP.\nJudgement | Range: 1\nCooldown: 2 Turns\nFor up to 2 Phases, deal damage to each enemy card in range equal to half this card’s AD each Phase and reduce damaged champion’s Resistance by 1. If this card makes an action (except Reposition) this ability is cancelled.\nDemacian Justice | Range: 1\nCooldown: 3 Turns\nTarget 1 Champion in range; deal damage equal to half that card’s max HP  - 1 ignoring Resistance Stacks.	CHAMPION	T
3052	Yasuo	Way of the Wanderer\nDouble this card’s Critical Strike Chance Stacks. If this card attacks: it may Reposition one additional time per turn.\nWind Wall\nCooldown: Once while this card is on the field\nQuick: Negate all the damage from your opponents Champions to this card’s column and 1 adjacent column for 2 Phases.\nLast Breath | Range: 3\nCooldown: 3 Turns\nIf an enemy Champion(s) in range is Knocked Up: Dash to that card(s); Deal damage equal to 1.5 x this card’s AD to all Knocked Up enemy Champions in range. For the rest of this turn this card gains +2 Penetration stacks.	CHAMPION	T
3071	Akali	Twilight Shroud\nCooldown: 3 turns\nQuick: For 2 Phases, while within zones adjacent to this card's original position, this card is Invisible and cannot be targeted even if revealed. When this card leaves or re-enters this area this duration is extended by 1 Phase (max 4 Phases).\nShurken Flip | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 column in range; Reposition this card to the Backline Zone of it's Column(if possible) and deal damage to the first unit in range in the target column equal to this card's AD and mark that unit with Assassin's Mark for 2 Phases. This ability may be recast to Dash to the unit marked with Assassin's Mark, dealing damage equal to this card's AD + 2.\nPerfect Execution | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 Zone in range and Dash to the target; deal damage to all enemy units on or in front of the target Zone equal to this card's AD and Disable the damaged units for 1 Phase. At the beginning of the next Phase you may activate this ability again, Target 1 Zone in range and Dash to the target; deal damage to all enemy units on or in front of the target Zone equal to this card's AP + half the damaged unit's missing HP.	CHAMPION	T
3107	Runic Cataclysm	Destroy all Field of Justice Summoner Spell cards on the field. You cannot activate any other Summoner Spells for the rest of the turn.	SUMMONERSPELL	T
3131	Kog'Maw	Icathian Surprise\nWhen this card is slain: Before sending this card to the Fountain, you may Reposition this card and and the end of the Phase: Deal 2 damage to all adjacent enemy cards.\nBio-Arcane Barrage | 2 MANA\nCooldown: 2 Turns\nFor the rest of the turn, this card gains 1 Range and its attacks deal bonus On-Hit damage equal to half the target’s max HP - 3 (min 1).\nLiving Artilery | 2 MANA | Range: 2\nQuick: Target a Zone in range; Deal damage to that Zone equal to half this card’s AD + half this card’s AP. If a champion in the target Zone has less than half its max HP: This ability deals double damage. Each consecutive cast of this ability during the same turn doubles the Mana cost.	CHAMPION	T
3139	Darius	Hemorrhage\nWhen this card attacks a card: That card gains 1 Hemorrhage (max 5) for 2 Turns (refreshing with each stack). Cards with Hemorrage take 1 damage at the beginning of each turn. Upon applying 5 stacks to an enemy Champion or slay a Champion with Noxian Guillotine: This card gains 2 AD and damaging a champion applies 5 Hemorrhage stacks to that Champion.\nDecimate | 3 MANA | Range: 2\nCooldown: 2 Turns\nDeal damage to all enemy units in range equal to this card’s AD + 1. Adjacent units take half the damage from this card. Appy 1 Hemorrhage Stack to each enemy Champion damaged by this ability at max range and Heal this card by 2 HP for each of those Champions.\nNoxian Guillotine | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Target 1 enemy champion in range: Deal damage to that card equal to half this card’s AD + the number Hemorrhage stacks on that card ignoring Resistance Stacks. If this ability slays a card: Refund this ability’s mana cost and cooldown.	CHAMPION	T
3147	Where the Magic is Hidden	Discard 1 card and reveal 1 Summoner Spell from your deck or hand; Send the revealed card to the Fountain and for the rest of this turn, neither player may activate any card with the same name as that card. You may banish this card and the revealed card instead, and if you do: also send all cards with that name, in both player's decks, to the Fountain.	SUMMONERSPELL	T
3149	Deadly Sin: Pride	If your opponent Summons a Champion(s) by the effect of a Summoner Spell:Target 1 Demon-type Champion you control; Deal damage to all enemy Champions summoned this turn equal to the target's AD or AP + the number of “Deadly Sin” cards in your Fountain. If this effect slays a Champion: Summon 1 “Swain, The Noxian Grand General” from your Hand, Fountain or Deck. You may only activate 1 “Deadly Sin: Pride” per turn.	SUMMONERSPELL	T
4812	March of the Voidborn	At the end of the turn this card is activated; Summon Banished Voidborn-type Champions up to the number of enemy Champions Banished during this turn.	SUMMONERSPELL	T
3205	Amumu	Bandage Toss | 2 MANA | Range: 2\nCooldown: 2 Turns\nCooldown: 2 Turns\nQuick: Target 1 Column in range: Dash to the first champion in range in the target column, deal damage equal to half this card’s AP to that card, Disabling the affected card for 1 Phase.\nTantrum | 3 MANA | Range: 1\nCooldown: 2 Turns\nThis card gains +1 Resistance. Quick: Deal damage to all adjacent enemy cards equal to half this card’s AP + 1.\nCurse of the Sad Mummy | 6 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Disable all enemy Champions in range for 2 Phases and deal damage equal to this card’s AP to all affected cards.	CHAMPION	T
3212	Karma	Inner Flame | 3 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy Zone and flip a coin; If the result is Heads, deal damage equal to this card’s AP to any card on that Zone.\nMANTRA:Target 2 adjacent Zones instead, Increase this ability’s damage by 1 and at the end of the phase deal this ability’s damage to the target Zones.\nInspire | 3 MANA | Range: 1\nCooldown: Each Turn\nQuick: Target 1 allied champion in range; Shield the target by this champion’s AP for 1 Phase and that target gains 1 Reposition Range for the Shield duration.\nMANTRA: Shield all allied Champions in range instead.\nMantra\nCooldown: 2 Turns\nQuick: This card’s next ability applies its MANTRA effect. Mantra may be used before Summoner Level 6.	CHAMPION	T
3221	Azir	Shurima’s Legacy\nCooldown: Once while this card is on the field\nIf this card is in a Column with a destroyed Turret: You may place a Sun Disc Token with 4 HP and AD equal to half this card’s AP in this card’s Column. Sun Disc Tokens are treated as Towers.\nArise | 1 MANA | Range: 2\nCooldown: Charge: Each Turn | Max 2\nConsume 1 Charge; Place 1 Sand Soldier Token with AD equal to half this card’s AP and 1 Range on an adjacent allied Zone  for 1 Turn. If this card targets a card in range of a Sand Soldier Token(s) for an attack: Sand Soldier Token(s) will attack that target instead. Sand Soldier Tokens are Untargetable. Quick: Pay 2 MANA and target 1 Zone in range; All Sand Soldier Tokens Dash to that Zone dealing damage equal to half this card’s AP.\nEmperor’s Divide | 6 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Deal damage equal to this card’s AP to the first card in range in each column, and if an affected card is not slain by this ability: Displace that card.	CHAMPION	T
3235	Pyke	Gift of the Drowned Ones\nIf this card would gain HP from an any source it gains AD instead. Each Phase, if this card is in Stealth or out of range to all enemy units: Heal this card for half this card’s AD.\nBone Skewer | 3 MANA | Range: 1\nCooldown: 2 Turns\nTarget 1 enemy Zone in range; deal damage to the target Zone equal to this card’s AD and Slow any card damaged by this effect. You may Channel this ability for 1 Phase instead; and if you do: This ability gains 1 Range, Target 1 enemy card and Flip a coin; If the result is Heads: At the beginning of the next Phase, deal damage to that card equal to this card’s AD - 1 and Reposition that card to the Frontline Zone of its Column (if possible).\nDeath From Below | 6 MANA | Range: 2\nCooldown: 4 Turns\nQuick: Target 1 enemy Zone in range; Dash to the target zone and deal damage equal to half this card’s AD to the target zone and any enemy zone diagonal to the target. If an affected Champion’s HP is less than or equal to half this card’s AD: Slay that Champion, draw 1 card, and refresh this card’s cooldown.	CHAMPION	T
3270	Guardian Angel	Cooldown: Once while this card is on the field\nUNIQUE: If the equipped Champion would be slain: it enters Stasis instead for 1 Phase and restores half its original HP.	ITEM	T
3297	Statikk Shiv	Shiv Lightening\nUNIQUE: When the equipped Champion Repositions or attacks: Gain 1 Energy stack (max 3). When the equipped Champion attacks Champion while at max Energy stacks: Consume all Energy stacks and deal 1 damage to all cards adjacent to the target. If the attack Critically Strikes: double this damage.	ITEM	T
3302	Baron Nashor	If “Rift Herald” is still in the Neutral Objective Zone when this card is spawned: Destroy it. “Baron Nashor” is immune to all forms of crowd control and if it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; “Baron Nashor” attacks the last card that damaged it. When “Baron Nashor” attacks a card, deal 1 damage to all cards beside that Champion.\nHand of Baron\nFor 3 turns; Increase allied Champions AD and AP by 2 and allied cards deal 1 bonus damage to Structures.	NEUTRALMONSTER	T
3358	Ignite	Quick: Target 1 enemy Champion; Mark that champion with Ignite for 4 Phases. At the beginning of each Phase, Deal 1 damage to Champions marked with Ignite. Apply Grievous Wounds to Champions marked with Ignite.	SUMMONERSPELL	T
3425	Zac	Cell Division\nWhen this card damages a Champion: Place one Blob Token in an adjacent allied Zone. If this card moves to the a Zone with a Blob Token: Consume the Token and Heal this card for 3 HP. Once per Game; If “Zac, The Secret Weapon” is slain: Place 4 Goo Tokens in adjacent Zones with 2 HP each. At the end of the turn if any Goo Tokens  remain: Summon “Zac, The Secret Weapon” from your Fountain with HP equal to their combined remaining HP.\nElastic Slingshot | 2 HP | Range: 2\nCooldown: 2 Turns\nTarget 1 Zone in Range; Dash to that Zone, deal damage equal to this card’s AP and Knock Up any cards in the affected Zone. You may Channel this ability for 1 Phase and if you do: This ability gains 1 range and affects zones beside the target. Mark affected cards with Splatter till the end of the turn. \nLet’s Bounce!\nCooldown: 3 Turns\nQuick: Channel for up to 2 Phases, this card is immune to Crowd Control during the Channel duration. Target all Adjacent cards or cards marked with Splatter (max 3); Deal damage to the target(s) equal to this card’s AP, Reposition those cards to any adjacent Zones and this card Dashes to any zone facing any target.	CHAMPION	T
3448	Starvation	If a Banished Champion would be summoned: Negate that summon and destroy that card(s). Deal damage to all Voidborn-type Champions on the field equal to that card's HP (if multiple cards were summoned: Choose 1) and if a Champion is slain by this effect: Your opponenet cannot summon Banished Champions until the end of their next turn. You may only activate 1 “Starvation” per turn.	SUMMONERSPELL	T
3538	Morellonomicon	Touch Of Death\nUNIQUE: +1 Penetration\nCursed Strike\nUNIQUE: When this card damages a Champion with an ability: Inflict Grievous Wounds to that Champion for 2 Phases.	ITEM	T
3966	The Forgotten Juggernaut	Banish 1 Champion from your deck; After 2 turns Summon that target if possible, and if not: send it to the Fountain. You may only activate 1 “The Forgotten Juggernaut” per turn.	SUMMONERSPELL	T
3999	Cloud Drake	This card is immune to all forms of crowd control and If it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; this card attacks the last card that damaged it two times. \nDragon Slayer\nGain 1 Dragon Slayer Stack and for the rest of the duel, Allied Champions gain 1 Reposition range. (This effect can stack with other “Cloud Drake” kills).	NEUTRALMONSTER	T
4771	Honey Fruit	Quick: Roll a die 3 times: For each roll; Alternatively target Zones on each side of the field with the corresponding result annd Heal any cards in those Zones for 2 HP.	SUMMONERSPELL	T
3544	Gnar	Rage Gene\nThis card has 2 forms:\nMini Gnar: +1 Attack Speed. Whenever this card deals or takes damage it gains 1 Rage Stack (max 4). At max Rage, if this card attacks or at the end of that Phase: it becomes Mega Gnar until your next end Phase.\nMega Gnar: Tank | Vanguard, + 4 HP and +1 AD. \nHyper / Wallop | Range: 1\nMini Gnar: When this card attacks a card: Apply 1 Hyper Stack to that card. When a card gains 3 Hyper Stacks: Consume the Hyper Stacks and deal bonus damage equal to half the target’s max HP - 2 (min 1).\nMega Gnar: Deal damage equal to this card’s AD + 1 to any enemy card in this card’s column in range and Disable any affected card for 1 Phase.\nGNAR! | Range: 2\nCooldown: 3 Turns\nThis ability can only be activated while this card is in the Mega Gnar form.\nQuick: Target all enemy units in range in this card’s column and choose either left or right; Reposition targets to the adjacent zone in the chosen direction and deal damage equal to this card’s AD - 1. If an affected unit cannot be Repositioned: Deal this ability’s damage to that target again and Disable that card for 2 Phases.	CHAMPION	T
3577	Demacian Legion	If you control 2 or more Champions and all Champions you control are Demacia Champions: Discard your Hand (min. 2 Cards); Neither player may activate Summoner Spells until the end of this turn. Banish this card instead of sending it to the Fountain.	SUMMONERSPELL	T
3582	The Bloodthirster	UNIQUE: If the equipped Champion is at full health and would be healed by Life Steal: That healing becomes a Shield of up to 2 HP for up to 2 Phases.	ITEM	T
3592	Youmuu's Ghostblade	UNIQUE: The equipped Champion's attacks and abilities gain + 1 Penetration\nUNIQUE: Each turn, before the equipped Champion has attacked or cast an ability; it gains 1 Reposition Range.\nACTIVE\nUNIQUE: The equipped Champion gains 1 Reposition Range for 2 Phases.	ITEM	T
3593	Sorcerer's Shoes	UNIQUE: This equipped Champion's abilities gain +1 Penetration.\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
3640	Boots of Mobility	Each turn, before the equipped Champion has attacked or cast an ability; it gains 1 Reposition Range.\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
3669	Juggernaut's Memorial	Banish 1 Champion from your Fountain; Add 1 Noxus Champion from your Fountain to your Hand. You may only activate 1 “Juggernaut's Memorial” per turn.	SUMMONERSPELL	T
3684	Elise	Spider Queen\nThis card has 2 forms:\nHuman Form - Mage | Catcher class. When this card damages an enemy Champion: Gain 1 Spiderling Stack (max 3).\nSpider Form -  Fighter | Diver class. This card’s attacks deal bonus damage equal to the number of Spiderling Stacks and Heal this card for half this card’s AP. \nCocoon / Rappel | 3 MANA | Range: 2\nCooldown: 2 Turns\nHuman Form: Target 1 enemy card in range and flip a coin; If the result is Heads: Deal damage equal to this card’s AP and Disable the target for 1 Phase.\nSpider Form: Quick: This card becomes Untargetable for 1 Phase and You may target 1 enemy card in range; and if you do: At the beginning of the next Phase, Dash to the target and deal damage equal to this card’s AD + the number of Spiderling Stacks.\nSpider Form / Human FormQuick: You may use this ability before Summoner Level 6.\nHuman Form: Switch to Spider Form; + 1 Reposition. If this card would take damage: Flip a coin; If the result is Heads: Remove 1 Spiderling Stack instead.\nSpider Form: Switch to Human Form: - 1 Reposition Range.\n	CHAMPION	T
3712	Hunter's Instinct	Quick: During this turn when a Champion is summoned from the Deck, that Champion's first attack this turn deals double damage. You can only activate 1 “Hunter's Instinct” per turn.	SUMMONERSPELL	T
3736	Kassadin	Void Sphere | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Champion in range; Deal damage to the target equal to half this card’s AP and Shield this card for this card’s AP for up to 2 Phases. This ability cancels Channels.\nNether Blade | 2 MANA | Range: 2\nCooldown: Each Turns\nThis card’s next attack gains 1 range and deals bonus damage equal to half this card’s AP + 1. If this attack damages a Champion: Refund 2 MANA.\nRiftwalk | 1 MANA | Range: 2\nQuick: Target a Zone in range; Dash to the target Zone  and deal damage equal to half this card’s AP to enemy cards on and beside the target Zone. Each consecutive cast of this ability during the same turn doubles the Mana cost and increases the damage by 2.	CHAMPION	T
3739	Spirit Visage	UNIQUE: Double the effect of all healing on the equipped Champion	ITEM	T
3786	Cleanse	Quick: Target 1 alied Champion; Remove all Crowd Control effects and any marks applied by Summoner Spells from the target.	SUMMONERSPELL	T
3808	Teemo	Guerilla Warfare\nAt the beginning of each turn: This card becomes Invisible. If this card takes any action it is revealed. This card may Reposition to or from a Flank Zone without being Revealed. When this card is revealed it gains +1 Attack Speed until the end of the turn.\nBlinding Dart | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy card in range; Deal damage equal to this card’s AP, and Disarm the target for the rest of this turn.\nNoxious Trap | 2 MANA\nCooldown: Charge: Each Turn | Max 3\nConsume 1 Charge and roll a die; Place a Shroom Token in the enemy Zone corresponding to the die roll result for 2 Turns. If there is a Shroom Token in that zone already your opponent chooses an adjacent zone. If an enemy unit is on the same zone as a Shroom Token:  Deal damage to any card on or beside that zone equal to this card’s AP + 1, Slow that unit and remove the Shroom Token.	CHAMPION	T
3820	Kayn	The Darkin Scythe\nOnce, when this card slays an enemy champion: Changes form based on the class of the champion slain:\nMarksman/Mage - Shadow Assassin + 2 AD, Slayer | Assassin, Human\nTank, Fighter or Slayer - Rhaast + 2 HP,  Fighter | Diver, Darkin\nBlade’s Reach | 4 MANA | Range: 1\nCooldown: 2 Turns\nDeal damage equal to this card’s AD to all champions in range in this card’s column.\nShadow Assassin: + 1 Range, Quick.\nRhaast: Knock Up damaged cards and Heal this card for half the damage dealt.\nUmbral Trespass | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Target a champion this card has damaged this turn. This card becomes untargetable for up to 2 Phases (you can interrupt it after 1 Phase). At the end of this duration deal damage to the target equal to this champion’s AD and Reposition this casd to the Frontline Zone of the target’s Zone.\nShadow Assassin: Range: 2\nRhaast: Deal damage equal to half the target’s current HP (min 1) instead and Heal this card for half the damage dealt.	CHAMPION	T
3826	The Harrowing	All Champions on the field and in the Fountain are Undead-type. Once per turn, when you summon an Undead-type Champion: You may discard 1 card, and if you do: Summon 1 Undead-type Champion from your Fountain, but that card is destroyed at the end of the turn.	SUMMONERSPELL	T
3886	Survival of the Fittest	Banish 2 Zaun Champions from your Fountain: Send all Item cards on the field to the Fountain, and for the rest of the turn, if a Champion is slain: Banish that card. At the end of the turn: Target the card you control with the highest AD or AP, that card gains 1 AD/AP (adaptive) for each enemy card Banished this turn.	SUMMONERSPELL	T
4003	The Sun Disc Medallion	Target 1 Shurima Champion; Equip this card to that target (This card is not treated as an Item card). The equipped card gains +1 Resistance. If the equipped card it sent to the Fountain in order to summon a Demigod-type Shurima Champion: Equip this card to that summoned Champion, reduce damage by half the number of Human-type Shurima Champions in your Fountain instead, and if the equpped Champion slays an enemy Champion: Discard 1 card from your opponent's Hand. Only 1 “The Sun Disc Medallion” may be equipped to a card.	SUMMONERSPELL	T
4042	Blast Cone	Quick: Target 1 Zone on the Field; Displace any card in that Zone.	SUMMONERSPELL	T
4048	Hunger of the Void	During this turn; whenever a Champion is Banished: all Voidborn-type Champions gain 1 AD/AP (adaptive).	SUMMONERSPELL	T
4058	Dr. Mundo	Infected Cleaver | 2 HP | Range: 2\nCooldown: Each Turn\nTarget 1 Column in range; Deal damage to the first card in range in the target column equal to half the affected card’s HP - 1(min 2) and Slow the target for 1 Phase. If this ability affects a unit: Heal this card for 1 HP. If this ability slays a unit: Heal this card for 2 HP instead.\nMasochism\nCooldown: 2 Turns\nQuick: This card gains 1 AD for 2 Phases and its next attack deals bonus damage equal to half this card’s max HP - 3 (min 1). If this card is below half its max HP: double the AD gained by this ability. If this ability is used in the Battle Phase: This card can attack again this turn.\nSadism | Half this card’s current HP\nCooldown: 3 Turns\nQuick: Heal this card by half this card’s Max HP - 1 at the beginning of each Phase for the rest of the turn. For this duration this card’s Reposition Range is 2. 	CHAMPION	T
4099	Trinity Force	Spellblade\nCooldown: Each Turn\nWhen the equipped Champion activates an effect: The equipped Champion's next attack deals bonus On-Hit damage equal to half the equipped Champion's AD. Abilities which apply On Hit effects apply Spellblade's damage as well.\nRage\nWhen the equipped Champion attacks or Slays a unit: it gains 1 Reposition range until the end of the turn.	ITEM	T
4151	Wukong	Stone Skin\nWukong 1 gains +1 Resistance for each adjacent enemy champion.\nDecoy | 4 MANA\nCooldown: 2 Turns\nQuick: This card becomes Invisible for 1 Phase and may Reposition, leaving behind a Decoy  Token with 2 HP. If this card was the target of an attack or ability, the target is switched to the Decoy Token. At the beginning of the Next Phase, or whenever the Decoy Token is slain: deal damage to all enemy cards adjacent to the Decoy Token equal to half this card’s AD.\nCyclone | 6 MANA\nCooldown: Once while this card is on the field\nQuick: Roll a die; Target the Enemy zone whose number is equal to the die roll result, Dash to the target Zone and deal damage equal to this card’s AD and Knock Up all enemy champions adjacent to that zone for 2 Phases.	CHAMPION	T
4154	Zed	Razor Shuriken | Range: 2\nCooldown: 2 Turns\nDeal damage equal to this card’s AD to the first card in this card’s Column in range, and half that damage to any card behind that card, in range. This ability is also cast from all Shadow Tokens on the field.\nLiving Shadow\nCooldown: 2 Turns\nQuick: If there is no  Shadow Token on the field: Target 1 empty allied Zone; place a Shadow Token in that Zone for 1 Turn.\nQuick: This card may switch places with any Shadow Token on the field.\nDeath Mark | Range: 2\nCooldown: 3 Turns.\nQuick: Target 1 enemy champion in range, place a Shadow Token in an adjacent zone and this card becomes Untargetable for 1 Phase; At the end of the turn the target takes damage equal to this card’s AD + the Target’s AD.	CHAMPION	T
4210	Challenging Smite	Quick: You may target 1 enemy Champion, Pet or Neutral Monster and activate the appropriate effect:\n• Enemy Champion: Reduce that card's AP and AD by 1 for 2 Phases and for the rest of the turn: If the target as attacked by at least 1 allied Champion: Deal 1 damage at the end of each Phase.\n• Pet or Neutral Monster: Deal 4 damage to the target.	SUMMONERSPELL	T
4215	Mercury's Treads	UNIQUE: If the equipped Champion is affected by Crowd Control: Reduce the  duration by 1 Phase (minimun duration: 1 Phase).  \nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
4219	Mark	Target 1 Champion you control and 1 Zone in 2 Range of the Target; Deal 1 damage to the 1st card in the target Zone and mark that card with Mark for 2 Phases. During this turn,  target may Dash to that card marked while it is marked with Mark.	SUMMONERSPELL	T
4225	Yorick	Last Right | 2 MANA\nCooldown: Each Turn\nThis card’s next attack deals bonus damage equal to half of this card’s AD and Heals this card for 2 HP. If this ability is used in the Battle Phase: This card may attack again this Turn. When an enemy card is slain: This card gains 1 Grave Stack. Quick: Consume 3 Grave Stacks; Summon 1 Undead-type Champion from your Fountain with HP equal to or less than this card’s current HP. \nMourning Mist | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 Zone in range; Deal damage to the target zone equal to half the target’s current HP - 2 and mark the damaged Champion with Mourning until the end of the turn. Undead-type Champion’s attacks deal 1 bonus damage to Champions marked with Mourning.\nEulogy of the Isles | 5 MANA\nCooldown: 3 Turns\nSummon 1 “Maiden of the Mist” from your Fountain or Deck.	CHAMPION	T
4266	Feral Roar	Add 1 Human | Beast-type Champion from your Fountain to your Hand. If you control no Champions: Summon that Champion instead and it gains 2 HP and 2 AD.	SUMMONERSPELL	T
4290	The Forests of the Fae	Target 1 Yordle-type Champion you control: Add 1 Summoner Spell which includes the target's Region or Type in its effect from your Deck to your Hand.	SUMMONERSPELL	T
4308	H-28G Evolution Turret	“H-28G Evolution Turret” may only be summoned by the effect of “Heimerdinger,” and by no other means. You may control up to 3 cards with the name “H-28G Evolution Turret”. This card’s AD is equal to half of “Heimerdinger, The Revered Inventor”’s AP - 1. This card attacks any enemy card in the Zone infront of it.\nBeam Attack\nIf “Heimerdinger” Disables a card: This card gains 1 Range and deals damage to all cards in range in the Disabled card’s column equal to this card’s AD + 1.	PET	T
4370	Cho'Gath	Rupture | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 2 adjacent enemy Zones in range; At the beginning of the next Phase, Knock Up all cards on the target Zones and deal damage equal to this card’s AP.\nFeral Scream | 3 MANA | Range: 2\nCooldown: 2 Turns\nDeal damage to all cards in range in this card’s column equal to half this card’s AP and Silence all cards affected for 1 Phase.\nFeast | 5 MANA | Range: 1\nCooldown: 3 Turns\nTarget 1 card in range: Deal damage to the target equal to half this card’s max HP - 2 + half this card’s AP. If this ability slays a card: This card gains 2 HP.	CHAMPION	T
4401	Secrets of the Mists	Whenever a Champion is sent to the Fountain: This card gains 1 stack of Arcana, if the Champion was an Undead-type Shadow Isles Champion: Gain 2 stacks of Arcana instead. Once per turn, you may target a Champion in either player's Fountain and remove Arcana stacks equal to or less than the target's HP (min 2) and if you do: Summon the target with HP equal to the number of Arcana stacks removed and the target becomes Undead-type.	SUMMONERSPELL	T
4420	Talon	Rake | 3 MANA | Range: 2\nCooldown: 2 Turns\nDeal damage to all enemy units in range in this card’s column equal to half this card’s AD. At the beginning of the next Phase: Deal damage equal to this card’s AD to all enemy units in range in this card’s column and Slow all affected cards for 1 Phase.\nAssassin’s Path\nQuick: Dash over an adjacent allied Zone which is not marked with Assassin’s Path and mark that Zone with Assassin’s Path for 2 Turns.\nShadow Assault | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: This card become Invisible; You may target a card in range and if you do: Dash to that target and deal damage equal to this card’s AD + 2 to the target and all cards infront of the target in range.	CHAMPION	T
4429	Tide's Calling	Quick: Target 1 Champion you control and Shuffle it into the deck; Draw 1 card and if the target was a Vastaya-type Champion: Summon 1 Vastaya-type Champion from your deck with a different name from the target. You may only activate 1 “Tide's Calling” per turn.	SUMMONERSPELL	T
4462	Nasus	Soul Drain\nThis card gains Life Steal equal to half its AD.\nSiphoning Strike | 1 MANA | Range: 2\nCooldown: Each Turn\nThis card’s next attack deals bonus damage equal to half this card’s AD + number of Siphoning Strike Stacks. If this ability is used during the Battle Phase: This card may attack again this turn. This attack also deals 2 damage to Structures. Whenever this ability slays a unit gain 1 Siphoning Strike Stack, and if the unit was a card: Gain 2 Siphoning Strike Stacks instead.\nFury of the Sands | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Gain 2 HP, +2 Resistance and 1 Attack range for 2 turns. For this duration, at the end of each turn deal damage equal to this card’s AP + 1 to each adjacent enemy unit.	CHAMPION	T
4467	Edge of Night	UNIQUE: The equipped Champion's attacks and abilities gain + 1 Penetration\nNight Veil\nCooldown: 3 Turns\nUNIQUE: ACTIVE: The equpped Champion Channels for 1 Phase (the equipped Champion may Reposition during the Channel); After the Channel duration, Negate the next ability that would affect the equipped Champion. If the Channel is interrupted reduce this ability's cooldown by 2.	ITEM	T
4479	Void Deconstruction	Quick: Target 1 enemy Champion and banish 1 Voidborn-type Champion you control; Deal damage to the target equal to the HP of the banished card.	SUMMONERSPELL	T
4482	Gather The Legion	Discard 1 card and send 1 Champion from your Deck to your Fountain; Summon Noxus Champions from your Deck whose HP add up to the HP of the Champion sent to the Fountain.	SUMMONERSPELL	T
4518	Randuin's Omen	UNIQUE: Half damage from Critical Strikes to the equipped Champion.\nACTIVE: Quick: Slow all adjacent Champions for 1 Phase\nCold Steel\nUNIQUE: When the equipped card is attacked: Reduce the attacking Champion's Attack Speed stacks by 1 until the end of the turn.	ITEM	T
4559	Call of the Drowned Ones	Target 1 Bilgewater Champion in your Fountain and flip a coin: If the result is Heads: Summon the target and it becomes Undead-type and gains 2 HP and 2 AD/AP (adaptive), but if the result is Tails: Banish the target.	SUMMONERSPELL	T
4563	Knight's Vow	UNIQUE: Target 1 allied Champion and mark that Champion with Partner. While the equipped card is adjavent to the Partner it gains +1 Resistance. When the Partner would take damage: redirect 1 Damage to the equipped Champion (This damage ignores Resistance). Whenever the equipped Champion deals damage: Heal the equipped Champion for 1 HP.	ITEM	T
4595	Thresh	Death Sentence | 3 MANA | Range: 2\nCooldown: 3 Turns\nTarget 1 enemy Zone and flip a coin; If the result is Heads: Disable any unit in the target Zone for 1 Phase,  deal damage to the target equal to half of this card’s AP and reduce this card’s cooldown by 1, you may also Dash to the target. Targets hit by Death Sentence are marked with Dark Passage till the end of the turn.\nFlay | 3 MANA | Range: 1\nCooldown: 2 Turns\nIf this card did not attack last turn: This card’s next attack deals bonus damage equal to 2 x this card’s AD. Quick: Displace any enemy card in range in this card’s column. If there is a card marked with Dark Passage in this card’s Column: You may Reposition that card to the Frontline Zone of the column instead, dealing damage equal to this card’s AP.\nThe Box | 4 MANA | Range: 1\nCooldown: 2 Turns\nQuick: deal damage to all enemy cards in range equal to this card’s AP + 1, Slow affected targets for 2 Phases.	CHAMPION	T
4606	Void Staff	UNIQUE: The equipped Champion's abilities gain +2 Penetration	ITEM	T
4612	The Ancient Kingdom	Add 1 “The Risen Kingdom” from your Deck to your Hand and then if “The Risen Kingdom” is in your Fountain: Draw a card.	SUMMONERSPELL	T
4630	Communal Bond	If you control 2 or more Champions and all the Champions you control share the same Type and Region, each Champion you control gains 2 HP and 3 AD/AP (adaptive) until the beginning of your next turn.	SUMMONERSPELL	T
4634	Chemtech Transmutation	Banish 1 Human-type Champion you control: Summon 1 Creature-type Champion from your Deck to the Banished card's Zone. Only Creature-type Champions may attack this turn.	SUMMONERSPELL	T
4647	On The Case	If you control at least 1 Zaun Champion: Summon as many Piltover Champions as possible from from your Deck up to the amount of Zaun Champions you control. At the end of the turn send all Zaun Champions you control to the Fountain. You can only activate 1 “On The Case” per turn.	SUMMONERSPELL	T
4679	Twin Shadows	Cooldown: 3 Turns\nUNIQUE: look at 1 card randomly in your opponent's hand; If the card is a Champion: Champions with the same name cannot be summoned or activate abilities until the beginning of your next turn.	ITEM	T
4683	H-28Q Apex Turret	“H-28Q Apex Turret” may only be summoned by the effect of “Heimerdinger” and by no other means. If this card would be sent to the Fountain it is shuffled back into the Deck instead. This card’s AD is equal to “Heimerdinger, The Revered Inventor”’s AP - 1 and Slow the target for 1 Phase. This card attacks each adjacent enemy card once.\nApex Beam\nIf “Heimerdinger” Disables a card: This card gains 1 Range and deals damage to all cards in range in the Disabled card’s column equal to this card’s AD + 2	PET	T
4710	Duskblade of Draktharr	UNIQUE: The equipped Champion's attacks and abilities gain + 1 Penetration\nNight Stalker\nUNIQUE: After being in Stealth for at least 1 Phase; the equipped Champion's next attack deals 2 bonus On-Hit damage and if the Champion has 1 original Range: Slow the target for 1 Phase.	ITEM	T
4713	Janna	Howling Gale | 2 MANA | Range: 1\nCooldown: Each Turn\nQuick: Target 1 Column in range; Deal damage to all cards in range in the target column equal to half this card’s AP and Knock Up affected targets. You may Channel this ability for 1 Phase (This card may Reposition, attack and cast abilities), and if you do: Double this ability’s range and damage.\nEye of the Storm | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 allied Champion in range; Shield that card by this card’s AP for up to 2 Phases. The target gains AD equal to half this card’s AP for that duration.\nMonsoon | 5 MANA | Range: 2 \nCooldown: Once while this card is on the field\nQuick: Channel for 2 Phases and Displace all enemy cards in range; Heal allied Champions in range for half this card’s AP + 1 at the beginning of each phase of the Channel duration.	CHAMPION	T
4848	Chasm of Lost Magic	If you control no Champions: Discard your hand; Summon Champions from your Fountain whose HP adds up to a value less than or equal to the number of Summoner Spells in your Fountain and they become Undead-type. You cannot declare an attack or activate Champion abilities this turn.	SUMMONERSPELL	T
4877	Memento Mori	Send 1 Undead-type Shadow Isles Champion from your Deck to your Fountain; add 1 Shadow Isles Champion with a different name from your Deck to your Hand.	SUMMONERSPELL	T
4902	Nidalee	Javelin Toss / Takedown | 2 MANA | Range: 2\nCooldown: Each Turn\nHuman: Target 1 Column in range; at the end of this Phase, deal damage to the first card in range in the target column equal to the number of rows between this card and the target x half this card’s AP.\nCougar: This card’s next attack deals bonus damage equal to half this card’s AP + half this card’s AD and this card may attack once again this turn.\nPrimal Surge / Pounce | 2 MANA | Range: 2\nCooldown: 2 Turns\nHuman: Quick: Target 1 allied Champion: Heal that card for half this card’s AP  and the target gains +1 Attack Speed for the duration of this turn.\nCougar: Target 1 Zone in range; Dash to that target and deal damage equal to half this card’s AP to cards on or beside the target Zone. If this cards slays a target: reduce this ability’s cooldown by 1.\nAspect of the Cougar\nThis ability may be used before Summoner Level 6.\nHuman Form: This card becomes Cougar Form: Fighter | Diver class, While in Cougar Form this card does not use Mana to activate abilities.\nCougar Form: This card becomes Human Form: Mage | Artillery class.	CHAMPION	T
4903	The Risen Warriors	Quick: Place 2 Sand Soldier Tokens on the field with 2 HP and 2 AD. These tokens are treated as Human-type Shurima Champions for the effects of Summoner Spell cards. You cannot summon cards from the deck during the turn this card is activated. You may only activate 1 “The Risen Warriors” per turn.	SUMMONERSPELL	T
4990	Hextech Research	Target 1 Item card equipped to a Piltover or Zaun Champion you control; Send that card to the Fountain and Equip one Item card with a different name from the target from your Deck to a Champion you control. Only 1 “Hextech Research” can be activated  per turn.	SUMMONERSPELL	T
5057	Sterak's Gage	Giant Strength\nUNIQUE: Increase the equipped Champion's AD by half of its original AD.\nLifeline\nCooldown: Once while this card is on the field\nUNIQUE: If the equipped Champion takes 5 damage in a single Phase: Shield the equipped Champion for 4 HP for up to 2 Phases. During this period the equipped Champion is immune to Crowd Control.	ITEM	T
5070	Rek'Sai	Fury of the Xer’Sai\nWhen this card attacks; it gains 1 Fury Stack (max 4). Once per turn this card may become Burrowed. While Borrowed this card consumes all Fury Stacks; Heal this card by the number of Fury Stacks consumed and this card’s next attack Knocks Up the target and Unburrows this card.\nQueen’s Wrath / Prey Seeker | Range: 2\nCooldown: 2 Turns\nUnborrowed: For the rest of this turn, this card’s attacks deal damage to all adjacent enemy units and this card may attack twice this turn.\nBurrowed: Target 1 column in range: Deal damage to the first card in range in the target column equal to this card’s AD + half this card’s AP.\nVoid Rush | Range: 3\nCooldown: 3 Turns\nWhen this card damages a card: Mark that card with Prey for the rest of the turn.\nQuick: Target 1 enemy card in range marked with Prey and this card becomes Untargetable for 1 Phase; At the beginning of the next Phase, Dash to the target dealing damage equal to this card’s AD + half the target’s missing HP(min 1).	CHAMPION	T
5076	Rumble	Junkyard Titan\nThis card’s attack range is 1.\nEach time this card activates an ability, gain 1 stack of Heat for 2 Turns (refreshing with each Stack). If this card has 2 or more stacks of Heat: This card gains the Danger Zone effect of any ability cast. If this card has 4 stacks of Heat: Silence this card for 2 Turns, during which this card’s attacks deal bonus damage equal to half this card’s AP.\nFlamespitter | Range: 1\nUp to 2 times per turn, deal damage to each enemy card in range equal to half this card’s AP + 1.\nDanger Zone: Deal damage equal to this card’s AP + 2 instead.\nThe Equalizer | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 enemy Row or Column in range; At the beginning of the next Phase, for 2 Phases, deal damage equal to this card’s AP - 1 to each card in the targeted Row or Column, each Phase.	CHAMPION	T
5082	Twisted Fate	Loaded Dice\nWhen this card slays an enemy unit: Roll a die, if the result is 6: Draw a card.\nPick a Card | 2 Mana | Range 2\nCooldown: Each Turn\nRoll a die: The result empowers this card’s next attack. \n1 or 4: Deal bonus damage equal to this card’s AP and restore mana equal to the die roll result.\n2 or 5: Deal bonus damage equal to this card’s AP + 1 to the target and all cards adjacent to the target.\n3 or 6: Deal bonus damage equal to this card’s AP to the target and Disable the target for 2 Phases.\nDestiny | 5 MANA | Range: 3\nChannel for 1 Phase, Reveal all enemy cards for 2 Phases and target an enemy zone in range. At the beginning of the next Phase, you may Reposition this card to any allied Zone in the target’s Column.	CHAMPION	T
5086	Perilous Waters	Quick: During this turn; If your opponent would add a card to their hand by a card's effect: Flip a coin; If the result is Heads: You draw 1 card instead.	SUMMONERSPELL	T
5098	Orianna	Clockwork Windup\nWhen this card is Summoned: Place 1 Ball Token its Zone. This card’s attacks deal 1 bonus On-Hit damage and each time this card attacks the same target: double this ability’s bonus damage.\nCooldown: Each Phase\nQuick: Activate one of the following effects:\nAttack: Target 1 Zone in range; move the Ball Token to the Target Zone and deal damage equal to half this card’s AP to the target Zone.\nDissonance: Deal damage equal to this card’s AP to all cards on or beside the Ball Token’s Zone and Slow affected cards for 1 Phase.\nProtect: Target 1 allied Champion in range: move the Ball Token to the target’s Zone and Shield the target for half this card’s AP for up to 2 Phases. The Ball Token will Reposition with the target until Command: Attack is activated again.\nCommand: Shockwave | 6 MANA\nCooldown: 4 Turns\nQuick: Deal damage equal to 1.5 x this card’s AP to all enemy cards adjacent to the Ball Token and Disable affected cards for 2 Phases.	CHAMPION	T
5124	Lost Tales of the Sai	Quick: Until the end of your next turn, any card sent from the Deck to the Fountain is Banished instead.	SUMMONERSPELL	T
5154	Urgot	Echoing FlamesIf this card’s attack target is in a column it has not atacked while on the field: Deal damage to all units in front of or beside the target equal to half this card’s AD. This ability is refreshed if this card has attacked all columns.\nPurge | 3 MANA\nCooldown: 2 TurnsCooldown: 2 Turns\nQuick: Shield this card for half this card’s max HP for up to 2 Phases; For the next 2 Phases, Deal damage equal to this card’s AD to 1 adjacent unit and applying Echoing Flames each time this ability damages a card in a column this card has not attacked this turn.\nFear Beyond Death | 5 MANA | Range: 2\nCooldown: 4 Turns\nQuick: Target an enemy Column in range; Deal damage to the first Champion in range in the target column equal to half this card’s AD and mark that card with Fear for the rest of the turn. If a Champion marked with Fear has HP equal to or less than half its max HP - 3(min 1): Slay that Champion.	CHAMPION	T
5159	Mortal Reminder	Executioner\nUNIQUE: When this card attacks a Champion: Inflict Grievous Wounds on that Champion for 2 Phases. \nLast Whisper\nUNIQUE: +1 Penetration	ITEM	T
5168	Irelia	Bladesurge | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy card in range; Dash to the target and deal damage to the target equal to this card’s AD + 1,  applying On Hit efects and healing this card for half of the damage dealt. If this ability slays a card or the target is marked with Ionian Fervor: Refund this card’s cooldown and mana cost.\nFlawless Duet | 4 MANA | Range: 2\nCooldown: 2 turns\nQuick: Target 1 Column or Row in range and flip a coin; If the result is Heads: Disable all enemy units in range in the target Row or Column and deal damage to all affected units equal to half this card’s AD + this card’s AP, and mark affected cards with Ionian Fervor until the end of the Turn.\nVanguard’s Edge | 6 MANA | Range: 2\nCooldown: 3 Turns\nTarget 2 adjacent columns in range and deal damage to the first champion in each column equal to this card’s AD + this card’s AP and mark them with Ionian Fervor until the end of the Turn. This Turn, If a card in an affected column repositions to a zone outside the affected columns: Disarm that card for the next turn.	CHAMPION	T
5172	Grief	Quick: Target 1 Demacia Champion in your Fountain; At the end of this Turn, add that target to your hand. While this card is in your Fountain, You may banish this card and 1 other Summoner Spell from your Fountain, except “Grief”; Add 1 Summoner Spell from you Deck to your Hand, with the same name as a card in your Banished Zone. You may only activate 1 effect of “Grief” per turn.	SUMMONERSPELL	T
5175	Aatrox	The Darkin Blade | Range: 2\nCooldown: 2 Turns\nDuring this turn, up to 3 times; Deal damge to all cards in range in this card's column equal to half this card's AD. Knock Up and deal 1 Bonus damage to any card damaged by this ability at max Range, but on the third cast, apply this effect to the Zone at min Range instead.\nUmbral Dash | Range: 1\nCooldown: Charge: Each Turn | Max 2\nWhen this card damages a card with an ability: Heal this card for half the damage dealt. Quick: Dash to a zone in range and this card gains 1 AD for 2 Phases.\nWorld Ender\nCooldown: 3 Turns\nQuick: Until the end of the turn; This card gains AD equal to half this card's AD. If this card is slain during this ability's duration: This card enters Stasis for 1 Phase instead (This card may still reposition during this period), and at the end of that Phase, Heal this card for 3 HP ending the ability's duration.	CHAMPION	T
5200	Chilling Smite	Quick: You may target 1 enemy Champion, Pet or Neutral Monster and activate the appropriate effect:\n• Enemy Champion: Deal 2 damage to the target and Slow the target for 1 Phase.\n• Pet or Neutral Monster: Deal 4 damage to the target.	SUMMONERSPELL	T
5201	Renekton	Reign of Anger\nWhenever this card attacks or Disables a Champion it gains 1 Fury Stack (max 4). If this card casts a Ruthless Predator while it has 2 or more Fury: Consume 2 Fury and that ability is Empowered.\nRuthless Predator\nCooldown: 2 Turns\nThis card’s next attack gains 1 range, deals bonus damage equal to half this card’s AD and Disables the target for 1 Phase. If this ability is used during the Battle Phase: this card may attack again this turn.\nEmpowered: Deal bonus damage equal to this card’s AD + 1 instead and Heal this card for half the damage dealt + 1.\nDominus\nCooldown: 3 Turns\nQuick: Gain 3 HP, 1 Fury and 1 range for 2 turns. For this ability’s duration, at the beginning of each Phase: Gain 1 Fury, and at the end of each turn: Deal damage equal to this card’s AP + 1 to each adjacent enemy card.	CHAMPION	T
5203	Essence Reaver	UNIQUE: When the equipped Champion attacks: Refund 1 Mana.\nEssence Flare\nCooldown: 3 Turns\nUNIQUE: After the equipped Champion uses it's Ultimate; it gains +1 Attack Speed and when it attacks: Reduce all its non ultimate ability cooldowns by 1.	ITEM	T
5210	Chemtech Research	Quick: Banish 2 Item cards from your Fountain and add 2 Item cards with different names from your Deck to your Hand. If you control a Zaun or Piltover Champion: For each card that would be added to the hand by this effect you may equip it to a Zaun or Piltover Champion instead.	SUMMONERSPELL	T
5218	Cursed Archipelago	Quick: Discard 1 card; For the rest of the turn: Undead-type and Shadow Isles Champions cannot be Banished.	SUMMONERSPELL	T
5246	Annie	Pyromania\nEach time this card damages a Champion or uses an ability: this card gains 1 Pyromania Stack (max 4). While ithis card has 4 Pyromania Stacks if card damages an enemy card: Consume all stacks and Disable that card.\nDisintegrate | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 card in range: Deal damage equal to this card’s AP - 1 to the target and if this ability slays a card: refund its mana cost and refresh the cooldown. You may double this card’s mana cost; Damage all adjacent enemy units instead.\nSummon: Tibbers | 5 MANA\nCooldown: 3 Turns\nTarget 1 allied Zone: Summon 1 “Tibbers” from your Deck or Hand to the target Zone and deal damage equal to this card’s AP + 1 to any enemy unit(s) adjacent to “Tibbers”. 	CHAMPION	T
5249	Ornn	Living Forge\nCooldown: 4 Turns\nDiscard 1 card: Add 1 Item card from your deck to your hand\nBellows Breath | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Shield this card for HP equal to half this card’s HP - 2 for 1 Phase and deal damage to all enemy cards in range in this card’s column equal to half the card’s HP - 2 (min 1). At the beginning of the next Phase, Mark each enemy card in range in this card’s column with Brittle for 2 Phases. If a card marked with Brittle is Disabled: Consume the mark and double the Disable duration.\nCall of the Forge God | 5 MANA | Range: 3\nCooldown: Once while this card is on the field\nDeal Damage to all enemy cards in this cards column equal to this card’s AP + 2, Slow all affected targets for 1 Phase and mark them with Brittle. At the beginning of the next Phase, if this card is not Disabled, Charmed or Taunted and still in this column in which this ability was cast: Target 1 enemy Zone in range, Reposition this card to the Frontline Zone of its column and flip a coin; If the result is Heads: Deal this abilty’s damage again to all cards in range in the target Zone’s column and Knock Up all affected cards for 1 Phase. 	CHAMPION	T
5275	The First Lands	When this card is activated: You may reveal the top 3 cards of your Deck; Add 1 Summoner Spell or Ionia Champion from the revealed cards to your Hand and shuffle the others into the Deck. Once per turn, when a card(s) is shuffled from your Fountain into your Deck: you may draw 1 card or you may discard 1 card instead, and if you do: Add 1 Ionian Champion with HP less than or equal to the number of Summoner Spells in your Fountain or 1 Summoner Spell which lists “Ionia Champion” in its effect (except “The First Lands”) from your Deck to your Hand.	SUMMONERSPELL	T
5288	The Warrior's Glory	Target 1 Noxus Fighter or Slayer Champion you control: Equip this card to the target (this card is not treated as an Item). The equipped Champion gains 2 AD. Whenever the equipped Champion slays an enemy Champion: Heal the equipped Champion for half that card's AD. If the equipped Champion would be slain or destroyed by a card effect: Send this card to the Fountain and the equipped Champion takes no damage from that attack, ability or effect. Only 1 “The Warrior's Glory” may be equipped to a Champion.	SUMMONERSPELL	T
5301	Backstreet Dealings	When an Item card is added to your Hand or equipped to an allied Champion by a card effect: Banish 1 Zaun Champion from your hand or Fountain; activate one of the following effects:\n• Draw 1 card\n• Add 1 Banished Item Card to your Hand\n• Equip 1 Item card in your Fountain to a Champion you control.\nYou may only activate 1 “Backstreet Dealings” per turn.	SUMMONERSPELL	T
5304	The Rite, Corrupted	Quick: Banish 1 Human-type Shurima Champion you control  and 1 Demigod-type Shurima Champion from your Deck.; Summon 1 Demigod-type Shurima Champion from you Deck or Hand with a different name. If you control 1 “The Risen Kingdom”, destroy it ; Deal damage to all card's on the field, except the summoned Champion, equal to the combined AD or AP of the the Champions banished for this card's effect. If any enemy champion is slain by this effect: The summoned Champion gains HP, AD and AP equal to half the combined HP, AD and AP (respectively) of the Champions banished for this card's effect. Banish the summoned card when it leaves the field. Only 1 “The Rite, Corrupted” may be used each turn.	SUMMONERSPELL	T
5312	Sejuani	Fury of the North\nAt the beginning of each turn, Mark this card with Frost Armor. While this card is marked with Frost Armor it is immune to Slow and if this card is damaged: Half that damage and consume the mark. If this card Disables a card: Mark that card with Frozen. If this card attacks a card with Frozen: Consume the mark and deal bonus damage equal to half the card’s max HP - 2 (min 1).\nPermafrost | 3 MANA | Range: 2\nCooldown: 2 Turns\nWhen this card or an adjacent allied Champions with 1 attack range attacks: Add 1 mark of Frost to the target. Quick: Target 1 enemy card in range with 3 marks of Frost; Consume all the marks and Disable that target for 2 Phases\nGlacial Prison | 5 MANA | Range: 2\nCooldown: 3 Turns\nTarget 1 enemy Zone in range and flip a coin; If the result is Heads: Disable any card in that Zone for 2 Phases . Deal damage equal to this card’s AP + 1 to all Zones adjacent to the target zone and Slow the card’s affected for 1 Phase.	CHAMPION	T
5323	The Looming Storm	Add 1 Ionia Fighter or Slayer Champion from your deck to your hand and if you control “The First Lands”, you may Target 1 Champion in your Fountain: Shuffle that card into your Deck.	SUMMONERSPELL	T
5334	Mark of the Winter's Claw	Quick: All Freljord Champions you control gain 1 AD/AP (adaptive) for each card on the field marked with Frost until the end of the turn.	SUMMONERSPELL	T
5346	Nocturne	Duskbringer | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 Column in range and flip a coin: If the result is Heads: Deal damage equal to half this card’s AD to the all cards in range in the target column and mark the affected cards with Dusk for 2 Phases. While this card is in range of a card marked with Dusk: This card gains 1 AD.\nShroud of Darkness | 3 MANA\nCooldown: 2 Turns\nThis card gains +1 Attack Speed.\nQuick: Negate the first enemy champion ability or card effect that would affect this card during this Phase. If this ability Negates an ability or effect: This card gains +1 Attack Speed\nParanoia | 6 MANA | Range: 3\nCooldown: Once while this card is on the field\nQuick: For 2 Phases, enemy cards cannot target cards or Zones. During this duration you may target 1 card in range: Dash to that target and deal damage equal to this cards AD + 1 to the target.	CHAMPION	T
5415	Guinsoo's Rageblade	UNIQUE:  When the equipped Champion attacks: Deal 1 bonus On-Hit damage and this card gains 1 Stack of Rage (max 3) until the end of the turn. At the end of the turn if this card has 3 Rage stacks: During your next turn, the equipped Champion gains Guinsoo's Rage.\nGuinsoo's Rage\nDouble any bonus On-Hit damage dealt by the equipped Champion	ITEM	T
5421	Luden's Echo	Haste\nUNIQUE: + 1 Cooldown Reduction\nEcho\nUNIQUE: When the equipped Champion Repositions or casts an ability: Gain 1 Echo stack (max 3). When this equipped Champion damages a card with an ability while at max Echo stacks: Consume all Echo stack and deal damage to all card's beside the affected card equal to half the equipped Champion's AP - 3 (min 1).	ITEM	T
5503	Tools of Conquest	Target 1 Noxus Champion you control: Equip this card to the target (this card is not treated as an Item). The equipped Champion gains 1 AD/AP adaptive. Whenever the equipped Champion slays a card: You may banish 1 card from either player's Fountain, and if the champion banished is a Noxus Champion: Draw 1 card. Only 1 “Tools of Conquest” may be equipped to a champion.	SUMMONERSPELL	T
5553	Ryze	Overload | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy column in range: Deal damage to the first card in range in the target column equal to half this card’s AP + half your Summoner Spell - 3. If this card activates another ability: Refresh this ability’s cooldown and this card.\nSpell Flux | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy card in range: Deal damage equal to half this card’s AP to the target and mark that target with Flux until the end of your next turn. If the target is already marked with Flux: Apply this ability to all units adjacent to the target. If Overload damages a card marked with Flux: Deal Overload’s damage to all adjacent cards marked with Flux and consume the marks.\nRealm Warp | 6 MANA | Range: 4Cooldown: Once per Game\nWhen this card is summoned: you may summon as many Champions as possible from your Hand and/or Fountain.	CHAMPION	T
5560	Infernal Drake	This card is immune to all forms of crowd control and If it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; this card attacks the last card that damaged it. When this card attacks a card, deal 2 damage to any card behind that card.\nDragon Slayer\nGain 1 Dragon Slayer Stack and for the rest of the duel, Allied Champions gain 1 AD and AP (this effect can stack with other “Infernal Drake” kills).	NEUTRALMONSTER	T
5611	Sivir	Boomerang Blade | 2 MANA | Range: 2 \nCooldown: 2 Turns\nOn cast and at the beginning of the next Phase: Deal damage to all enemy cards in range in this card’s column equal to half this card’s AD. This card gains +1 Attack Speed this turn.\nSpell Shield | 3 Mana\nCooldown: 2 Turns\nQuick: Negate the first enemy ability or effect which would affect this card during this Phase  If an ability or effect is negated by this ability: Gain 2 MANA.\nOn The Hunt | 5 MANA\nCooldown: 3 Turns\nQuick: All allied Champions gain 1 Reposition Range this turn.	CHAMPION	T
5613	Aspect Reincarnation	Target 1 Aspect-type Champion you control; Equip this card to the target (This card is not treated as an Item). If the equipped Champion is slain and you have a card with the same name in your Hand or Fountain: Summon that card and equip any cards, except “Aspect Reincarnation” that were equipped to the equipped Champion to the summoned card and that card gains 2 AD/AP (adaptive). Only 1 “Aspect Reincarnation” may be equipped to a card.	SUMMONERSPELL	T
5633	Tibbers	“Tibbers” may only be summoned by the effect of “Annie” and by no other means. During your 2nd Ending Phase after summoning this card, if this card is still on the field: Shuffle this card into the Deck.\nFlaming Aura\nAt the beginning of each turn deal damage equal to “Annie” AP - 1 to all adjacent enemy cards.	PET	T
5680	Teleport	Target 1 Card in your Fountain; At the end of the current Phase, Summon tthe target.	SUMMONERSPELL	T
5711	The Ecliptic Vaults	If you have 2 or less cards in your hand: Draw cards equal to the number of Item cards currently equipped to Champions you control. At the end of the turn, Discard cards the number of cards in your hand is equal to or less than the number of cards in your hand when you activated this card. You may only activate 1 “The Ecliptic Vaults” per turn.	SUMMONERSPELL	T
5761	Gragas	Happy Hour\nWhen this card uses an ability: Heal this card for half this card’s max HP - 2 HP\nBody Slam | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 column in range and Dash to that column; deal damage eqaul to this card’s AP + 1 to the first card in range in the target column and any units beside that card and Knock Up all units affected.\nExplosive Cask | 5 MANA | Range: 2\nCooldown: 4 Turns\nQuick: Target 1 enemy zone in range; at the beginning of the next Phase; Deal damage equal to this card’s AP + 2 to all units on or adjacent to the target zone. If this ability’s damage does not slay an affected card: Displace that card.	CHAMPION	T
5764	Frozen Mallet	Icy\nUNIQUE: When the equipped Champion attacks: Slow the target for 1 Phase.	ITEM	T
5825	Galio	Winds of War | 3 MANA | Range: 2\nCooldown: Cooldown: 2 Turns\nTarget 2 enemy Zones in range; Deal damage equal to half this card’s AP - 1 to any cards in the targeted Zones\nShield of Durand | 4 MANA\nCooldown: 2 Turns\nQuick: Channel for 1 Phase (This card may Reposition and the Channel cannot be interrupted by Crowd Control), during the Channel, this card gains Resistance equal to half this card’s AP. At the beginning of the next Phase: Taunt all adjacent enemy Cards and deal damage equal to half this card’s AP - 1 to all cards affected.\nHero’s Entrance | 7 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Target 1 allied champion and Channel for 1 Phase; During the channel the target gains Resistance equal to half this card’s AP. At the beginning of the next Phase, Reposition this card to the a Zone adjacent to the target and Knock Up all adjacent enemy cards dealing damage equal to this card’s AP -1. This ability may be activated from the Fountain for double the Mana cost.	CHAMPION	T
5829	Revenge of the Drowned	When a Bilgewater Champion is slain: Target the enemy champion which slayed the card and deal damage equal to the slain Champion's HP to the target and flip a coin; If the result is Heads: Summon the slain Champion from the Fountain and it becomes Undead-type, but if the result is Tails: Banish the slain Champion instead. You may only activate 1 “Revenge of the Drowned” per turn.	SUMMONERSPELL	T
5845	Kayle	Divine Interferance | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 card on the field; If the target is an allied card: Heal the target for half of this card’s AP. If the target is an enemy card: Deal damage to the target equal to this card’s AD + half of this card’s AP.\nRighteous Glory | 3 MANA\nCooldown: 2 Turns\nThis card’s attacks deal bonus damage equal to half this card’s AP (min 1).\nQuick: For the rest of this turn, this card gains 1 range and this ability’s bonus damage is doubled. While this effect is active, this card’s attacks deal damage to units beside the targert as well.\nIntervention | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 allied Champion: During this Phase, the target takes no damage.	CHAMPION	T
5856	Poppy	Hammer Shock | 3 MANA | Range: 1\nCooldown: 2 Turns\nTarget 1 Zone in range; Deal damage to any card in the target zone equal to half this card’s AD + half the affected champion’s maximum HP - 3 (min: 1). At the beginning of thie next Phase, deal this ability’s damage again.\nHeroic Charge | 3 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 card in range; Dash to the target, Reposition the target card the Backline Zone of their Column and deal damage equal to half this card’s AD. If the card cannot be Repositioned: Disable the target for Phase and deal this ability’s damage again.\nKeeper’s Verdict | 6 MANA | Range: 1\nCooldown: 4 Turns\nQuick: Target 1 Zone in range; Knock Up any card in that zone for 2 Phases and deal damage equal to this card’s AD. You may Channel this ability for 1 Phase (this card may Reposition) and if you do: At the beginning of the next Phase, deal damage equal to this card’s AD to all cards in the target Zone’s column and if this damage does not slay an affected card:  Displace that card\n	CHAMPION	T
5877	Katarina	Voracity\nIf this card slays a Champion: Reduce all this card’s cooldowns by 1. When this card attacks: Roll a die and mark the Zone that corresponds to the result with Dagger until the end Phase. If this card Dashes to a zone marked with Dagger: Deal damage equal to this card’s AP to all enemy cards adjacent to that Zone.\t\nShunpo | Range: 2\nCooldown: Each Turn\nQuick Target 1 enemy card, Zone marked with Dagger or Zone adjacent to an allied card in range; Dash to the target and deal damage to enemy card’s in that zone equal to half this card’s AP + half this card’s AD\nDeath Lotus | Range: 2\nCooldown: 3 Turns\nQuick: Channel for 2 Phases; Deal damage equal to half this card’s AP + half this card’s AD to all card’s in range each Phase during the Channel duration.	CHAMPION	T
5911	The Rite of Ascension	Send 1 Human-type Shurima Champion you control to the Fountain; Summon 1 Demigod-type Shurima Champion from you Deck or Hand. If you control “The Risen Kingdom”, you may banish the Human-type Shurima Champion you control instead and the summoned Demigod-type Shurima Champion gains HP, AD and AP equal to that of the banished card but is banished when it leaves the field. You may only use 1 “The Rite of Ascension” per turn.	SUMMONERSPELL	T
5968	Vendetta	Target 1 Bilgewater Champion in your Fountain; Banish the target and add 1 Bilgewater Champion with a different name from your Deck to your hand and flip a coin; If the result is Heads: Draw a card.	SUMMONERSPELL	T
6025	The Preistess' Burden	Target 1 Bilgewater Champion you control whose original type is not Undead: Equip this card to the target (This card is not treated as an Item). The equipped Champion gains AD equal to the number of Undead-type Champions on the field and its type cannot be changed. While your opponent controls at least 1 Undead-type Champion: The equipped Champion may only attack Undead-type Champions, but must attack every enemy Undead-type Champion in range. Only 1 “The Priestess' Burden” may be equipped to a Champion.	SUMMONERSPELL	T
6029	Rylai's Crystal Sceptre	Icy\nUNIQUE:  When this card damages a unit with an ability or Pet: Slow that unit for 1 Phase.	ITEM	T
6043	Deadly Sin: Lust	If an enemy Champion targets a Demon-type Champion for an attack, Champion ability; Deal damage to the that champion equal to the attack/ability's damage + the number of “Deadly Sin” cards in your Fountain. If this effect Slays a Champion: Summon 1 “Evelynn, Agony's Embrace” from your Hand, Fountain or Deck. You may only activate 1 “Deadly Sin: Lust” per Turn.	SUMMONERSPELL	T
6057	Remains of Icathia	This card may only be activated if you have no Champions in your Fountain. Banish any amount of Champions you control; Banish cards your opponent controls equal to the number of cards Banished as a cost for this effect. You may not summon any cards or declare any attacks the turn you activate this effect.	SUMMONERSPELL	T
6061	Berserker's Greaves	UNIQUE: +1 Attack Speed\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
6133	Heimerdinger	H-28G Evolution Turret | 2 MANA | Range: 1\nCooldown: Charge - Each Turn | Max 3\nConsume 1 Charge: Summon 1 “H-28G Evolution Turret” from your Deck or Hand to an alied Zone in Range.\nUPGRADE: Summon 1 “H-28Q Apex Turret” from your Deck instead and shuffle it back into the Deck at the end of the turn.\nCH-2 Electron Storm Grenade | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Zone in range; At the end of the Phase, deal damage to the Zone equal to half this card’s AP and Disable any card in the target Zone for 1 Phase.\nUPGRADE:  Target 1 Zone in range; Deal damage to the Zone equal to this card’s AP and Disable any card in the target Zone for 1 Phase and then at the end of the end of the Phase, apply this ability to the Zone behind the Target Zone.\nUPGRADE!!! | 4 MANA\nCooldown: 3 Turns\nQuick: Activate the UPGRADE effect of one of this card’s abilities.	CHAMPION	T
6136	Malphite	Granite Shield\nAt the beginning of each turn: Shield this card for 2 HP.\nSeismic Shard | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy card; Deal damage to the target equal to this card’s AP and Slow the target for 1 Phase.\nUnstoppable Force | 6 MANA | Range: 2\nCooldown: Once while this card is on the field\nQuick: Target 3 adjacent Zones in range; Dash to those targets, deal damage to the target Zones equal to this card’s AP + 2 and Knock Up all affected cards for 2 Phases.	CHAMPION	T
6169	Ivern	Friend of the Forest\nThis card cannot attack Neutral Monsters. While this card is on the field: all Plant, Creature and Spirit type Champions gain 1 HP  and 1 AD/AP (adaptive) for each Plant, Creature and/or Spirit type Champion you control.\nTriggerseed | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 allied card in range;  Shield that champion for HP equal to this card’s AP for up to 2 Phases. At the end of the Shield duration, deal damage equal to this card’s AP to all enemy Champions or Neutral Monsters adjacent to the shielded card and Slow all affected cards for 1 Phase.\nDaisy! | 5 MANA\nCooldown: 3 Turns\nSummon 1 “Daisy” from your Deck or Hand.	CHAMPION	T
6189	Vayne	Tumble | 2 Mana\nCooldown: Each Turn\nQuick: Reposition this card and if you do: this card’s next attack this turn deals bonus damage equal to half this card’s AD.\nSilver Bolts\nThis card’s attacks mark the target card with Silver Bolts (On Hit). If this card attacks a champion with 2 marks of Silver Bolts, consume those marks instead and deal bonus damage equal to half the target card’s maximum HP - 3 (min: 1) ignoring Resistance Stacks.\nFinal Hour | 5 MANA\nCooldown: 3 Turns\nFor the rest of the turn, this card gains 2 AD. If Tumble is activated this turn: this card becomes Invisible for 1 Phase or until this card attacks.	CHAMPION	T
6228	Warmog's Armor	UNIQUE: At the end of the turn if the equpped Champion's maximum HP is greater than  or equal to 10: Heal the equipped Champion by half it's HP - 2.	ITEM	T
6302	Dead Man's Plate	Dreadnought\nUNIQUE: At the beginning of each turn, the equipped Champion gains 1 Momentum Stack (max 3) and gains 1 Reposition Range for each. \nCrushing Blow\nUNIQUE: When the equipped Champion attacks: Deal bonus On-Hit damage equal to half its Momentum Stacks and Slow the target for 1 Phase and then remove all Momentum Stacks. If the attack Critically Strikes: This bonus damage is also doubled. If the equipped Champion has more than 1 Attack Range Crushing Blow does not Slow the target.	ITEM	T
6323	Captain's Armory	Target 1 Bilgewater Champion you control: Equip this card to the target (This card is not treated as an Item). The equipped Champion gains 2 HP and 2 AD and if you would flip a coin for the equipped card's effect: The result is Heads (You do not flip a coin). At the end of each turn, Flip a coin; If the result is Tails: Destroy the equipped Champion. Only 1 “Captain's Armory” may be equipped to a Champion.	SUMMONERSPELL	T
6330	Skarner	Crystal Slash | 2 MANA\nCooldown: 2 Turns\nDeal damage to to all adjacent enemy cards equal to half of this card’s AD + this card’s AP. When this card attacks: Reduce this ability’s cooldown by 1.\nFracture | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 column in range and flip a coin; If the result is Heads: Deal damage equal to this card’s AP + 1 to every card in range in the target column and mark them with Crystal Venom for 2 Phases. If this card attacks a Champion marked with Crystal Venom: Disable the target for 1 Phase.\nImpale | 5 MANA | Range: 1\nCooldown: 3 Turns\nTarget 1 enemy Champion in range or marked with Crystal Venom; Disable that target for 2 Phases and target an enemy zone in range; This card and the target Dash to that zone.	CHAMPION	T
6337	Heimerdinger's Workshop	Discard 1 Card; Add 1 Item card with different names from those equipped to cards you control from your Deck to your Hand. If you control “Heimerdinger, The Renown Inventor”, while this card is in the Fountain: You may banish this card: Add 1 Banished Item card to your Hand.	SUMMONERSPELL	T
6350	Rengar	Unseen Predator\nIf this card attacks a card from a Flank Zone or while in Stealth: That attack gains 1 Range and this card Dashes to the target. Each time this card deals damage to an enemy Champion or activates an ability it gains 1 Ferocity Stack (max 4). At 4 Ferocity Stacks this card may consume all stacks to use an empowerd ability. Each time this card slays a Champion with a unique name: This card gains 1 AD.\nSavagery\nCooldown: Each Turn\nThis card’s next attack deals 1 bonus damage. If this ability is used in the Battle Phase: This card may attack once more this turn\nEmpowered: The bonus damage is increased to half of this card’s AD and this card also gains +1 Attack Speed instead.\nThrill of the Hunt\nCooldown: 3 Turns\nFor the duration of this turn this card becomes Camouflaged and gains 1 Reposition range: This card’s next attack deals bonus damage equal to half this card’s AD and ends the Camouflage duration.	CHAMPION	T
6356	Jayce	To The Skies / Shock Blast | 2 MANA | Range: 2\nHammer Stance: Target 1 enemy card in range; Dash to the target, deal damage to the target equal to this card’s AD + 1 and Slow the target and any card beside it.\nCannon Stance: Target 1 column in range and flip a coin; If the result is Heads: Deal damage equal to this card’s AD to the first card in range in the target column.\nThundering Blow / Acceleration Gate | 2 MANA | Range: 1\nCooldown: 2 Turns\nHammer Stance: Target 1 enemy card in range; Deal damage to the target equal to half this card’s AD + 1 and if that damage does not slay the card; Displace the target.\nCannon Stance: This card’s next cast of Shock Blast gains 1 range and 2 damage.\nTransform may be used before Summoner Leve\tl 6.\nHammer Stance: Quick: Switch to Cannon Stance. Whie this card is in Cannon Stance: Mage | Artillery class, and this card’s next attack deals 1 bonus damage.\nCanon Stance: Quick: Switch to Hammer Stance. Whie this card is in Hammer Stance: Fighter | Diver class, gain 1 HP and and this card’s next attack deals 1 bonus damage.	CHAMPION	T
7281	The City of Progress	Whenever an Item card would be sent to the Fountain: You may target 1 Zaun Champion you control; Equip the Item card to the target. Double the AD and AP gained from items attached to Zaun Champions. When a Zaun Champion with an equipped item is Slain: Banish that Champion.	SUMMONERSPELL	T
6363	Nautilus	Staggering Blow\nWhen this card attacks, if the target is different from the target of its last attack: deal 1 bonus damage and Root the target for 1 Phase.\nDredge Line | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Zone in range and flip a coin; if the result is Heads: deal damage to any unit in target Zone equal to this card’s AP + 1, Dash to and Root the target for 1 Phase.\nDepth Charge | 6 MANA | Range: 2\nCooldown: 3 Turns\nTarget a champion in range; Each Phase, Knock Up cards in the target’s column for 1 Phase until the target is Knocked Up. Deal damage equal to this card’s AP + 1 to each card Knocked Up by this ability.	CHAMPION	T
6383	Rune QUarantine	Discard 1 card; Target 1 Summoner Spell on the field or in either players’ Fountain, Banish it. You may only activate 1 “Rune Quarantine” per turn.	SUMMONERSPELL	T
6421	Stormrazor	Storm's Edge\nCooldown: Each Turn\nThe equipped Champion's first attack this turn Critically Strikes for 1.5 x the equipped Champion's AD + Critical Strike Chance stacks.	ITEM	T
6452	Boots of Swiftness	Slow Resist\nUNIQUE: The equipped Champion is immune Slows.\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
6461	Summoner's Rift	When you summon a Champion or Pet: That card gains 1 AD/AP (adaptive) until the end of the turn and this card gains 1 Runic Shard stack. You may remove 3 Runic Shard stacks from this card, and if you do: You may summon another Champion from your hand this turn in addition to the usual summon.	SUMMONERSPELL	T
6474	Return of the Monkey King	Quick: Target 1 Champion you control and Shuffle it into the deck; At the end of the Phase: Summon 1 Vastaya-type Champion from your Fountain with a different name to the target's Zone. You may only activate 1 “Return of the Monkey King” per turn.	SUMMONERSPELL	T
6529	Daisy	“Daisy” may only be summoned by the effect of “Ivern” and by no other means.\nFlower PowerWhen Daisy attacks she gains a stack of Flower Power.  If this card attacks a Champion while having a stack of Flower Power, it consumes 1 stack of Flower Power instead, and Knocks Up all champions in the column of attack target.	PET	T
6621	Zilean	Time in a Bottle\nAt the beginning of every 4th turn this card remains on the field: Your Summoner level increases by 2 instead of 1. \nTime Bomb | 2 MANA | Range: 2\nCooldown: Each Turn\nCooldown: Each Turn\nQuick: Target 1 Zone in range: Place 1 Time Bomb Token on that Zone for the rest of the Turn, if a Champion is in the target Zone or Repositions to the target Zone, the Time Bomb Token will Reposition with that card. If 2 Time Bomb Tokens are adjacent to each other: Disable units on or beside Zones with Time Bomb Tokens. At the end of the turn, Deal damage equal to this card’s AP to all cards on or beside Zones with Time Bomb Tokens. Once per turn, you may activate this ability once more this turn and if you do: Double the mana cost.\n\nChronoshift | 5 MANA | Range: 2\nQuick: Target 1 allied Champion in range; During the next 2 Phases, if the target would be slain: it enters Stasis for 1 Phase instead and at the beginning of the next Phase: Heal the target for 2 x this card’s AP.	CHAMPION	T
6627	Temple of the Solari	For the rest of the turn, whenever an Aspect or Celestial-type Champion is added to the hand by a card effect: Increase the HP of all Aspect and Celestial-type Champions by 1. If any card(s) gains 3 HP by this effect: Draw 1 card. You can only activate 1 “Temple of the Solari” per turn.	SUMMONERSPELL	T
6661	Deadly Sin: Wrath	If a Demon-type card you control destroys a Champion: Target 1 enemy Champion in range of that Demon-type Champion and deal damage to the target eqaul to that card's AD + the number of “Deadly Sin” cards in your Fountain. If this card slays a Champion: Summon 1 “Nocturne, The Eternal Nightmare” from your Hand, Fountain or Deck. You may only activate 1 “Deadly Sin: Wrath” per Turn.	SUMMONERSPELL	T
6698	Caitlyn	Headshot\nEvery 6th attack or attack on a Champion marked with Headshot gains 1 range and deals bonus damage equal to half this card’s AD + this card’s stacks of Critical Strike Chance. When an adjacent allied Champion Disables an enemy Champion: Mark that Champion with Headshot.\nPiltover Peacemaker | 3 MANA | Range: 3\nCooldown: 2 Turns\nAt the end of this Phase: Deal damage to all enemy cards in range this card’s column equal to this card’s AD + 1.\nAce in the Hole | 5 MANA | Range: 4\nCooldown: 3 Turns\nTarget 1 enemy Champion in range and Channel for 2 Phases; At the end of the Channel duration, deal damage to the first card in the target’s column equal to 2 x this card’s AD. 	CHAMPION	T
6702	Nami	Aqua Prison | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 2 adjacent enemy Zones in range; At the end of the Phase: Deal damage equal to half of this card’s AP to any card in those Zones and Disable any affected cards for 2 Phases.\nEbb and Flow | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Champion in range; If the target is an allied Champion: Heal that card for this card’s AP and if the target is an enemy Champion: Deal damage equal to half this card’s AP to that card and then; apply the appropriate effect to the first card in range of that affected card on the opposite side of the field.\nTidal Wave | 6 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 2 adjacent columns in range; Deal damage equal to this card’s AP to the Frontline Zones of the target columns and Knock Up the affected cards. At the end of the Phase: apply this card’s damage and effects to the Backline Zones of the target columns.	CHAMPION	T
6713	Finn, The Fishmonger	Discard 1 card; Add 1 Item Card from your Deck to your Hand and Flip a coin. If the result is Heads: Draw 1 card. You may only activate 1 “Finn, The Fishmonger” per turn.	SUMMONERSPELL	T
6830	Mejai's Soulstealer	Dread\nUNIQUE: When the equipped Champion slays an enemy Champion: It gains 1 AP	ITEM	T
6836	WINIONS!	Deal 1 Damage to any unprotected Structure. This card can only be used after Summoner Level 8.	SUMMONERSPELL	T
6844	Syndra	Dark Sphere | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy zone and place a Dark Spere in that zone for 2 Turns; Deal damage equal to half this card’s AP to all cards on or beside that zone. For double the Mana cost this ability may be activated once more this Turn.\nScatter The Weak | 5 MANA\nCooldown: 2 Turns\nQuick: Flip a coin; If the result is Heads: Disable all units on or behind a Dark Sphere for 1 Phase dealing damage equal to half this card’s AP to affected cards.\nUnleashed Power | 5 MANA | Range: 2\nCooldown: 4 Turns\nTarget 1 enemy card; Deal damage to the target equal to this card’s AP + the number of Dark Spere’s on the field, Move all Dark Spheres to the targets’s Zone and at the end of the Phase remove all Dark Sheres from the Field.	CHAMPION	T
7317	The Risen Kingdom	Once per turn, you may send 1 Human-type Shurima Champion, which was not summoned this turn,  you control to the Fountain, and if you do: Summon 1 Demigod-type Shurmia Champion from you Deck or Hand. Once per turn, if a Demigod-type Shurima Champion is slain: You may summon 1 Human-type Shurima Champion from your Fountain. Allied Demigod-type Shurima Champions summoned by the effects of Summoner Spells are unnafected by your opponent's Summoner Spell effects.	SUMMONERSPELL	T
6848	Sona	Power Chord\nCooldown: 2 Turns\nWhen Aura is activated: This card’s next attack deals bonus damage equal to half this card’s AP and applies the appropriate effect based on the the Aura used\n• Staccato: Double Power Chord’s bonus damage\n• Diminuendo: Half the target’s AD and AP until the beginning of your next Turn.\n• Tempo: Slow the target for 1 Phase. \nAura | 2 MANA\nWhen this card is summoned or Repositions: Activate one of the following effects:\n•Staccato: Adjacent allied champions gain AD equal to half this card’s AP +  half your Summoner Level - 5 (min 0) for 2 Phases\n•Diminuendo: Heal all adjacent allied champions for this card’s AP and Shield affected cards for any excess healing\n•Tempo: Adjacent allied Champions gain 1 Reposition Range this turn\nCrescendo | 6 MANA\nCooldown: 3 Turns\nQuick: Disable all enemy champions in range in this card’s column for  2 Phases.	CHAMPION	T
6939	Encounter at the Crossroads	Summon 1 Demon-type Champion from your Deck and send “Deadly Sins” cards from your Deck to your Fountain equal to half the summoned Champion's HP. You may only activate this card if you control no Champions.	SUMMONERSPELL	T
6969	Mountain Drake	This card is immune to all forms of crowd control and If it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; this card attacks the last card that damaged it. This card has +1 Resistance.\nDragon Slayer\nGain 1 Dragon Slayer Stack and for the rest of the duel, Allied Champions deal 1 bonus damage to Structures and Nuetral monsters. (this effect can stack with other “Mountan Drake” kills).	NEUTRALMONSTER	T
7019	Day's End Respite	Quick: Target 1 Champion you control with equipped Item cards; Send the Item cards to the Fountain and Heal the target by 2  for each Item card sent to the Fountain by this effect. The target cannot attack or activate abilities for the rest of the turn.	SUMMONERSPELL	T
7044	Righteous Glory	Cooldown: 3 Turns\nUNIQUE: The equipped Champion gains 1 Reposition Range for 1 Phase. At the beginning of the nxt Phase: Slow all adjacent enemy Champions for 1 Phase.	ITEM	T
7057	Ardent Censer	UNIQUE:  When the equipped Champion Heals or Shields a Champion: The target gains 1 stack of Attack Speed until the end of the turn and 1 bonus On Hit damage.	ITEM	T
7076	Alistar	Triumphant Roar\nEach time this card Crowd Controls an enemy Champion(s) or an enemy Champion is slain:  This card gains 1 Triumph Stack. If this card gains a Triumph Stack while it has 2 Triump Stacks: Consume all Triumph Stacks instead and Heal this card for 2 HP and all adjacent allies for 3 HP.\nPulverize | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Activate 1 of the following effects:\n• Target 1 enemy card: Dash to that target, mark the card with Pulverize, deal damage equal to this card’s AP and if this damage does not slay the target: Displace it.\n• Deal damage equal to this card’s AP to all adjacent enemy cards or cards beside a Champion marked with Pulverize and Knock Up all affected cards for 1 Phase.\nYou may pay 5 MANA instead and if you do: Activate both effects, however the target is not Displaced by this ability. \nUnbreakable Will | 5 MANA\nCooldown: 3 Turns\nDamage to this champion is halved until the end of the turn.	CHAMPION	T
7081	Gregor, The Memory of the Iceborn	Discard 1 card or banish 1 Freljord Champion from your Fountain; Add 1 Item card from your Deck to your Hand and if you banished a Champion for this effect: Add 1 Frost Stack to any card on the field up to the HP of the banished Champion. You may only activate 1 Gregor, The Memory of the Iceborn“ per turn.	SUMMONERSPELL	T
7140	Love Birds' Embrace	Target either 1 “Xayah, The Rebel” or 1 “Rakan, The Charmer” you control; If you targeted “Xayah, The Rebel”: Add 1 “Rakan, The Charmer”  from your Deck to your Hand, If you targeted “Rakan, The Charmer”: Add 1“Xayah, The Rebel” from your Deck to your Hand. You may only use 1 “Love Bird's Embrace” per turn.	SUMMONERSPELL	T
7181	Patience of the Frostguard	Send 1 Iceborn-type Champion from your Deck to your Fountain and at the beginning of your next turn; Summon that card and it gains 1 HP and 1 AD/AP (adaptive) for each enemy Champion with Frost.	SUMMONERSPELL	T
7182	The Watchers' Return	Remove all Frost stacks from the field: Deal damage to each card equal to the number of Frost stacks removed from that card. Only Iceborn-type Champions may attack the turn you activate this card.	SUMMONERSPELL	T
7198	Tristana	Rocket Jump | 4 MANA | Range: 2\nCooldown: 4 Turns\nQuick: Target 1 Zone in range; Dash to the target Zone and damage to all enemy cards on or adjacent to the target Zone equal to this card’s AP + 1 and this card gains +1 Attack Speed until your next End Phase. If this card slays a Champion, fully refresh this ability’s cooldown.\nExplosive Charge | 2 MANA | Range: 1\nCooldown: 2 Turns\nWhen this card slays a card: Deal damage equal to half of this card’s AD to all cards beside the slain card.\nTarget an enemy card in range: Mark the target with  Explosive Charge. At the end of the turn, consume the mark and deal damage to the target and all cards beside the target equal to the number of times this card attacked the target this turn + 1. If this card attacks the target 4 times: consume the mark and deal the damage immediately and fully refresh Rocket Jump’s cooldown.\nBuster Shot | 5 MANA\nCooldown: 3 Turns\nQuick: Target an enemy champion in range: deal damage to the target equal to this card’s AP + 1 and if this damage does not slay the target: Displace it. 	CHAMPION	T
7211	Maw of Malmortius	Lifeline\nCooldown: Once while this card is on the field\nUNIQUE: If the equipped Champion would be reduced to 2 or less HP by an ability: Shield the equipped Champion for 2 HP for up to 2 Phases. During the next turn the equipped Champion gains 1 AD, and 2 Life Steal.	ITEM	T
7253	Vi	Vault Breaker | 2 MANA | Range: 1\nTarget 1 Column in range: Dash to the target column and deal damage to the first card in range in the target column equal to half this card’s AD. You may Channel this ability for 1 Phase and if you do: Double this ability’s range and damage.\nCooldown: Charge - Each Turn | Max 2\nQuick:Consume 1 Charge: This card’s next attack deals damage equal to this card’s AD + 1 to all cards in range in the target’s column. If this ability is used during the Battle Phase: This card may attack again this turn.\nAssault and Battery | 5 MANA | Range: 2\nCooldown: Once while this card is on the Field\nQuick: Target 1 enemy Champion in range and this card is immune to all Crowd Contol effects for 1 Phase: Dash to the target, Displace any cards infront of or beside the target, deal damage to the target equal to 1.5 x this card’s AD and Knock Up the target for 1 Phase.	CHAMPION	T
7262	Ionian Boots of Lucidity	UNIQUE: +1 Cooldown Reduction\nEnhanced  Movement\nUNIQUE: The equipped Champion gains 1 Reposition Range.\n\nYou may only equip 1 “Boots”, “Greaves” or “Shoes” item to a Champion.	ITEM	T
7273	The Black Mist's Toll	When an Undead Champion you control Slays an enemy Champion: Target that slain Champion in the Fountain; at the end of the turn, Summon the target, from the Fountain, to your side of the field, and if this is not possible: Banish the target instead.	SUMMONERSPELL	T
7359	Anivia	Rebirth\nCooldown: Once per Game\nIf this card is slain: Place 1 Eggnivia Token in this card’s Zone with HP equal to this card’s max HP. At the end of the turn, if the Eggnivia Token is still on the field: Remove the token and Summon 1 “Anivia, The Cryophoenix” from the Fountain, in the Token’s Zone.\nFlash Frost | 3 MANA | Range: 3\nCooldown: 2 Turns\nQuick: Target 2 adjacent Zones in range; At the end of the Phase deal damage to any units in the target Zones equal to this cards AP - 1, Disable the affected units for 1 Phase and apply 1 Frost Stack until the end of the Turn. Once per turn, when this card attacks a card with Frost: deal bonus damage equal to this card’s AP.  \nGlacial Storm | 2 MANA | Range: 2\nCooldown: Each Turn\nON: Target 3 adjacent Zones in range; Deal damage to those Zones equal to half this card’s AP, Slow affected for 1 Phase and pay this card’s Mana cost for each Phase this ability is Toggled On (max 3). If this ability damages a card twice: Apply 1 Frost Stack to that card.\nOFF: Quick: Immediately deal damage equal to half this card’s AP + 1 to the target Zones. being Silenced or Disabled also Toggles this ability Off.	CHAMPION	T
7420	Undead Artificier	During this turn, if you summon a Champion from the Fountain: Add 1 Item card from your Fountain to your Hand, and if the summoned Champion was an Undead-type Champion: You may send 1 Undead-type Champion from your Deck to the Fountain. You may only activate 1 ”Undead Artificier” per Turn.	SUMMONERSPELL	T
7433	Golden Kraken	Flip a coin; If the result is Heads: Draw 2 cards, but if the result is Tails: Your opponent Draws 1 card.	SUMMONERSPELL	T
7435	Locket of the Iron Solari	Cooldown: 3 Turns\nUNIQUE: Active: Quick: Shield all adjacent allied Champions for 2 HP for 1 Phase.	ITEM	T
7438	Kindred	Dance of Arrows | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Dash to an adjacent ally Zone; Deal damage equal to half this card’s AD to the first card in range in each column. This card gains +1 Attack Speed this turn.\nWolf’s Frenzy | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 3 adjacent enemy Zones; For 2 Phases, at the beginning of each Phase deal damage to all cards in the target area equal to half this card’s AD + this card’s Attack Speed Stacks and deal 2 bonus damage to Neutral Monsters. Refresh Dance of Arrows cooldown.\nLamb’s Respite | 6 MANA\nCooldown: Once while this card is on the field\nQuick: Mark this card’s Zone and all adjacent Zones with Respite for 2 Phases. No card on a Zone with Respite can fall below 2 HP or be slain. At the end of this duration, Heal all cards in Zones marked with Respite for 3 HP. 	CHAMPION	T
7442	Barrier	Quick: Target 1 Champion you control: Shield that card for 4 HP for up to 2 Phases.	SUMMONERSPELL	T
7450	Hextech Gunblade	When the  equipped Champion deals damage to any unit: Heal the equipped Champion for half the damage dealt - 1.\nLightening Bolt | Range: 2\nCooldown: 3 Turns\nACTIVE: Quick: Target 1 enemy Champion in range; Deal damage equal to half the equipped Champion's AP and Slow the afected card for 1 Phase. (This ability's cooldown is shared with all “Hextech” Item cards equipped to the same Champion)	ITEM	T
7462	Heal	Quick: Target 2 adjacent allied Champions, Heal the targets for 3 HP and then mark them with Healed for the rest of the turn. If a target is marked with Healed: Heal the target for 1 HP instead.	SUMMONERSPELL	T
7464	The Ascended Hierophant	Send 1 Demigod-type Shurima Champion you control to the Fountain; Summon Human-type Shurima Champions from your deck whose total HP is equal to or less than that of the Champion sent to the Fountain.	SUMMONERSPELL	T
7476	Vel'Koz	Plasma Fission | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 column in range: Deal damage to the first card in range in the target column equal to this card’s AP and then deal this ability’s damage again to any card beside that card. If no card was damaged initially: deal this ability’s damage to all cards beside the Zone at max range in the target column.\nTectonic Disruption | 2 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Zone in range; Knock Up any card in that Zone and deal damage equal to half this card’s AP to any affected card.\nLife Form Disintegration Ray | 6 MANA | Range: 3\nCooldown: Once while this card is on the field\nChannel for up to 3 Phases and during each Phase of the Channel duration, target 1 Column in range and deal damage to all cards in range in the target column equal to this card’s AP + 1.	CHAMPION	T
7511	Ravenous Hydra	Cleave\nUNIQUE: When the equipped Champion attacks  deal damage equal to half its AD - 2 (min 1) to any card on or beside the target's Zone.\nCrescent\nCooldown: 2 Turns\nUNIQUE: ACTIVE: The equipped Champion's next attack doubles the damage from Cleave and the equipped Champion may attack once more this turn	ITEM	T
7552	Singed	Poison Trail | 1 MANA\nON: At the beginning of each Phase, pay this card’s mana cost; Deal damage equal to half this card’s AP - 1 (min 1) to all adjacent enemy cards. Reactivate this ability to toggle it Off.\nFling | 3 MANA | Range: 2\nCooldown: 2 Turn\nTarget 1 enemy Champion in range: Reposition that card to an adjacent enemy Zone and deal damage equal to half the target’s HP -2 (min 1).\nInsanity Potion | 5 MANA\nCooldown: 3 Turns\nQuick: This card gains 2 AP and +2 Resistance for the rest of the turn. During this ability’s duration Heal this card for 1 HP at the beginning of each Phase and this card’s Reposition range is 2.	CHAMPION	T
7564	Trifarian Armory	Target 1 Noxus Champion you control: Equip this card to the target (this card is not treated as an Item). The equipped card gains 1 HP and 2 AD. Whenever the equipped Champion slays an enemy Champion: It gains 1AD.  If the equipped Champion would be slain or destroyed by a card effect: Send this card to the Fountain and the equipped Champion takes no damage from that attack, ability or effect. Only 1 “Trifarian Armory” may be equipped to a Champion.	SUMMONERSPELL	T
7582	Scryer's Bloom	Choose 1 card in your opponent's Hand; Look at that card and add it to the top or bottom of your opponent's Deck. You may only activate 1 “Scryer's Bloom” per turn.	SUMMONERSPELL	T
7616	Warwick	Eternal Hunger\nThis card’s attacks deal 1 bonus On Hit damage. If this card’s HP is less than half of its max HP: This card gains +1 Life Steal. If this card’s HP is equal to or less than 2: this card gains +2 Life Steal instead. This card gains +1 Attack Speed for each adjacent enemy champion with HP less than half their max HP.\nJaws of the Beast | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Champion in range; Dash to that Champion, deal damage equal to this card’s AD + half this card’s AP + half the target’s max HP - 3 (min 1) and Heal this card for half of the damage dealt. If the target is Repositioned in response to this ability: Dash to the target’s new location.\nInfinite Duress | 6 MANA | Range: 3\nCooldown: 4 Turns\nTarget 1 Column in range; Dash to the target column: Disable the the first card in range in the target column for 2 Phases and deal damage equal to this card’s AD + any On-Hit Effects each Phase.	CHAMPION	T
8976	Recall	At the end of the Phase, activate one of the following effects:\n• Add 1 Champion from your Deck to your Fountain.\n• Add 1 Champion from your Fountain to your Hand.	SUMMONERSPELL	T
7621	Udyr	Tiger Stance | 2 MANA\nCooldown: Each Turn\nCooldown: Each Turn\nQuick: This card has 2 Reposition range during this Phase and gains +1 Attack Speed. Gain 3 Tiger Stacks.\nOn: When this card attacks: Gain 1 Tiger Stack. If this card attacks while having 3 Tiger Stacks: Consume those stacks and that attack deals bonus damage equal to this card’s AD. When another ability is cast: Toggle Off this ability.\nBear Stance | 2 MANA\nCooldown: Each Turn\nQuick: This card has 2 Reposition range during this Phase.\nOn: If this card attacks a card it has not attacked this turn: Disable that target for 1 Phase. When another ability is cast: Toggle Off this ability.\nPhoenix Stance | 2 MANA | Range: 2\nCooldown: Each Turn\nQuick: This card has 2 Reposition range during this Phase. Deal damage to all adjacent enemy cards equal to this card’s AP. Gain 3 Phoenix Stacks.\nOn: When this card attacks: Gain 1 Phoenix Stack. If this card attacks while having 3 Phoenix Stacks: Consume those stacks and that attack deals damage equal to half this card’s AP to all enemy cards in range in the target’s column. When another ability is cast: Toggle Off this ability.	CHAMPION	T
7628	Runaan's Hurricane	This card may only be equipped to Champions with attack Range greater than 1\nWind's Fury\nUNIQUE: When the equipped Champion attacks: Deal damage to the first cards in range in the columns beside the attack target equal to half the equipped Champion's AD - 1 and apply On-Hit effects to any damaged card.	ITEM	T
7658	Riven	Runic Blade\nWhen this card uses an ability: it gains 1 stack of Runic Blade (max 3) until the end of the turn. When this card attacks, consume 1 stack and the attack deals 1 bonus damage.\nBroken Wings | Range: 1\nCooldown: 2 Turns\nQuick: Up to 3 times this turn, Target 1 Zone in range and Dash to the target Zone; dealing damage equal to half this card’s AD to all adjacent enemy cards. Knock Up cards damaged by the 3rd cast for 1 Phase. Once per turn, If this is activated during the Combat Phase, this card can attack once more this turn.\nBlade of the Exile | Range: 2\nCooldown: 3 Turns\nThis card gains AD equal to half this card’s AD for the the rest of this turn. At the end of the turn if this card is still on the fied deal damage equal to this card’s AD to all cards in range.	CHAMPION	T
7753	Hall Of The Illuminators	Add 1 Demacia Mage Champion from your Deck to your Hand. Quick: While this card is in your Fountain: You may Banish this card and 1 other Summoner Spell in your Fountain, except “Hall of the Illuminators” and target 1 non-Demacia Mage Champion your opponent controls, and if you do: Silence that champion for 2 Phases. You may only activate 1 effect of  “Hall of the Illuminators” per Turn.	SUMMONERSPELL	T
7764	Lucian	Lightslinger\nIf this card has used an ability this turn it may attack twice this turn. The second attack deals damage equal to half this card’s AD.\nRelentless Pursuit | 2 MANA \nCooldown: 3 Turns\nCooldown: 3 Turns\nQuick: Reposition this card. If this ability is used in the Battle Phase: This card may attack again this turn. Reduce this ability’s cooldown by 1 each time Lightslinger is activated.\nThe Culling | 5 MANA | Range 2\nCooldown: 3 Turns\nChannel for 3 Phases (This card may Reposition and activate abilities). Deal damage equal to this card’s AD to the 1st enemy card in range in this card’s column each Phase.	CHAMPION	T
7784	Ancient Darkin Influence	Apply the apropriate effects based on the Regions of Champions on the field:\nDemacia: Allied Darkin-type Champions cannot be affected by Summoner Spells this turn.\nNoxus: Allied Darkin-type Champions gain 1 AD for each Darkin-type Champion you control.\nFreljord: Allied Darkin-type Champions are immune to Crowd Control this turn.\nIonia: Summon 1 Darkin-type Champion from your Fountain.\nShurima: Send cards from the top of your oponent's Deck equal to the number of Darkin-type Champions you control.\nYou may only activate 1 “Ancient Darkin Influence” per Turn.	SUMMONERSPELL	T
7866	Runic Discovery	Reveal the top 3 cards in your deck and add 1 Summoner Spell from the revealed cards to your hand and shuffle the other revealed cards to your hand. If no card is added to the hand by this effect: Send the revealed cards to the Fountain instead. You may only activate 1 “Runic Discovery” per turn.	SUMMONERSPELL	T
7867	Enter The Void	If a card would be sent to the the Fountain: Banish that card instead. Once per turn, when a Void Champion is Banshed: You may Banish 1 Voidborn-type Champion from your Deck. If you have no Champions in your Fountain, once per turn, you may discard 1 card and if you do: Target 1 Banished Voidborn-type Champion and summon that target.	SUMMONERSPELL	T
7870	Olaf	Berserker Rage\nIf this card has been below half maximum HP this turn: This card gains +1 Attack Speed, and +1 Life Steal. If this card has been at 1 HP this Turn: This card gains +2 Attack Speed and +2 Life Steal instead.\nUndertow | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 column in range and flip a coin. If the result is Heads: Deal damage equal to this card’s AD to all units in range in the target column and mark the target column with Axe. At the end of the Turn, if this card is in the Fontline Zone of the column marked with Axe: Refresh this ability’s cooldown.\nRagnarok | 5 MANA \nCooldown: 3 Turns\nThis card gains +2 Resistance\nQuick: This card loses the Resistance Stacks gained by this effect and gains 3 AD instead and is Immune to all Crowd Control until the end of this Turn. 	CHAMPION	T
7917	Demacian Hope	Quick: While your opponent controls more Champions than you do, activate one of the following efects:\n• If your opponent activates a Champion ability: Discard 1 card; Negate that ability.\n• If this card is in your Fountain: You may banish this card and 1 other Summoner Spell from your Fountain: Add 1 Demacia Champion from your Fountain to your Hand.\nYou may only activate 1 effect of “Demacian Hope” per turn.	SUMMONERSPELL	T
7927	Liandry's Torment	Madness\nUNIQUE:  During each turn, when this card damages a Champion: the equipped champion deals 1 bonus to that Champion\nTorment\nUNIQUE: When the equipped card damages a card with an ability: mark that card with Torment for 2 Phases. Champions marked with Torment take damage equal to half of their HP - 4 (min 1) at the end of each Phase. Double this damage if the if the Champion is Slowed or Disabled	ITEM	T
7933	The Hidden Lands	When this card is activated: Add 1 Bandle City Champion from your Deck to your Hand. Once per turn, if you control 2 or more Yordle-type Champions , you may target 1 Champion on the field; all Allied Yordle-type Champions are treated as Champions of the target's Region. Once while this card is on the field, target 1 Field of Justice Summoner Spell on the field or send 1 Field of Justice Summoner Spell from your Deck to the Fountain; This card's name is treated as that card's name and gains that card's effects.	SUMMONERSPELL	T
9003	The College of Techmaturgy	Discard 1 card and Banish Zaun Champions from the Fountain (max 3): Add Banished Item cards to your hand equal to the number of cards banished by this card. Only 1 “The College of Techmaturgy” may be activated per turn.	SUMMONERSPELL	T
9017	Spell Thief	Quick: If you control an Aspect or Celestial-type Champion: Target 1 Summoner Spell in your opponent's Fountain which was used this turn and activate its effect.	SUMMONERSPELL	T
7939	Viktor	Siphon Power | 2 MANA | Range: 2\nCooldown: Each Turn\nQuick: Target 1 enemy unit in range and Shield this card by half your Summoner Level - 2 (min 2); Deal damage to the target equal to half this card’s AP - 1 and this card’s next attack deals bonus damage equal to half this card’s AP.\nDeath Ray | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 column or row in range: Deal damage to all units in range in the target column or row equal to this card’s AP, and at the end of the Phase deal damage equal to half this card’s AP to the affected Zones.\nChaos Storm | 6 MANA | Range: 2\nCooldown: 4 Turns\nTarget 2 adjacent Zones in range; For the rest of the turn at the beginning of each Phase of the ability duration, deal damage equal to this card’s AP - 1 to the target Zones and you may shift the target area by 1 Row or Column each turn.	CHAMPION	T
7982	The City of Progress	Whenever an Item card(s) would be sent to the Fountain: You may target 1 Piltover Champion you control; Equip the Item card(s) to that target (if possible). Once per turn: Banish 1 Item card in your Fountain: Add 1 Item card from your Deck to your Hand.	SUMMONERSPELL	T
7992	Elder Drake	“Elder Drake” is spawned in a Neutral Objective Zone on Turn 10 or after the Slaying of a “Drake” card in the Zone at Turn 10 and every 4 turns after it is slain. This card is immune to all forms of crowd control and If it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; this card attacks the last card that damaged it. This card deals 1 Bonus Damage for every 2 Dragon Slayer stacks of the card attacked and takes 1 reduced damage of every 2 Dragon Slayer stacks of the  card which attacks it.\nAspect of the Dragon\nFor 2 Turns: Allied Champions on the field when this card is slain gain double the effect of each Dragon Slayer stack and if they damage an enemy Champion, until the end of the turn; Deal 1 Damage to that Champion at the end of each Phase.	NEUTRALMONSTER	T
8007	Spellbinder	UNIQUE: Each time a ability is cast this card gains 1 Charge stack up to 10.\nCooldown: 3 Turns\nUNIQUE: Active: Consume all the Charge stacks; the equipped Champion gains 1 Reposition Range and also gains AP equal to half of the Charge stacks on this card - 2 (min 1) for 1 Phase.	ITEM	T
8031	Vastayan Territory	Once per turn, If you do not control a Vastaya-type Champion; You may discard a card, and if you do: Add 1 Vastaya-type Champion from your deck to your hand. Quick: Once per turn, Target 1 Vastaya-type Champion you control; Shuffle the target into your Deck and summon another Vastaya-type Champion with a different name to the target's Zone.	SUMMONERSPELL	T
8034	Shaco	Deceive | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Zone in range, Dash to the target and this card becomes Invisible for 1 Phase. This card’s next attack this turn deals bonus damage equal to half this card’s AD + half this card’s AP and Slows that card for 1 Phase.\nJack in the Box | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 Zone in range; Place 1 Box Token with 1 HP  in that Zone, which becomes Invisible for up to 2 Turns. After 1 Phase: Disable any enemy Champion on or beside the  Box Token is for 1 Phase and Deal damage to any of those cards (you chose) equal to half this card’s AP + 1 and remove the token.\nHallucinate | 5 MANA\nCooldown: 3 Turns\nQuick: This card becomes Untargetable for the rest of the Phase; At the beginning of the next Phase place 1 Hallucination Token in an adjacent Zone with this card’s HP and AD and you may Reposition either the Hallucination Token or this card. If this card is targeted by an ability or attack: Flip a coin; If the result is Heads: The attack or ability targets the Clone Token instead. Remove the Clone Token at the end of the Turn. When the token is removed: Place 1 Box Token in its Zone	CHAMPION	T
8036	Mordekaiser	Iron Man\nWhen this card uses an ability: Shield this card for half of the damage dealt for up to 2 Phases. This card’s attacks deal 1 bonus damage but every 3rd attack deals bonus damage equal to half this card’s AP instead.\nHarvester of Sorrow | Range: 1\nCooldown: 2 Turns\nTarget 1 allied card in range; both cards gain 1 Reposition range for 1 Phase. Deal damage to any enemy card adjacent to this card or the target equal to half of this card’s AP - 1. At the beginning of the next Phase: Deal damage equal to this card’s AP to any enemy card adjacent to this card or the target and Heal this card and the target by 2 x the number of Champions damaged by this ability.\nChildren of the Grave | Range: 2Cooldown: 3 Turns\nIf this card attacks a Dragon: The Dragon is Cursed until the end of the Turn. Target 1 enemy card in range; The target is Cursed unitl the end of the Turn. During each Phase, deal damage to the target equal to half this card’s AP - 1 (min 1). If a Cursed card is slain: Summon that card to your side of the field as a Pet which may only attack.	CHAMPION	T
8044	Fizz	Urchin Strike | 2 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 card in range; Dash to that darget and deal damage equal to this card’s AD + half this card’s AP and apply On-Hit effects.\nPlayful Trickster | 3 MANA | Range: 1\nCooldown: 2 Turns\nQuick: This card become Untargetable for 1 Phase. At the beginning of the next Phase: This card may Dash to any Zone in range and deal damage equal to this card’s AP - 1 to all adjacent enemy cards. \nChum the Waters | 5 MANA | Range: 3\nCooldown: 3 Turns\nQuick: Target 1 column in range; At the end of the next Phase, deal damage to the first Champion in range in the target colum equal to this card’s AP + the number of Rows between this card and the Target and Knock Up any affected cards. 	CHAMPION	T
8053	Varus	Living VengeanceIf this card slays an enemy card during the Battle Phase, it gains +1 Attack Speed until the End Phase. This card’s attacks deal bonus damage equal to half its AP (min 1) and apply 1 Blight Stack until the end of the turn (On Hit). When Piercing Arrow damages a Champion: Deal damage to that champion equal to half this card’s AP (min 1) x the number of Blight Stacks on that card.\nPeircing Arrow | 4 MANA | Range: 2\nCooldown: 3 Turns\nTarget 1 Column in range and flip a coin; If the Result is Heads: Deal damage equal to this card’s AD + 1 to all champions in the target Column which are in range. You may Channel for 1 Phase (this card may Reposition) and if you do this ability gains 1 Range and its damage is doubled. Reduce this ability’s cooldown by 1 if it damages a Champion with Blight.\nChain of Corruption | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 enemy card and flip a coin; If the result is Heads, deal damage equal to this card’s AP + 1 and Root that card for 1 Phase. At the beginning of the next Phase, Root all cards adjacent to the target for 1 Phase. Apply 1 Blight Stack to enemies Rooted by this ability until the end of the turn.\n	CHAMPION	T
9037	Preparation	Discard 1 card; Add 1 Marksman Champion from your Deck to your Hand, and if the card is a Demacia Champion: You may summon that card instead. Quick: While this card is in the Fountain, You may Banish this card and 1 other Summoner Spell in your Fountain, except “Preparation” and target 1 Demacia Champion you control and if you do: At the beginning of the next turn, Equip 1 Item card from your Deck to the target. You may only activate 1 effect of “Preparation” per turn.	SUMMONERSPELL	T
8076	Corki	The Package\nStatic Cooldown: 4 Turns\nStatic Cooldown: 4 Turns\nThis card gains The Package.During the Turn this card gains The Package it gains 1 Reposition range\nValkyrie | 3 MANA | Range: 2\nCooldown: 2 Turns\nDeal Damage to all adjacent enemy champion equal to half this card’s AD + this card’s AP then Reposition this card to an allied zone in range then deal this ability’s damage again, to all adjacent enemy champions.\nIf this card has the Package: This ability gains 1 Range and may be cast twice this turn. The first time it is cast: Consume the Package and Displace the affected enemy cards instead.\nMissile Barrage | 1 MANA | Range: 2\nCooldown: Charge: 2 Phases | Max: 7\nConsume 1 Charge an target an enemy champion in range and flip a coin; If the result is Heads: Deal damage to the target equal to this card’s AD + half this card’s AP. Every 3rd  cast of this ability deals double damage. 	CHAMPION	T
8085	The Unforgiving Land	At the beginning of each turn: Flip a coin; Each Non-Freljord Champion on the field gains 1 Frost Stack and if the result is Heads: Deal 1 damage to every Champion with at least 2 Stacks of Frost. When Frost is added to a Champion with 3 Stacks: Consume those stacks and Disable the Champion for 1 Phase instead. At the end of the turn, if you control no Freljord Champions: Deal 1 damage to all allied Champions.	SUMMONERSPELL	T
8090	Shen	Spirit’s Refuge\nCooldown: 3 Turns\nQuick: Your oponnent cannot target this card or any card adjacent to this card as a target for an attack during this Phase.\nShadow Dash | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 zone, Dash to the target and flip a coin; If the result is Heads: Deal 1 damage to any card in the target Zone and Taunt that card for 1 Phase.\nStand United | Range: Global\nCooldown: Once while this card is on the field\nQuick: Target 1 allied champion and Channel for 1 Phase; During the Channel, Shield the target for HP equal to half this card’s HP + this card’s AP. At the beginning of the next Phase, Reposition this card to the a Zone adjacent to the target. This ability may be activated from the Fountain once per Game.	CHAMPION	T
8101	Purification	Target all Undead Champions and Champions which were summoned from the Fountain; Discard 1 card and deal damage to the targets equal to the number of targets + 2.	SUMMONERSPELL	T
8111	Xin Zhao	Determination\nEvery third attack this card makes deals bonus damage equal to half this card’s AD, Heals this card for half this card’s AD and Knocks Up the target.\nWind Becomes Lightning | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy Zone in range and flip a coin; Deal damage equal to half this card’s AD - 1(min 1) to all adjacent enemy cards . If the Result is Heads: damage any card in the target Zone for damage equal to this card’s AD.\nCrescent Guard | 6 MANA\nCooldown: Once while this card is on the field\nWhen this card attacks a champion: Mark the target as Challenged. Only 1 champion may be marked at a time.\nQuick: Displace all adjacent enemy cards, except the card marked as Challenged. For the rest of the turn, this card can only be damaged by adjacent enemy champions.	CHAMPION	T
8170	Graves	New Destiny\nThis card’s attacks deal damage equal to this card’s AD - 1 and damage the 1st  unit in the attack target’s column and the units beside that card. If this card’s attack damages a Pet: Displace it.\nQuick Draw | 3 MANA\nCooldown: 4 Turns\nQuick: Reposition this card and gain +1 Resistance until the next turn. If this ability is used after this card attacks: This card my attack again this turn. Reduce this ability’s cooldown by 1 for each card damaged by this card’s attacks.\nCollateral Damage | 5 Mana | Range: 3\nCooldown: 3 Turns\nTarget 1 enemy zone, Reposition this card to the Zone behind it’s curent position (if possible) and flip a coin; if the Result is Heads, deal damage equal to 2 x this card’s AD to all cards in range, in the target Zone’s column.	CHAMPION	T
8343	Forest of the God-Willow	At the beginning of each turn, Place 1 Forest Token on an allied Zone with 1 HP and 1 AD. Forest Tokens are treated as Plant-type Champions for the effects of Summoner Spells and Champion abilities. You may remove 3 Forest Tokens from the field to summon 1 Plant, Beast or Spirit-type Champion from the Fountain. Plant, Beast and Spirit-type Champions are unaffected by Crowd Control during the Combat Phase.	SUMMONERSPELL	T
8347	Morgana	Dark Binding | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy column in range; At the end of the phase, deal damage equal to this card’s AP to the first card in the target column and Ground the target for 2 Phases.\nBlack Shield | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 allied Champion in range; Shield the target for HP equal to this card’s AP  for up to 2 Phases and during the shield duration the target is immune to Crowd Control.\nSoul Shackles | 5 MANA | Range: 1\nCooldown: 3 Turns\nQuick: Target all cards in range and deal damage equal to this card’s AP to all targets. At the end of the Phase, deal this ability’s damage again to any target still in range and Disable those targets for 1 Phase.	CHAMPION	T
8364	Chitinous Armor	Quick: Target 1 Void Champion you control and equip this card to the target (This card is not treated as an Item). The equipped Champions gains 2 HP and +1 Resistance. When the equipped card slays a card: The equipped card gains 1 HP and 1 AD/AP (adaptive). If the equipped card would be slain: Banish this card instead and leave the equipped card with 2 HP.	SUMMONERSPELL	T
8377	Benevolence of the Poro King	Discard 1 card for every allied Champion marked with Frost (min 1 card); Draw 1 card for each enemy Champion marked with Frost	SUMMONERSPELL	T
8423	Nunu	Consume | 2 MANA | Range: 1\nCooldown: Each Turn\nQuick: Target 1 Neutral Monster or Pet in range; Deal damage to the target equal to half of this card’s HP and Heal this card for this card’s AP + 2 HP.\nBlood Boil | 3 MANA | Range: 1\nCooldown: Cooldown: 3 Turns\nQuick: This card Channels for 2 Phases; During the Channel: Slow all enemy card’s in range for 2 Phases. At the end of the Channel deal damage equal to 2 x this card’s AP + 1 to all enemy cards in range. If this the Channel is Interrupted: deal damage equal to this card’s AP instead.	CHAMPION	T
8433	Journey to the Capital	Send 1 Shurima Champion you control to the Fountain: Draw 2 cards.	SUMMONERSPELL	T
8453	The Twisted Treeline	Send 1 Undead-type Champion from your Deck to the Fountain; Undead-type Champions gain +1 Attack Speed until the nd pf the turn. but only Undead-type Champions may attack this turn. While this card is in the Fountain, you may Banish this card and if you do: Summon 1 Undead-type Champion from your Fountain. You may only activate 1 effect of “The Twisted Treeline” per turn.	SUMMONERSPELL	T
9065	Diana	Crescent Strike | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy Zone in range and flip a coin; if the Result is Heads: Deal damage to that Zone and any zone beside and infront of that Zone in the column to the right of that Zone equal to this card’s AP - 1 and mark affected cards with Moonlight for 2 Phases.\nPale Cascade | 3 MANA\nCooldown: 2 Turns\nQuick: Target 1 enemy card in range; Dash to the target and deal damage to the Target equal to this card’s AP. If the Target was marked with Moonlight refresh this ability’s coldown and refund its mana cost.	CHAMPION	T
8462	Fiora	Duelist’s Dance\nAt the beginning of each turn, mark all adjacent enemy champions with Vital until the end of the turn. If this card attacks a marked champion: Flip a coin; If the result is Heads: Deal bonus damage to that champion equal to half of the target’s max HP - 2 (min 1) ignoring Resistance Stacks, Heal this card for half this card’s AD, consume the Vital mark and this card can attack again this turn. Quick: This card may Reposition once again this turn.\nRiposte | 4 MANA\nCooldown: 3 Turns\nQuick: This card becomes immune to all damage and Crowd Control for 1 Phase, but cannot Reposition or declare attacks. If this card would be affected by a Disarm, Taunt, Charm or Displacement from an enemy card during this ability duration, Disarm that card for 1 Phase instead.\nGrand Challenge | 5 MANA | Range: 1\nCooldown: 3 Turns\nTarget 1 enemy Champion in range and mark them with a Vital. This turn, if a Vital mark on the target is consumed: Deal 1 additional damage to the target and if the target is slain this turn, heal all allied champions adjacent to the target for health equal to half this card’s AD x number of Vitals consumed this Turn.	CHAMPION	T
8504	Gargoyles Stoneplate	Stone Skin\nUNIQUE: The equipped Champion gains +1 Resistance for each adjacent enemy Champion.\nMetallicize\nUNIQUE: Active: Quick: For 2 Phases, double the equipped Champion's HP.	ITEM	T
8570	Frozen Heart	Aura\nAdjacent enemy Champions lose 1 Attack Speed stack	ITEM	T
8626	Xayah	Clean Cuts\nWhen this card attacks, if this card or “Rakan” has used an ability earlier this turn; the attack also deals damage equal to half this card’s AD to any card behind the target. Mark the target’s column with Feather until the end of the turn.\nBlade Caller | 3 MANA\nCooldown: 2 Turns\nQuick: Root and deal damage equal to half this card’s AD + number of Feathers on the field to all units in columns marked with Feather and remove all Feathers from the field.\nFeather Storm | 6 MANA\nCooldown: Once while this card is on the field\nQuick: This card becomes Untargetable for 1 Phase; Deal damage equal to this card’s AD to all units in range and mark each affected column with Feather.	CHAMPION	T
8663	Iceborn Gauntlet	Spellblade\nCooldown: Each Turn\nWhen the equipped Champion activates an effect: The equipped Champion's next attack deals bonus On-Hit damage equal to it's original AD. Abilities which apply On Hit effects apply Spellblade's damage as well.\nIcy Zone\nActivating Spellblade Slows all champions on or beside the attack target's Zone for 1 Phase.	ITEM	T
8665	Karthus	Death Defied\nWhen this card is slain: This card becomes untargetable for 2 Phases, afterwhich it is sent to the Fountain; dealing damage to adjacent enemy units equal to half of this card’s AP each Phase. During this time, this card may not Reposition or attack, but may activate 1 available ability, at no cost.\nLay Waste | 2 MANA | Range: 2\nCooldown: Each Turn\nUp to 2 times per turn, target 2 adjacent enemy Zones: Deal damage to the target Zones equal to half of this card’s AP. If this ability only damages to 1 unit: This ability deals double damage.\nRequiem | 7 MANA | Range: Global\nCooldown:Cooldown: Once while this card is on the field\nQuick: Channel for 1 Phase; At the beginning of the next Phase deal damage to all enemy champions equal to this card’s AP + 1. 	CHAMPION	T
8696	Abyssal Mask	Eternity\nUNIQUE: When the equipped Champion is damaged: Restore 1 Mana. When the equipped Champion uses mana as a cost for an ability: Heal the equipped Champion for 1 HP.\nAura\nUNIQUE: Adjacent enemy Champions take 1 bonus damage from allied card's abilities.	ITEM	T
8751	Smite	Quick: Target 1 Pet or Neutral Monster; Deal 5 damage to the target.	SUMMONERSPELL	T
8764	The Bloodharbor Tavern	Whenever you would flip a coin or roll a die for a Bilgewater Champion's ability or a Summoner Spell's effect, except “The Bloodharbor Tavern”: You may do a second coin flip or dice roll and if you do: Use the second result instead. Once per turn, if you draw a card as a result of a card effect you may flip a coin; If the result is Heads: Draw another card. At the end of the turn, if you control no Bilgewater Champions, flip a coin; If the result is Heads:you may summon 1 Bilgewater Champion from your Hand or Deck, but if the result is Tails: Destroy this card.	SUMMONERSPELL	T
8801	Ocean Drake	This card is immune to all forms of crowd control and If it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; this card attacks the last card that damaged it. When this card attacks a card, Slow the target for 1 Phase\nDragon Slayer\nGain 1 Dragon Slayer Stack and for the rest of the duel, At the end of each Phase Heal all allied cards for 1 HP (This effect can stack with other “Ocean Drake” kills).	NEUTRALMONSTER	T
8828	Vladimir	Crimson Pact\nThis card gains AP equal to half its bonus HP and HP equal to half its bonus AP.\nTransfusion | 1 HP | Range: 2\nCooldown: 2 Turns\nQuick: This card becomes Untargetable for 2 Phases during which this card may Reposition; Each Phase of this duration, deal damage equal to half this card’s max HP - 1 to adjacent cards, and Heal this card for half the damage dealt.\nSanguine Pool | 2 HP\nCooldown: 2 Turns\nQuick: This card becomes Untargetable for 2 Phases during which this card may Reposition; Each Phase of this duration, deal damage equal to half this card’s max HP - 1 to adjacent cards, and Heal this card for half the damage dealt.\nHemoplague | Range: 2\nCooldown: 3 Turns\nQuick: Target 2 enemy Zones; For the rest of the turn, all damage dealt to the cards in that Zone is increased by 1. At the end of the turn deal damage to those cards equal to this card’s AP and Heal this card by 2 HP for every Champion damaged by this effect.	CHAMPION	T
8855	Wit's End	UNIQUE:  When the equipped Champion attacks: Deal 1 bonus On-Hit damage, reduce the target's Resistance Stacks by 1 and the equipped card gains +1 Resistance until the end of the turn.	ITEM	T
8908	Sunfire Cape	Immolate\nUNIQUE: At the end of each Phase, deal 1 damage to all adjacent enemy units.	ITEM	T
8926	Charge of the Minions	Summon 1 Minion Token to  an allied Zone. Minion Tokens have 2 HP, 1 AD and 2 Range, but only take 1 damage from attacks and abilities. Minion Tokens can only attack cards in their column and must attack. If no cards are available as attack targets, Minion Tokens will attack Structures.	SUMMONERSPELL	T
8955	Lich Bane	Spellblade\nCooldown: Each Turn\nWhen the equipped Champion activates an effect: The equipped Champion's next attack deals bonus On-Hit damage equal to half the equipped Champion's AP. Abilities which apply On Hit effects apply Spellblade's damage as well.	ITEM	T
8967	Hecarim	Warpath\nThis card gains AD equal to its Reposition range - 1.\nDevastating Charge | 3 MANA | Range: 1\nCooldown: 2 Turns\nQuick: This card gains 1 Reposition range for 2 Phases. For this duration this card’s next attack gains 1 range, deals bonus damage equal to half this card’s AD - 1 and this card Dashes to the target. Reposition the target to another Zone in its Column.\nUnslaught of Shadows | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 enemy Zone in range and Dash to that Zone; Deal damage equal to this card’s AD to all units in the target Zone’s column and Disable all cards on or beside the target Zone.	CHAMPION	T
9097	Evelynn	Demon Shade\nAt the beginning of each Turn: This card enters Demon Shade until it declares an attack. While in Demon Shade: Heal this card for half this card’s AP - 1 at the beginning of each Phase. This card’s attacks deal damage equal to half this card’s AP. After Summoner Level 6, this card is Camouflaged while in Demon Shade\nAllure | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Champion or Neutral Monster in range and mark it with Allure for 2 Phases. This card gains 1 Range when attacking cards marked with Allure and the attack deals damage equal to this card’s AP + 2, Charms the target and reduces the target’s Resistance by 2 for 2 Phases.\nLast Caress | 5 MANA Range: 2\nCooldown: 3 Turns\nQuick: Deal damage equal to this card’s AP to all adjacent enemy cards and Dash to an adjacent Backline Zone. If a card’s HP is below half its max HP: this ability deals damage equal to 1.5 x this card’s AP instead.	CHAMPION	T
9125	Dormant Power	While you have 3 or less cards in your hand; Banish up to 2 Void Champions from your Fountain and draw 1 card for each card banish by this effect. If you have no Champions in your Fountain: Target 1 Banished Voidborn-type Champion; Summon the target, and if all your Banished Champions are Void Champions: the target gains 2 AD/AP (adaptive). At the end of the turn: Banish all the cards in your hand.	SUMMONERSPELL	T
9161	Within These Petricite Walls	When this card is activated: Add 1 Demacia Champion from your Deck to your Hand. When your opponent activates a Summoner Spell: You may send 1 Summoner Spell from your hand to the Fountain and if you do: Negate your opponent's Summoner Spell effect. While you have no Summoner Spells in your Fountain: Each Demacia Champion you control gains HP and AD/AP(adaptive) equal to half the number of Summoner Spells in your Banish Zone + 1.	SUMMONERSPELL	T
9183	Aurelion Sol	Centre of the Universe | Range: 2\nAt the beginning and end of each players’ turn deal damage equal to this card’s AP - 2 to all Champions the maximum range.\nStarsurge | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 zone at maximum range: Deal damage to all cards on or beside the target Zone equal to this card’s AP - 1 and Disable affected cards for 2 Phases.\nVoice of Light | 6 MANA | Range: 3\nCooldown: 3 Turns\nQuick: Deal damage to all cards in range in this card’s column equal to this card’s AP and if a card is within the range of Centre of the Universe, Disable that card for 1 Phase and Reposition it to the Zone behind that card.	CHAMPION	T
9187	Incognium Runeterra	Discard 1 card; Activate one of the following effects:\n• Add 1 Champion from your Fountain to your Hand.\n• Add 1 Piltover Champion from your Deck to your Hand\n• Add 1 Banished Zaun Champion to your Hand\nYou may only activate 1 “Incognium Runeterra” per turn.	SUMMONERSPELL	T
9217	Seraph's Embrace	Haste\nUNIQUE: + 1 Cooldown Reduction\nAwe | Half Current Mana - 3 (min 1)\nUNIQUE: Reduce the equipped Champion's mana costs by 1 and gain 1 Awe stack (max 5). The equipped Champion gains AP equal to half of your total mana - 5 (min 1).\nACTIVE: Quick: Shield the equipped Champion for HP equal to half your total mana - 3(min 1). This may only be used while this card has 5 Awe stacks.	ITEM	T
9293	Adaptive Helm	UNIQUE: If the equipped Champion is damaged by an ability: For the rest of the turn, the equipped Champion takes half the damage from that ability.	ITEM	T
9302	Muramana	Awe | Half Current Mana - 3 (min 1)\nUNIQUE: Reduce the equipped Champion's mana costs by 1 and gain 1 Awe stack (max 5). The equipped Champion gains AD equal to half of your total mana - 5 (min 1).\nShock\nUNIQUE: When the equipped Champion attacks a Champion or uses an ability which only affects 1 Champion: deal bonus On-Hit against Champions equal to half of your total mana - 5 (min 1).	ITEM	T
9306	The Visionary's Path	Target 1 Noxus Mage Champion you control: Equip this card to the target (this card is not treated as an Item). The equipped Champion gains 2 AP. Whenever the equipped Champion slays an enemy Champion: You may discard 1 card from your opponent's hand. If the equipped Champion would be slain or destroyed by a card effect: Send this card to the Fountain and the equipped Champion takes no damage from that attack, ability or effect. Only 1 “The Visionary's Path” may be equipped to a Champion.	SUMMONERSPELL	T
9309	Redemption	Cooldown: 3 Turns\nUNIQUE: Quick:  Target 2 adjacent Zones; At the end of the Phase: Heal allied Champions in the target Zones by 2 and deal 1 Damage to enemy Champions in the target Zones. You may Banish this card in the Fountain to activate this effect.	ITEM	T
9319	Zoe	Paddle Star | 3 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 Zone in range; Deal damage to the target zone equal to half this card’s AP. If the Target Zone did not contain an enemy unit: Target a column in range and deal damage equal to the first card in range equal to this card’s AP + the number of rows between the target zone and that card.\nSleepy Trouble Bubble | 4 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 enemy Zone in range: At the beginning of the next Phase, Sleep any enemy card on the Target Zone for 2 Phases. If the Sleep is interrupted: Deal damage to that card equal to half this card’s AP.\nPortal Jump | 2 MANA | Range: 2 \nCooldown: 2 Turns\nQuick: Target a Zone in range; Dash to the target Zone. At the end of this Phase return this card to its postion when this abilty was cast.	CHAMPION	T
9376	Tryndamere	Battle Fury\nWhen this card attacks: Gain 1 Stack of Fury (max 4) for 2 Turns (refeshing with each Stack). If the attack is a Critical Strike: gain 2 stacks of Fury instead. Each 2 stacks of Fury is worth 1 stack of Critical Strike Chance. Once per turn: You may consume all Fury stacks to Heal this card for the number of Fury stacks consumed. This card may Reposition up to two times each turn.\nCooldown: 3 Turns\nQuick: For the next 2 Phases: This card cannot fall below 1 HP by any means.	CHAMPION	T
9511	Zyra	Garden of Thorns\nAt the beginning of each turn roll a die: Place 1 Seed Token in the corresponding Zone on either side of the field. If an enemy card is on a Zone with a Seed Token: Remove the Seed Token.\nDeadly Spines / Grasping Roots | 2 MANA | Range: 2\nCooldown: Each Turn\nQuick: Activate one of the following effects:\n• Target 2 adjacent Zones in a Row in range; Deal damage to all cards in the target Zones equal to half this card’s AP. All Seed Tokens become Plant Tokens with AD equal to half this card’s AP. Plant Tokens attack the first unit in their Column and then are removed at the end of the turn.\n• Target 1 Column in range; Root the first card in the range in the target column for 1 Phase, dealing damage equal to half this card’s AP - 1. All  Seed Tokens become Plant Tokens with AD equal to half this card’s AP - 1. Plant Tokens attack and Slow the first unit in their Column and then are removed at the end of the turn. \nStranglethorns | 5 MANA | Range: 2\nCooldown: 4 Turns\nQuick: Target 2 adjacent Columns in range; For 2 Phases, at the beginning of the Phase, deal damage equal to half this card’s AP + 1 to all cards in the target area. At the end of this duration: Knock Up all cards in the target area for 1 Phase.	CHAMPION	T
9515	Malzahar	Void Shift\nEach Turn: Negated the first attack, ability or effect that hits this card.\nMalefic Visions | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 enemy card in range and mark that card with Malefic Visions for 3 Phases. A card marked with Malefic Visions takes damage at the beginning of each phase equal to half this card’s AP - 1(min 1). If a card with Malefic Visions is Slain: All Adjacent enemy cards are marked with Malefic Visions for 3 Phases and this card gains 1 stack of Void Swarm. You may remove 2 stacks of Void Swarm from this card and if you do: Target 1 Banished Voidborn-type Champion and summon the target to the field.\nNether Grasp | 5 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 enemy Champion in range: Channel for up to 2 Phases and during the Channel duration Disable and deal damage to the target equal to half this card’s AP + half the target’s max HP - 3 (min 1) at the beginning of each Phase. 	CHAMPION	T
9563	Rammus	Spiked Shell\nWhen a champion attacks this card: Deal damage to that champion equal to half this cards Resistance stacks + 1.\nPowerball | 2 MANA\nCooldown: 2 Turns\nCooldown: 2 Turns\nThis card gains 1 Reposition range this turn and its next attack gains 1 range and Dashes to the target dealing bonus damage equal to this card’s AP to the target and all units beside it, Knocking Up the units affected. If this ability only affects one unit: Taunt that unit instead.\nTremors | 5 MANA | Range: 1\nCooldown: 3 Turns\nCooldown: 3 Turns\nQuick: For 3 Phases, deal damage equal to this card’s AP + 1 to all adjacent enemy cards and Slow affected cards for 1 Phase. Deal 1 damage to any enemy Tower in this card’s column.	CHAMPION	T
9567	Frolick of the Poros	Quick: Summon 2 Poro Tokens to your side of the field with 1 HP and 1 AD. When a Poro Token is destroyed: Add 1 Frost Stack to each adjacent enemy card.	SUMMONERSPELL	T
9573	Jarvan IV	Dragon Strike | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 1 Column in range; Deal damage to all champions in range in that column equal to this card’s AD, reducing their Resistance stacks by 1 for 1 Phase. If the target column is marked with Demacian Standard: Dash to that zone and Knock Up all damaged cards.\nDemacian Standard | 1 MANA | Range: 2\nCooldown: Each Turn\nSelect 1 Zone in range and flip a coin; If the result is Heads deal damage to any card in that Zone equal to half this card’s AD. Mark the target Zone with Demacian Standard for 1 Turn.\nAllies adjacent to Demacian Standard gain +1 Attack Speed.\nCataclysm | 5 MANA | Range 2\nCooldown: 3 Turns\nTarget 1 enemy Champion in range: Deal damage to the target equal to this card’s AD + 1 and for 2 Phases, the target may only be Repositioned by another card’s effects.	CHAMPION	T
9594	Ashe	The Frost Archer\nThis card’s attacks Slow the attack target for 1 Phase and add 1 stack of Frost to the target until the end of the turn. If this card attacks a target with Frost: That attack deals bonus damage equal to half of this card’s AD. This card’s Critical Strikes, double the Slow duration instead of applying Critical Strike damage.\nVolley |  3 MANA | Range: 2\nCooldown: Each Turn\nDeal damage equal to this card’s AD to the first card in range, in each column and Slow all cards hit by this ability for 2 Phases. Add 1 stack of Frost to all affected cards until the end of the turn.\nEnchanted Crystal Arrow | 5 MANA | Range: Global\nCooldown: 4 Turns\nTarget 1 enemy Column; This ability deals damage to the first card in the target column equal to this card’s AP + 2 and Disables the affected card, but this effect is delayed by 1 Phase for each Row between this card a Champion that would be affected. The Disable duration is equal to the delay.	CHAMPION	T
9638	Brand	Blaze\nWhen this card damages a card: Apply 1 Blaze Stack to that card for 2 Turns. Cards with Blaze Stacks take 1 damage at the end of the Turn. At the end of the turn if a card has 3 Blaze Stacks: Consume all Blaze Stacks on that card, dealing damage equal to that card’s max HP - 2 to that card and any units beside it.\nPillar of Flame | 3 MANA | Range: 2\nCooldown: 2 Turns\nTarget 2 adjacent zones in range: At the end of the Phase deal damage to any card in those zones equal to this card’s AP - 1.\nPyroclasm | 6 MANA | Range: 2\nCooldown: 4 Turns\nTarget 1 Champion in range: Deal damage to that card equal to this card’s AP to the target. At the beginning of the next Phase deal this ability’s damage to all enemy units adjacent to the target.	CHAMPION	T
9682	Kled	Skaarl, the Cowardly Lizard\nThis card has 2 HP values: The first value belongs to Kled and cannot be increased. The second belongs to Skaarl and all HP gained goes to Skaarl. While both have HP this card is Mounted and all damage is dealt to Skaarl. When Skaarl’s HP is reduced to 0, this card is Unmounted gaining 1 Range and + 1 Attack Speed. If this card damages a champion or slays a unit while Unmounted gain 1 Courage (max 3). At max Courage: Skaarl returns with half its max HP.\nBeartrap on a Rope / Pocket Pistol | Range 2\nCooldown: 2 Turns\nMounted: Target 1 column in range: Deal damage equal to this card’s AD to the first card in range in the target column and at the beginning of the next turn if that card is still in range: Reposition the target to the Frontline Zone of its Row.\nUnmounted: Deal damage to the first card in each column in range equal to this card’s AD and Reposition this card to the Backline Zone of its row (if possible). \nChaaaaaaaarge!!! | Cooldown: Once while this card is on the field\nTarget 1 enemy Zone in range; At the beginning of the next Phase: Dash to the target Zone, Knock Up the first card on or adjacent to the target Zone dealing damage equal to this card’s AD, and all allied cards may also Dash to that card.	CHAMPION	T
9684	Xerath	Arcanopulse | MANA 2 | Range: 1\nCooldown: 2 Turns\nDeal damage to all cards in range in this card’s column equal to this card’s AP - 1. You may Channel this ability for 1 Phase (this card may still Reposition) and if you do: This ability gains 1 Range.\nShocking Orb | Mana 3 | Range: 2\nCooldown: 2 Turns\nQuick: Target a column in range and flip a coin: If the result is Heads: Deal damage equal to half this card’s AP - 1 to the first card in range in the target column and Disable that target for 1 Phase.\nRite of the Arcane | 6 MANA | Range: 4\nCooldown: Once while this card is on the field\nChannel for 3 Phases: At the beginning of each Phase: Target 1 Zone in range; deal damage to that Zone equal to this card’s AP.	CHAMPION	T
9700	Medal of Honor	Target 1 Yordle-type Champion you control; Equip this card to the target (This card is not treated as a Item). Enemy champions with the same Region as the equipped Champion cannot target the equipped card for an attack or ability. If the equipped Champion damages a card with the same Region as itself: destroy this card. Only 1 “Medal of Honor” may be equipped to a Champion.	SUMMONERSPELL	T
9707	Shrine of the Rift Scuttler	Look at the top 3 cards in your Deck; Add one of the cards to your Hand and Shuffle the other two into your Deck. You cannot activate other Summoner Spells the turn you activate this card.	SUMMONERSPELL	T
9708	Crest of Insight	Target  1 Champion you control: Half that card's mana costs for the rest of the turn.	SUMMONERSPELL	T
9728	Rift Herald	“Rift Herald” is immune to all forms of crowd control and if it has not been attacked for 1 Turn it will go back to full HP. At the beginning and end of each turn; “Rift Herald” attacks the last card that damaged it. Once per turn, when a you or a Champion you control damages this card: Flip a Coin and if the result is Heads: this card takes 6 damage, but it’s next attack deals 2 bonus damage.\nEye of the Herald\nWhen a player slays this card: add this card to their hand. THis card may be summoned as a Pet with 10 HP within 3 turns of slaying this card and this card’s first attack on a structure deals damage equal to half this card’s HP - 2 (min 2).	NEUTRALMONSTER	T
9775	Ezreal	Mystic Shot | 2 MANA | Range: 2\nCooldown: Each Turn\nTarget 1 enemy Zone in range and flip a coin; If the result is Heads: Deal damage to the first card in range in the target’s column equal to half this card’s AD + half this card’s AP + 1 apply On-Hit effects and reduce this card’s other ability’s cooldowns by 1.\nArcane Shift | 3 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 Allied Zone in range and Dash to the target Zone; Deal damage to the first card in range in th’s card’s column equal to half this card’s AD.\nTrueshot Barrage | 5 MANA | Range: Global\nCooldown: 4 Turns\nQuick: Target 1 Column; at the end of the Phase, Deal damage equal to this card’s AD + this card’s AP + 1 to the first card in the target column and half that damage to any cards behind that card. 	CHAMPION	T
9779	Quinn & Valor	Harrier\nAt the beginning of each turn, if there is a card(s) on your enemy’s side of the field, roll a die until the result corresponds with an inhabited Zone; Mark any unit in that zone with Harrier. If Quinn attacks a marked unit that attack deals bonus damage equal to half this card’s AD and consume the mark.\nBlinding Assault | 3 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 card in range and flip a coin; If the result is Heads: deal damage equal to this card’s AD, Blind the target for 1 Phase and for that duration the target cannot target cards to activate abilities.\nBehind Enemy Lines | 2 MANA\nCooldown: Each Turn\nCooldown: Each Turn\nThis card gains 1 Reposition range until it attacks, activates an ability or is damaged. While this ability is active, if this card attacks or activates an ability: Deal damage to all adjacent enemy champions equal to half this card’s AD + 1. When this card is summoned: activate this ability with no cost.	CHAMPION	T
9791	Yordle Barrage	Quick: If you control 2 or more Champions and all the Champions you control are Yordle-type, summon as many Yordle-type Champions with different names as possible. Allied Yordle-Type Champions gain 1 AD/AP (adaptive) for each allied Champion with a different Region until the end of your next turn. At the end of your next turn: Send Champions you control to the Fountain equal to the number of Champions summoned by this effect. You cannot activate Summoner Spells or Champion abilities for the rest of the turn.	SUMMONERSPELL	T
9818	Spectral Vengeance	Quick: When an Undead-type Champion is slain by an enemy Champion: Target that Champion. At the end of the turn deal damage to the target equal to the number of Undead-Champions sent to the Fountain this turn + 1, and if the target is slain by this effect: Summon the target, from the Fountain, to your side of the field and it becomes Undead-type.	SUMMONERSPELL	T
9829	The Glorious Evolution	Banish 1 Human-type Champion you control: Summon 1 Construct-type Champion from your Deck to the Banished card's Zone. Only Construct-type Champions may attack this turn.	SUMMONERSPELL	T
9873	Lulu	Pix, Faerie Companion\nWhen this card attacks: Deal damage equal to half of this card’s AP, to the first card in the target’s column.\nWhimsy | 4 MANA | Range: 2\nCooldown: 2 Turns\nQuick: Target 1 Champion in range; If the target is an allied Champion: the target gains 1 Reposition range and +1 Attack Speed until the end of the turn. If the target is an enemy champion: Disable the target for 2 Phases.\nWild Growth | 6 MANA | Range: 2\nCooldown: 3 Turns\nQuick: Target 1 allied Champion; Knock Up all enemy units adjacent to the target and the target gains HP equal to this card’s AP + 3 until the end of the turn.	CHAMPION	T
9927	Vastayan Respite	Quick: Target 1 Champion you control; that card enters Stasis until the end of this Phase. At the end of the turn Shuffle the target into your Deck and if the target is a Vastaya-type Champion: Summon a Vastaya-type Champion from your Deck with a different name to the target's Zone. You may only use 1 “Vastayan Respite” per turn.	SUMMONERSPELL	T
9933	The Lost Tales	Add 1 Demigod-type Freljord Champion from your deck to your hand. You may remove 4 Stacks of Frost from anywhere on the field, and if you do: Summon the Champion instead.	SUMMONERSPELL	T
9935	Volibear	Rolling Thunder | 2 MANACooldown: Each Turn\nQuick: This card gains 1 Reposition range during this phase. This card’s next attack gains 1 range, deals 1 bonus damage and Knocks Up the target. If the target was in the Backline Row also Reposition is to the Frontline Row of its column. This card may attack once again this Turn.\nMajestic Roar | 3 MANA | Range: 1\nCooldown: 2 Turns\nQuick: Deal damage to all enemy cards in range equal to this card’s AP + 1. If this ability affects a Pet: Displace that card instead. If this ability affects a card that is Knocked Up deal bonus damage equal to this card’s AP. \nThunder Claws | 5 MANA | Range: 1\nCooldown: 3 Turns\nDeal damage to all cards in range equal to this card’s AP + 1. During this turn, this card’s attacks deal bonus damage equal to this card’s AP to the target and all enemy card’s adjacent the the target.	CHAMPION	T
9975	Rabadon's Deathcap	UNIQUE: The equipped Champion gains AP equal to half it's AP - 2 (canculated after adding all AP gained from other Items, abilities and effects).	ITEM	T
\.


--
-- Data for Name: champion; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.champion (card_id, epithet, hp, ad, ap, region, class1, class2, type1, type2, trial455) FROM stdin;
125	The Kraken Priestess	7	3	0	BILGEWATER	FIGHTER	JUGGERNAUT	HUMAN	\N	T
282	The Serpent's Embrace	5	1	3	NOXUS	MAGE	BATTLEMAGE	HUMAN	\N	T
386	The Plague Rat	5	2	0	ZAUN	MARKSMAN	\N	CREATURE	\N	T
543	The Great Steam Golem	9	1	1	ZAUN	TANK	CATCHER	CONSTRUCT	\N	T
593	The Blind Monk	6	2	1	IONIA	FIGHTER	DIVER	HUMAN	\N	T
719	The Virtuoso	4	4	0	IONIA	MARKSMAN	CATCHER	HUMAN	\N	T
734	The Undead Juggernaut	10	2	0	NOXUS	TANK	VANGUARD	UNDEAD	\N	T
801	The Daughter of the Void	5	1	1	THEVOID	MARKSMAN	\N	HUMAN	\N	T
898	The River King	9	1	2	RUNETERRA	TANK	WARDEN	DEMON	\N	T
974	The Bounty Hunter	4	2	0	BILGEWATER	MARKSMAN	\N	HUMAN	\N	T
1056	The Loose Canon	5	2	0	ZAUN	MARKSMAN	\N	HUMAN	\N	T
1059	The Stoneweaver	5	1	3	SHURIMA	MAGE	BATTLEMAGE	HUMAN	\N	T
1077	The Nine-Tailed Fox	5	1	2	IONIA	MAGE	ASSASSIN	VASTAYA	\N	T
1176	The Wuju Bladesman	5	2	0	IONIA	SLAYER	SKIRMISHER	HUMAN	\N	T
1196	The Charmer	5	1	2	IONIA	MAGE	CATCHER	VASTAYA	\N	T
1219	The Troll King	7	2	0	FRELJORD	FIGHTER	JUGGERNAUT	CREATURE	\N	T
1412	The Half-Dragon	7	2	0	DEMACIA	FIGHTER	JUGGERNAUT	HUMAN	CREATURE	T
1472	The Heart of the Freljord	9	1	0	FRELJORD	TANK	WARDEN	HUMAN	\N	T
1475	The Artisan of War	6	2	0	MOUNTTARGON	FIGHTER	DIVER	ASPECT	\N	T
1573	The Saltwater Scourge	6	2	0	BILGEWATER	FIGHTER	MAGE	HUMAN	\N	T
1635	The Deceiver	5	1	3	NOXUS	MAGE	ASSASSIN	HUMAN	\N	T
1638	The Radiant Dawn	9	1	1	MOUNTTARGON	TANK	VANGUARD	ASPECT	\N	T
1668	The Glorious Executioner	5	2	0	NOXUS	MARKSMAN	\N	HUMAN	\N	T
1748	The Voidreaver	5	2	1	THEVOID	SLAYER	ASSASSIN	VOIDBORN	\N	T
1849	The Steel Shadow	6	1	0	PILTOVER	FIGHTER	DIVER	HUMAN	CONSTRUCT	T
1864	The Wandering Caretaker	5	1	2	RUNETERRA	MAGE	CATCHER	CELESTIAL	\N	T
2009	The Shield of Valoran	7	1	1	MOUNTTARGON	TANK	WARDEN	ASPECT	\N	T
2017	The Spear of Vengeance	5	1	0	SHADOWISLES	MARKSMAN	MAGE	UNDEAD	\N	T
2032	The Boy who Shattered Time	5	1	3	ZAUN	SLAYER	ASSASSIN	HUMAN	\N	T
2202	The Heart of the Tempest	5	2	2	IONIA	MARKSMAN	BATTLEMAGE	YORDLE	\N	T
2235	The Harbringer of Doom	5	1	3	RUNETERRA	MAGE	BATTLEMAGE	DEMON	\N	T
2268	The Starchild	5	1	2	IONIA	MAGE	ENCHANTER	CELESTIAL	\N	T
2545	The Noxian Grand General	6	1	3	NOXUS	MAGE	BATTLEMAGE	HUMAN	DEMON	T
2611	The Tiny Master of Evil	5	0	4	BANDLECITY	MAGE	BURST	YORDLE	\N	T
2694	The Hexplosive Expert	5	1	3	ZAUN	MAGE	ARTILLERY	YORDLE	\N	T
2697	The Twisted Treant	10	1	1	SHADOWISLES	TANK	VANGUARD	PLANT	SPIRIT	T
2813	The Lady of Luminosity	5	1	3	DEMACIA	MAGE	ARTILLERY	HUMAN	\N	T
2911	The Ice Witch	5	1	3	FRELJORD	MAGE	BURST	ICEBORN	\N	T
2927	The Grandmaster at Arms	6	2	2	RUNETERRA	SLAYER	SKIRMISHER	HUMAN	\N	T
3027	The Might of Demacia	8	2	0	DEMACIA	FIGHTER	JUGGERNAUT	HUMAN	\N	T
3052	The Unforgiven	5	2	0	IONIA	SLAYER	SKIRMISHER	HUMAN	\N	T
3071	The Rogue Assassin	5	2	2	IONIA	SLAYER	ASSASSIN	HUMAN	\N	T
3131	The Mouth of the Abyss	5	2	2	THEVOID	MARKSMAN	\N	VOIDBORN	\N	T
3139	The Hand of Noxus	7	2	0	NOXUS	FIGHTER	JUGGERNAUT	HUMAN	\N	T
3205	The Sad Mummy	10	1	2	SHURIMA	TANK	VANGUARD	UNDEAD	YORDLE	T
3212	The Enlightened One	5	1	2	IONIA	MAGE	ENCHANTER	HUMAN	\N	T
3221	The Emperor of the Sand	5	1	2	SHURIMA	MAGE	BATTLEMAGE	DEMIGOD	\N	T
3235	The Bloodharbor Ripper	5	2	0	BILGEWATER	SLAYER	ASSASSIN	UNDEAD	\N	T
3425	The Secret Weapon	10	1	2	ZAUN	TANK	VANGUARD	CONSTRUCT	\N	T
3544	The Missing Link	5	2	0	RUNETERRA	MARKSMAN	\N	YORDLE	\N	T
3684	The Spider Queen	5	1	3	SHADOWISLES	MAGE	FIGHTER	HUMAN	\N	T
3736	The Void Walker	5	1	3	THEVOID	SLAYER	ASSASSIN	HUMAN	\N	T
3808	The Swift Scout	5	2	2	BANDLECITY	MARKSMAN	MAGE	YORDLE	\N	T
3820	The Shadow Reaper	5	2	0	IONIA	FIGHTER	SLAYER	HUMAN	DARKIN	T
4058	The Madman of Zaun	9	2	0	ZAUN	FIGHTER	JUGGERNAUT	HUMAN	\N	T
4151	The Monkey King	5	3	0	IONIA	FIGHTER	DIVER	VASTAYA	\N	T
4154	The Master of Shadows	5	2	0	IONIA	SLAYER	ASSASSIN	HUMAN	\N	T
4225	The Shepherd of Souls	7	2	0	SHADOWISLES	FIGHTER	JUGGERNAUT	HUMAN	\N	T
4370	The Terror of the Void	8	1	2	THEVOID	TANK	MAGE	VOIDBORN	\N	T
4420	The Blade's Shadow	5	2	0	NOXUS	SLAYER	ASSASSIN	HUMAN	\N	T
4462	The Curator of the Sands	7	2	0	SHURIMA	FIGHTER	JUGGERNAUT	DEMIGOD	\N	T
4595	The Chain Warden	8	1	2	SHADOWISLES	TANK	CATCHER	UNDEAD	\N	T
4713	The Storm's Fury	4	1	2	ZAUN	MAGE	ENCHANTER	SPIRIT	\N	T
4902	The Bestial Huntress	5	1	2	RUNETERRA	MAGE	FIGHTER	HUMAN	VASTAYA	T
5070	The Void Burrower	7	2	0	THEVOID	FIGHTER	DIVER	VOIDBORN	\N	T
5076	The Mechanized Menace	6	1	3	BANDLECITY	MAGE	BATTLEMAGE	YORDLE	\N	T
5082	The Card Master	5	1	2	BILGEWATER	MAGE	BURST	HUMAN	\N	T
5098	The Lady of Clockwork	5	1	3	PILTOVER	MAGE	BURST	CONSTRUCT	\N	T
5154	The Dreadnaught	7	2	0	ZAUN	MARKSMAN	JUGGERNAUT	HUMAN	CONSTRUCT	T
5168	The Blade Dancer	6	2	1	IONIA	FIGHTER	DIVER	HUMAN	\N	T
5175	The Darkin Blade	7	2	0	RUNETERRA	SLAYER	SKIRMISHER	DARKIN	\N	T
5201	The Butcher of the Sands	7	2	0	SHURIMA	FIGHTER	DIVER	DEMIGOD	\N	T
5246	The Dark Child	5	1	3	RUNETERRA	MAGE	BURST	HUMAN	\N	T
5249	The Fire Below the Mountain	10	2	0	FRELJORD	TANK	VANGUARD	DEMIGOD	\N	T
5312	Fury of the North	10	1	1	FRELJORD	TANK	VANGUARD	ICEBORN	\N	T
5346	The Eternal Knightmare	5	2	0	RUNETERRA	SLAYER	ASSASSIN	DEMON	\N	T
5553	The Rune Mage	5	1	2	RUNETERRA	MAGE	BATTLEMAGE	HUMAN	\N	T
5611	The Battle Mistress	5	2	0	SHURIMA	MARKSMAN	\N	HUMAN	\N	T
5761	The Rabble Rouser	7	1	2	FRELJORD	TANK	VANGUARD	HUMAN	\N	T
5825	The Colossus	9	1	3	DEMACIA	TANK	WARDEN	CONSTRUCT	\N	T
5845	The Judicator	5	1	1	RUNETERRA	FIGHTER	MAGE	SPIRIT	\N	T
5856	Keeper of the Hammer	10	2	0	DEMACIA	TANK	WARDEN	YORDLE	\N	T
5877	The Sinister Blade	5	2	2	NOXUS	SLAYER	ASSASSIN	HUMAN	\N	T
6133	The Revered Inventor	5	1	3	PILTOVER	MAGE	BATTLEMAGE	YORDLE	\N	T
6136	The Shard of the Monolith	10	1	2	RUNETERRA	TANK	VANGUARD	SPIRIT	\N	T
6169	The Green Father	5	1	2	RUNETERRA	MAGE	ENCHANTER	PLANT	SPIRIT	T
6189	The Night Hunter	5	2	0	DEMACIA	MARKSMAN	\N	HUMAN	\N	T
6330	The Crystal Vanguard	7	2	1	SHURIMA	FIGHTER	DIVER	CREATURE	\N	T
6350	The Pridestalker	5	2	0	RUNETERRA	SLAYER	ASSASSIN	VASTAYA	\N	T
6356	The Defender of Tomorrow	5	2	0	PILTOVER	FIGHTER	DIVER	HUMAN	\N	T
6363	The Titan of the Depths	10	1	1	BILGEWATER	TANK	VANGUARD	HUMAN	\N	T
6621	The Chronokeeper	5	1	3	RUNETERRA	MAGE	CATCHER	HUMAN	\N	T
6698	The Sheriff of Piltover	4	2	0	PILTOVER	MARKSMAN	\N	HUMAN	\N	T
6702	The Tidecaller	4	1	2	RUNETERRA	MAGE	ENCHANTER	VASTAYA	\N	T
6844	The Dark Sovereign	5	1	3	IONIA	MAGE	BURST	HUMAN	\N	T
6848	The Maven of Strings	4	1	2	DEMACIA	MAGE	ENCHANTER	HUMAN	\N	T
7076	The Minotaur	10	1	2	RUNETERRA	TANK	VANGUARD	CREATURE	\N	T
7198	The Yordle Gunner	5	2	0	BANDLECITY	MARKSMAN	\N	YORDLE	\N	T
7253	The Piltover Enforcer	7	2	0	PILTOVER	FIGHTER	DIVER	HUMAN	\N	T
7359	The Cryophoenix	5	1	3	FRELJORD	MAGE	BATTLEMAGE	DEMIGOD	\N	T
7438	The Eternal Hunters	5	2	0	RUNETERRA	MARKSMAN	\N	SPIRIT	\N	T
7476	The Eye of the Void	5	1	3	THEVOID	MAGE	ARTILLERY	VOIDBORN	\N	T
7552	The Mad Chemist	9	1	3	ZAUN	TANK	MAGE	HUMAN	\N	T
7616	The Uncaged Wrath of Zaun	7	1	0	ZAUN	FIGHTER	DIVER	HUMAN	CREATURE	T
7621	The Spirit Walker	7	2	2	FRELJORD	FIGHTER	JUGGERNAUT	HUMAN	\N	T
7658	The Exile	6	2	0	IONIA	SLAYER	SKIRMISHER	HUMAN	\N	T
7764	The Purifier	5	2	0	DEMACIA	MARKSMAN	\N	HUMAN	\N	T
7870	The Berserker	7	2	0	FRELJORD	FIGHTER	DIVER	HUMAN	\N	T
7939	The Machine Herald	5	1	3	ZAUN	MAGE	BATTLEMAGE	HUMAN	CONSTRUCT	T
8034	The Demon Jester	5	2	2	RUNETERRA	SLAYER	ASSASSIN	DEMON	\N	T
8036	The Iron Revenant	7	1	3	SHADOWISLES	FIGHTER	JUGGERNAUT	UNDEAD	\N	T
8044	The Tidal Trickster	5	1	3	RUNETERRA	SLAYER	ASSASSIN	YORDLE	\N	T
8053	The Arrow of Retribution	5	1	1	IONIA	MARKSMAN	ARTILLERY	DARKIN	HUMAN	T
8076	The Daring Bombardier	5	2	0	BANDLECITY	MARKSMAN	MAGE	YORDLE	\N	T
8090	The Eye of Twilight	10	2	0	IONIA	TANK	WARDEN	HUMAN	\N	T
8111	The Seneschal of Demacia	5	2	0	DEMACIA	FIGHTER	DIVER	HUMAN	\N	T
8170	The Outlaw	5	3	0	BILGEWATER	MARKSMAN	FIGHTER	HUMAN	\N	T
8347	Fallen Angel	5	1	2	RUNETERRA	MAGE	CATCHER	SPIRIT	\N	T
8423	The Yeti Rider	10	1	2	FRELJORD	TANK	WARDEN	HUMAN	\N	T
8462	The Grand Duelist	6	2	0	DEMACIA	FIGHTER	SKIRMISHER	HUMAN	\N	T
8626	The Rebel	4	2	0	IONIA	MARKSMAN	\N	VASTAYA	\N	T
8665	The Deathsinger	5	1	3	SHADOWISLES	MAGE	BATTLEMAGE	UNDEAD	\N	T
8828	The Crimson Reaper	6	1	3	NOXUS	MAGE	BATTLEMAGE	HUMAN	\N	T
8967	The Shadow of War	6	2	0	SHADOWISLES	FIGHTER	DIVER	UNDEAD	\N	T
9065	The Scorn of the Moon	5	1	3	MOUNTTARGON	FIGHTER	DIVER	ASPECT	\N	T
9097	Agony's Embrace	5	0	3	RUNETERRA	SLAYER	ASSASSIN	DEMON	\N	T
9183	The Star Forger	5	1	3	RUNETERRA	MAGE	BATTLEMAGE	CELESTIAL	\N	T
9319	The Aspect of Twilight	4	1	3	MOUNTTARGON	MAGE	BURST	ASPECT	\N	T
9376	The Barbarian King	6	2	0	FRELJORD	SLAYER	SKIRMISHER	HUMAN	\N	T
9511	Rise of the Thorns	5	1	3	RUNETERRA	MAGE	CATCHER	PLANT	HUMAN	T
9515	The Prophet of the Void	5	1	3	THEVOID	MAGE	BATTLEMAGE	HUMAN	\N	T
9563	The Armordillo	10	1	1	SHURIMA	TANK	VANGUARD	DEMIGOD	\N	T
9573	The Exemplar of Demacia	7	2	0	DEMACIA	FIGHTER	DIVER	HUMAN	\N	T
9594	The Frost Archer	5	2	0	FRELJORD	MARKSMAN	\N	ICEBORN	\N	T
9638	The Burning Vengeance	5	1	3	RUNETERRA	MAGE	BURST	HUMAN	SPIRIT	T
9682	The Kantankerous Cavalier	6	2	0	NOXUS	FIGHTER	DIVER	YORDLE	\N	T
9684	The Magus Ascendant	4	1	3	SHURIMA	MAGE	ARTILLERY	DEMIGOD	\N	T
9775	The Prodigal Explorer	5	2	0	PILTOVER	MARKSMAN	\N	HUMAN	\N	T
9779	Demacia's Wings	5	2	0	DEMACIA	MARKSMAN	DIVER	HUMAN	\N	T
9873	The Fae Sorceress	4	1	2	BANDLECITY	MAGE	ENCHANTER	YORDLE	\N	T
9935	The Thunder's Roar	9	1	1	FRELJORD	TANK	VANGUARD	DEMIGOD	\N	T
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.item (card_id, hp, ad, ap, trial455) FROM stdin;
417	0	2	0	T
423	1	0	0	T
578	0	0	0	T
887	0	0	1	T
902	0	0	0	T
1025	2	1	0	T
1159	0	0	2	T
1244	0	0	2	T
1452	1	0	2	T
1648	2	1	0	T
1983	1	0	1	T
2036	0	1	0	T
2053	0	0	0	T
2295	0	0	0	T
2402	0	2	0	T
2439	0	1	0	T
2526	0	0	0	T
2556	0	0	2	T
2731	0	1	0	T
2798	0	0	1	T
2965	0	0	0	T
3270	0	1	0	T
3297	0	0	0	T
3538	1	0	2	T
3582	0	2	0	T
3592	0	1	0	T
3593	0	0	0	T
3640	0	0	0	T
3739	2	0	0	T
4099	1	1	0	T
4215	0	0	0	T
4467	0	1	0	T
4518	2	0	0	T
4563	1	0	0	T
4606	0	0	2	T
4679	0	0	2	T
4710	0	1	0	T
5057	2	0	0	T
5159	0	1	0	T
5203	0	2	0	T
5415	0	1	1	T
5421	0	0	2	T
5764	3	1	0	T
6029	1	0	2	T
6061	0	0	0	T
6228	3	0	0	T
6302	2	0	0	T
6421	0	2	0	T
6452	0	0	0	T
6830	0	0	1	T
7044	1	0	0	T
7057	0	0	1	T
7211	0	1	0	T
7262	0	0	0	T
7435	0	0	0	T
7450	0	1	2	T
7511	0	2	0	T
7628	0	0	0	T
7927	1	0	2	T
8007	0	0	3	T
8504	0	0	0	T
8570	0	0	0	T
8663	0	0	0	T
8696	2	0	0	T
8855	0	0	0	T
8908	2	0	0	T
8955	0	0	2	T
9217	0	0	1	T
9293	2	0	0	T
9302	0	1	0	T
9309	1	0	0	T
9975	0	0	3	T
\.


--
-- Data for Name: item_has; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.item_has (card_id, stat_name, qty, trial455) FROM stdin;
417	COOLDOWNREDUCTION	1	T
423	RESISTANCE	2	T
578	RESISTANCE	1	T
887	COOLDOWNREDUCTION	1	T
887	HEALANDSHIELDPOWER	1	T
887	RESISTANCE	1	T
902	RESISTANCE	2	T
1025	COOLDOWNREDUCTION	2	T
1159	COOLDOWNREDUCTION	1	T
1244	ATTACKSPEED	1	T
1244	COOLDOWNREDUCTION	2	T
2053	ATTACKSPEED	1	T
2053	CRITICALSTRIKECHANCE	1	T
2295	COOLDOWNREDUCTION	1	T
2295	HEALANDSHIELDPOWER	2	T
2439	LIFESTEAL	1	T
2439	RESISTANCE	1	T
2526	COOLDOWNREDUCTION	1	T
2526	RESISTANCE	2	T
2556	COOLDOWNREDUCTION	1	T
2556	RESISTANCE	1	T
2731	ATTACKSPEED	1	T
2731	LIFESTEAL	1	T
2798	COOLDOWNREDUCTION	1	T
2798	RESISTANCE	1	T
2965	ATTACKSPEED	1	T
2965	CRITICALSTRIKECHANCE	1	T
3270	RESISTANCE	1	T
3297	ATTACKSPEED	1	T
3297	CRITICALSTRIKECHANCE	1	T
3582	LIFESTEAL	2	T
3592	COOLDOWNREDUCTION	1	T
3739	COOLDOWNREDUCTION	1	T
3739	RESISTANCE	1	T
4099	ATTACKSPEED	1	T
4099	COOLDOWNREDUCTION	2	T
4215	RESISTANCE	1	T
4518	RESISTANCE	1	T
4563	COOLDOWNREDUCTION	1	T
4563	RESISTANCE	1	T
4679	COOLDOWNREDUCTION	1	T
5203	COOLDOWNREDUCTION	2	T
5415	ATTACKSPEED	1	T
5421	COOLDOWNREDUCTION	1	T
6228	COOLDOWNREDUCTION	1	T
6302	RESISTANCE	1	T
6421	ATTACKSPEED	1	T
7044	COOLDOWNREDUCTION	1	T
7044	RESISTANCE	1	T
7057	COOLDOWNREDUCTION	1	T
7057	HEALANDSHIELDPOWER	1	T
7211	COOLDOWNREDUCTION	1	T
7211	RESISTANCE	1	T
7435	RESISTANCE	2	T
7511	LIFESTEAL	1	T
7628	ATTACKSPEED	1	T
7628	CRITICALSTRIKECHANCE	1	T
8570	COOLDOWNREDUCTION	2	T
8570	RESISTANCE	3	T
8663	COOLDOWNREDUCTION	2	T
8663	RESISTANCE	1	T
8696	COOLDOWNREDUCTION	1	T
8696	RESISTANCE	1	T
8855	ATTACKSPEED	1	T
8855	RESISTANCE	1	T
8908	RESISTANCE	1	T
8955	COOLDOWNREDUCTION	1	T
9217	COOLDOWNREDUCTION	1	T
9293	COOLDOWNREDUCTION	1	T
9293	RESISTANCE	1	T
9309	COOLDOWNREDUCTION	1	T
9309	HEALANDSHIELDPOWER	1	T
\.


--
-- Data for Name: neutral_monster; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.neutral_monster (card_id, hp, ad, monster_type, trial455) FROM stdin;
3302	25	2	BARONNASHOR	T
3999	15	2	DRAGON	T
5560	15	2	DRAGON	T
6969	15	1	DRAGON	T
7992	20	2	DRAGON	T
8801	15	2	DRAGON	T
9728	20	2	RIFTHERALD	T
\.


--
-- Data for Name: pet; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.pet (card_id, hp, ad, belongs_to, trial455) FROM stdin;
1178	8	2	4225	T
4308	3	0	6133	T
4683	6	0	6133	T
5633	8	2	5246	T
6529	8	2	6169	T
\.


--
-- Data for Name: summoner_spell; Type: TABLE DATA; Schema: public; Owner: lol
--

COPY public.summoner_spell (card_id, spell_type, trial455) FROM stdin;
18	EQUIPPABLE	T
56	NORMAL	T
66	EQUIPPABLE	T
154	NORMAL	T
160	NORMAL	T
254	NORMAL	T
286	NORMAL	T
338	FIELDOFJUSTICE	T
472	NORMAL	T
696	NORMAL	T
763	NORMAL	T
812	NORMAL	T
862	NORMAL	T
932	NORMAL	T
940	NORMAL	T
957	NORMAL	T
1016	NORMAL	T
1048	EQUIPPABLE	T
1074	FIELDOFJUSTICE	T
1304	NORMAL	T
1448	NORMAL	T
1483	NORMAL	T
1616	NORMAL	T
1665	NORMAL	T
1810	FIELDOFJUSTICE	T
1938	EQUIPPABLE	T
1942	NORMAL	T
2031	NORMAL	T
2113	NORMAL	T
2123	NORMAL	T
2155	NORMAL	T
2327	EQUIPPABLE	T
2331	NORMAL	T
2437	NORMAL	T
2471	NORMAL	T
2640	NORMAL	T
2643	NORMAL	T
2706	NORMAL	T
2714	EQUIPPABLE	T
2780	EQUIPPABLE	T
2824	FIELDOFJUSTICE	T
2851	NORMAL	T
2973	NORMAL	T
2980	NORMAL	T
3107	NORMAL	T
3147	NORMAL	T
3149	NORMAL	T
3358	NORMAL	T
3448	NORMAL	T
3577	NORMAL	T
3669	NORMAL	T
3712	NORMAL	T
3786	NORMAL	T
3826	FIELDOFJUSTICE	T
3886	NORMAL	T
3966	NORMAL	T
4003	EQUIPPABLE	T
4042	NORMAL	T
4048	NORMAL	T
4210	NORMAL	T
4219	NORMAL	T
4266	NORMAL	T
4290	NORMAL	T
4401	FIELDOFJUSTICE	T
4429	NORMAL	T
4479	NORMAL	T
4482	NORMAL	T
4559	NORMAL	T
4612	NORMAL	T
4630	NORMAL	T
4634	NORMAL	T
4647	NORMAL	T
4718	NORMAL	T
4771	NORMAL	T
4812	NORMAL	T
4848	NORMAL	T
4877	NORMAL	T
4903	NORMAL	T
4990	NORMAL	T
5086	NORMAL	T
5124	NORMAL	T
5172	NORMAL	T
5200	NORMAL	T
5210	NORMAL	T
5218	NORMAL	T
5275	FIELDOFJUSTICE	T
5288	EQUIPPABLE	T
5301	NORMAL	T
5304	NORMAL	T
5323	NORMAL	T
5334	NORMAL	T
5503	EQUIPPABLE	T
5613	EQUIPPABLE	T
5680	NORMAL	T
5711	NORMAL	T
5829	NORMAL	T
5911	NORMAL	T
5968	NORMAL	T
6025	EQUIPPABLE	T
6043	NORMAL	T
6057	NORMAL	T
6323	EQUIPPABLE	T
6337	NORMAL	T
6383	NORMAL	T
6461	FIELDOFJUSTICE	T
6474	NORMAL	T
6627	NORMAL	T
6661	NORMAL	T
6713	NORMAL	T
6836	NORMAL	T
6939	NORMAL	T
7019	NORMAL	T
7081	NORMAL	T
7140	NORMAL	T
7181	NORMAL	T
7182	NORMAL	T
7273	NORMAL	T
7281	FIELDOFJUSTICE	T
7317	NORMAL	T
7420	NORMAL	T
7433	NORMAL	T
7442	NORMAL	T
7462	NORMAL	T
7464	NORMAL	T
7564	EQUIPPABLE	T
7582	NORMAL	T
7753	NORMAL	T
7784	NORMAL	T
7866	NORMAL	T
7867	FIELDOFJUSTICE	T
7917	NORMAL	T
7933	FIELDOFJUSTICE	T
7982	FIELDOFJUSTICE	T
8031	FIELDOFJUSTICE	T
8085	FIELDOFJUSTICE	T
8101	NORMAL	T
8343	FIELDOFJUSTICE	T
8364	EQUIPPABLE	T
8377	NORMAL	T
8433	NORMAL	T
8453	NORMAL	T
8751	NORMAL	T
8764	FIELDOFJUSTICE	T
8926	NORMAL	T
8976	NORMAL	T
9003	NORMAL	T
9017	NORMAL	T
9037	NORMAL	T
9125	NORMAL	T
9161	FIELDOFJUSTICE	T
9187	NORMAL	T
9306	EQUIPPABLE	T
9567	NORMAL	T
9700	EQUIPPABLE	T
9707	NORMAL	T
9708	NORMAL	T
9791	NORMAL	T
9818	NORMAL	T
9829	NORMAL	T
9927	NORMAL	T
9933	NORMAL	T
\.


--
-- Name: pk_card; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT pk_card PRIMARY KEY (card_id);


--
-- Name: pk_champion; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.champion
    ADD CONSTRAINT pk_champion PRIMARY KEY (card_id);


--
-- Name: pk_item; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT pk_item PRIMARY KEY (card_id);


--
-- Name: pk_item_has; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.item_has
    ADD CONSTRAINT pk_item_has PRIMARY KEY (card_id, stat_name);


--
-- Name: pk_neutral_monster; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.neutral_monster
    ADD CONSTRAINT pk_neutral_monster PRIMARY KEY (card_id);


--
-- Name: pk_pet; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pk_pet PRIMARY KEY (card_id);


--
-- Name: pk_summoner_spell; Type: CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.summoner_spell
    ADD CONSTRAINT pk_summoner_spell PRIMARY KEY (card_id);


--
-- Name: idx_belongs_to; Type: INDEX; Schema: public; Owner: lol
--

CREATE INDEX idx_belongs_to ON public.pet USING btree (belongs_to);


--
-- Name: champion_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.champion
    ADD CONSTRAINT champion_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.card(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: item_has_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.item_has
    ADD CONSTRAINT item_has_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.item(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: item_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.card(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: neutral_monster_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.neutral_monster
    ADD CONSTRAINT neutral_monster_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.card(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pet_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.card(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pet_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.pet
    ADD CONSTRAINT pet_ibfk_2 FOREIGN KEY (belongs_to) REFERENCES public.champion(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: summoner_spell_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: lol
--

ALTER TABLE ONLY public.summoner_spell
    ADD CONSTRAINT summoner_spell_ibfk_1 FOREIGN KEY (card_id) REFERENCES public.card(card_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
