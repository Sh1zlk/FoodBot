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

@dp.message_handler(commands=['start'])
async def call_main_kb(msg: types.Message):
    await dp.bot.send_message(text='Привіт', chat_id=msg.chat.id ,reply_markup=main_kb)
