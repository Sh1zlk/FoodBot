# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from sqlalchemy import Column, Integer, String, Float
from .database import Base

class Mushrooms(Base):
    __tablename__ = 'mushrooms'

    id = Column(Integer, primary_key=True)
    name = Column(String)
    water = Column(Float)
    squirrels = Column(Float)
    fats = Column(Float)
    carbohydrates = Column(Float)
    kcal = Column(Integer)

    def __init__(self, name: str, water: float, squirrels: float, fats: float, carbohydrates: float, kcal: int):
        self.name = name
        self.water = water
        self.squirrels = squirrels
        self.fats = fats
        self.carbohydrates = carbohydrates
        self.kcal = kcal
