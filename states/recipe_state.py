# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

from aiogram.dispatcher.filters.state import StatesGroup, State

class RecipeName(StatesGroup):
    product_name = State()