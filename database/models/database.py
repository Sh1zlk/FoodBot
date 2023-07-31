# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from sqlalchemy import create_engine, MetaData
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# DATABASE_NAME = 'food.db'
DATABASE_NAME ='food.sqlite'

engine = create_engine(f'sqlite:///database/{DATABASE_NAME}')
# engine = create_engine(f'postgresql+psycopg2://root:root@127.0.0.1:5432/food')
Session = sessionmaker(bind=engine)
Metadata = MetaData()
Metadata.reflect(bind=engine)

Base = declarative_base()


def create_db():
    Base.metadata.create_all(engine)