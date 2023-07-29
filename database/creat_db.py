# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------
import csv

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
    table_n_models = {'beans':Beans, 'bread':Bread, 'cakes':Cakes, 'canned_meat':Canned_meat, 'cereals':Cereals, 'crops':Crops, 'dairy_products':Dairy_products,
                     'dried_fruits':Dried_fruits, 'eggs':Eggs, 'fruit_n_berries':Fruit_n_berries, 'meat':Meat, 'mushrooms':Mushrooms,
             'nuts':Nuts, 'sausages':Sausages, 'seafood':Seafood, 'sweet':Sweet, 'vegetables':Vegetables}

    table = ['beans', 'bread', 'cakes', 'canned_meat', 'cereals', 'crops', 'dairy_products', 'dried_fruits', 'eggs', 'fruit_n_berries', 'meat', 'mushrooms',
             'nuts', 'sausages', 'seafood', 'sweet', 'vegetables']

    with open('./foods.csv', encoding='utf-8') as f:
        reader = csv.reader(f)
        model = None
        for row in reader:
            if row[0].strip() in table:
                model = table_n_models[row[0].strip()]
                continue

            food = row[0].split(' ')
            if len(food) > 6:
                diff = len(food) - 5
                name = food[:diff]
                name = ' '.join(name)
                food = food[diff:]
                food.insert(0, name)
            name = str(food[0])
            water = float(food[1])
            squirrels = float(food[2])
            fats = float(food[3])
            carbohydrates = float(food[4])
            kcal = int(float(food[5]))
            data = model(name=name, water=water, squirrels=squirrels, fats=fats, carbohydrates=carbohydrates, kcal=kcal)
            session.add(data)
    session.commit()
    session.close()

if __name__ == '__main__':
    _load_data(Session())