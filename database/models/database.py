# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------
import os
from sqlalchemy import create_engine, MetaData
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

DATABABE_USER = os.environ.get('DATABABE_USER')
DATABASE_PASSWORD = os.environ.get('DATABASE_PASSWORD')

engine = create_engine(f'postgresql+psycopg2://{DATABABE_USER}:{DATABASE_PASSWORD}@pg_last:5432/food')
Session = sessionmaker(bind=engine)
Metadata = MetaData()
Metadata.reflect(bind=engine)

Base = declarative_base()


def create_db():
    Base.metadata.create_all(engine)
