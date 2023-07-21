# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from sqlalchemy import Column, Integer, String, Float
from models.database import Base


class Sausages(Base):
    __tablename__ = 'sausages'

    id = Column(Integer, primary_key=True)
    name = Column(String)
    water = Column(Float)
    squirrels = Column(Float)
    fats = Column(Float)
    carbohydrates = Column(Float)
    kcal = Column(Integer)
