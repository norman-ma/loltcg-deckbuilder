"""empty message

Revision ID: f6a53079d3bf
Revises: 
Create Date: 2018-09-03 12:07:25.664000

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'f6a53079d3bf'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('card', sa.Column('name', sa.String(length=50), nullable=True))
    op.add_column('card', sa.Column('text', sa.String(length=10000), nullable=True))
    op.add_column('card', sa.Column('type', sa.String(length=50), nullable=True))
    op.drop_column('card', 'card_type')
    op.drop_column('card', 'card_name')
    op.drop_column('card', 'card_text')
    op.alter_column('item_has', 'stat_name',
               existing_type=sa.VARCHAR(length=20),
               nullable=True)
    op.drop_index('belongs_to', table_name='pet')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_index('belongs_to', 'pet', ['belongs_to'], unique=False)
    op.alter_column('item_has', 'stat_name',
               existing_type=sa.VARCHAR(length=20),
               nullable=False)
    op.add_column('card', sa.Column('card_text', sa.VARCHAR(length=10000), autoincrement=False, nullable=True))
    op.add_column('card', sa.Column('card_name', sa.VARCHAR(length=50), autoincrement=False, nullable=False))
    op.add_column('card', sa.Column('card_type', sa.VARCHAR(length=50), autoincrement=False, nullable=True))
    op.drop_column('card', 'type')
    op.drop_column('card', 'text')
    op.drop_column('card', 'name')
    # ### end Alembic commands ###
