# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

import logging
import configparser
from aiogram import Dispatcher
from aiogram.utils import executor
from functions import dp
# import requests
# from urllib.parse import quote
# # r = requests.get('https://shuba.life/search?term=%D0%BA%D0%B0%D0%B1%D0%B0%D1%87%D0%BE%D0%BA')
# # print(r.text)
#
# text = 'Кабачок'
# encod_world = quote(text, encoding='utf-8')
# print(encod_world)
# r = requests.get(f'https://shuba.life/search?term={encod_world}')
# with open('index.html', 'w') as f:
#     f.write(r.text)

async def on_startup(dp: Dispatcher):
    config = configparser.ConfigParser()
    config.read('config.ini')
    try:
        await dp.bot.send_message(chat_id=config['DataBot']['ADMIN'], text='[INFO] Bot start')
    except:
        pass
    
if __name__ == '__main__':
    try:
        executor.start_polling(dp, skip_updates=True, on_startup=on_startup)
    except (KeyboardInterrupt, SystemExit):
        logging.error("Bot stopped!")