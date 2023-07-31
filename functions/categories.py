# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from loader import dp
from aiogram import types
from keyboards.categories_kb import cat_in_kb, gen_cat_in_kb
from database.models import Bread, Beans, Cakes, Canned_meat, Cereals, Crops, Dried_fruits, Dairy_products, Eggs, Fruit_n_berries, Meat, Mushrooms, Nuts, \
    Sausages, Sweet, Vegetables, Seafood
from database.models.database import Session

# global dict and list

table_n_models = {'beans': Beans, 'bread': Bread, 'cakes': Cakes, 'canned_meat': Canned_meat, 'cereals': Cereals, 'crops': Crops,
                  'dairy_products': Dairy_products,
                  'dried_fruits': Dried_fruits, 'eggs': Eggs, 'fruit_n_berries': Fruit_n_berries, 'meat': Meat, 'mushrooms': Mushrooms,
                  'nuts': Nuts, 'sausages': Sausages, 'seafood': Seafood, 'sweet': Sweet, 'vegetables': Vegetables
                  }

name_of_table = {'Бобові':'beans', 'Хліб':'bread', 'Торти':'cakes', "М'ясні консерви":'canned_meat', 'Крупи':'cereals', 'Зернові':'crops',
                  'Молочні продукти':'dairy_products', 'Сухофрукти':'dried_fruits', 'Яйця':'eggs', 'Фрукти та ягоди':'fruit_n_berries', "М'ясо":'meat',
                'Гриби':'mushrooms', 'Горіхи':'nuts', 'Ковбасні вироби':'sausages', 'Морепродукти':'seafood', 'Солодощі':'sweet', 'Овочі':'vegetables'
                 }

@dp.message_handler(text='Категорії📋')
async def categories(message: types.Message):
    await message.answer('Виберіть категорію продуктів:', reply_markup=gen_cat_in_kb(name_of_table))


@dp.callback_query_handler(cat_in_kb.filter())
async def reply_name_categories(call: types.CallbackQuery):
    cat_name = call.data.split(':')

