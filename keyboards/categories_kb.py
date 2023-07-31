# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton
from aiogram.utils.callback_data import CallbackData

cat_in_kb = CallbackData('cat_in_kb', 'action')

def gen_cat_in_kb(data: dict):
    markup = InlineKeyboardMarkup()
    markup.row_width = 1
    try:
        for key, val in data.items():
            markup.add(InlineKeyboardButton(text=key, callback_data=cat_in_kb.new(val)))
    except Exception as ex:
        print(ex)

    return markup


products_in_kb = CallbackData('products_in_kb', 'action')

def gen_products_in_kb(data: list):
    markup = InlineKeyboardMarkup()
    markup.row_width = 1
    try:
        for product in data:
            markup.add(InlineKeyboardButton(text=product[0], callback_data=products_in_kb.new(product[1])))
    except Exception as ex:
        print(ex)

    return markup