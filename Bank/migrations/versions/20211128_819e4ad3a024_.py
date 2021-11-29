"""empty message

Revision ID: 819e4ad3a024
Revises: 5683376a81a3
Create Date: 2021-11-28 01:07:51.468029

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '819e4ad3a024'
down_revision = '5683376a81a3'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('bankers',
    sa.Column('id', sa.Integer(), autoincrement=True, nullable=False),
    sa.Column('first_name', sa.String(length=20), nullable=False),
    sa.Column('last_name', sa.Integer(), nullable=False),
    sa.Column('address', sa.String(length=20), nullable=False),
    sa.Column('branch_id', sa.Integer(), nullable=False),
    sa.ForeignKeyConstraint(['branch_id'], ['branch.id'], ),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('address')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('bankers')
    # ### end Alembic commands ###
