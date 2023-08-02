# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from loader import dp
from states.recipe_state import RecipeName
from utils.get_recipe_list import get_recipe_list

from aiogram import types
from aiogram.dispatcher import FSMContext


@dp.message_handler(text='Рецепти🥗')
async def categories(message: types.Message, state: FSMContext):
    await message.answer('Введіть продукт з яким хочете отримати список рецептів:')
    await RecipeName.product_name.set()

@dp.message_handler(state=RecipeName.product_name)
async def send_recipes(message: types.Message, state: FSMContext):
    await state.finish()
    recipes = get_recipe_list(product_name=message.text)
    if isinstance(recipes, list):
        text = ''
        for index, link in enumerate(recipes, start=1):
            format = f'{index}. {link}\n'
            text += format
        await message.answer(text)
    else:
        await message.answer(recipes)


