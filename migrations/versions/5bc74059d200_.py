"""empty message

Revision ID: 5bc74059d200
Revises: 
Create Date: 2018-09-03 18:12:10.108000

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '5bc74059d200'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('card',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('card_name', sa.String(length=50), nullable=True),
    sa.Column('card_text', sa.String(length=10000), nullable=True),
    sa.Column('card_type', sa.String(length=50), nullable=True),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('champion',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('epithet', sa.String(length=60), nullable=True),
    sa.Column('hp', sa.Integer(), nullable=True),
    sa.Column('ad', sa.Integer(), nullable=True),
    sa.Column('ap', sa.Integer(), nullable=True),
    sa.Column('region', sa.String(length=12), nullable=True),
    sa.Column('class1', sa.String(length=12), nullable=True),
    sa.Column('class2', sa.String(length=12), nullable=True),
    sa.Column('type1', sa.String(length=12), nullable=True),
    sa.Column('type2', sa.String(length=12), nullable=True),
    sa.ForeignKeyConstraint(['card_id'], ['card.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('item',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('hp', sa.Integer(), nullable=True),
    sa.Column('ad', sa.Integer(), nullable=True),
    sa.Column('ap', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['card_id'], ['card.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('neutral_monster',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('hp', sa.Integer(), nullable=True),
    sa.Column('ad', sa.Integer(), nullable=True),
    sa.Column('monster_type', sa.String(length=12), nullable=True),
    sa.ForeignKeyConstraint(['card_id'], ['card.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('summoner_spell',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('spell_type', sa.String(length=14), nullable=True),
    sa.ForeignKeyConstraint(['card_id'], ['card.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('item_has',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('stat_name', sa.String(length=20), nullable=True),
    sa.Column('qty', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['card_id'], ['item.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    op.create_table('pet',
    sa.Column('card_id', sa.Integer(), nullable=False),
    sa.Column('hp', sa.Integer(), nullable=True),
    sa.Column('ad', sa.Integer(), nullable=True),
    sa.Column('belongs_to', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['belongs_to'], ['champion.card_id'], ),
    sa.ForeignKeyConstraint(['card_id'], ['card.card_id'], ),
    sa.PrimaryKeyConstraint('card_id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('pet')
    op.drop_table('item_has')
    op.drop_table('summoner_spell')
    op.drop_table('neutral_monster')
    op.drop_table('item')
    op.drop_table('champion')
    op.drop_table('card')
    # ### end Alembic commands ###
