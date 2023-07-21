# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from models.database import create_db, Session
from models.Bread import Bread
from models.Beans import Beans
from models.Cakes import Cakes
from models.Canned_meat import Canned_meat
from models.Cereals import Cereals
from models.Crops import Crops
from models.Dairy_products import Dairy_products
from models.Dried_fruits import Dried_fruits
from models.Eggs import Eggs
from models.Fruit_n_berries import Fruit_n_berries
from models.Meat import Meat
from models.Mushrooms import Mushrooms
from models.Nuts import Nuts
from models.Sausages import Sausages
from models.Seafood import Seafood
from models.Sweets import Sweet
from models.Vegetables import Vegetables

def create_database(load_data: bool = True):
    create_db()
    if load_data:
        _load_data(Session())


def _load_data(session: Session):

    session.commit()
    session.close()