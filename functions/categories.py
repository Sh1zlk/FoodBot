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
from keyboards.main_kb import main_kb

@dp.message_handler(text='Категорії📋')
async def categories(message: types.Message):
    pass


@dp.callback_query_handler()
async def reply_name_categories(call: types.CallbackQuery):
    pass

