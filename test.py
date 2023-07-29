# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------

import csv

table = ['beans', 'bread', 'cakes', 'canned_meat', 'cereals', 'crops', 'dairy_products', 'dried_fruits', 'eggs', 'fruit_n_berries', 'meat', 'mushrooms', 'nuts', 'sausages', 'seafood', 'sweet', 'vegetables']

i = '3.1'
print(int(float('3.1')))
# with open('./database/foods.csv', encoding='utf-8') as f:
#     reader = csv.reader(f)
#     for row in reader:
#         if row[0].strip() in table:
#             continue
#         data = row[0].split(' ')
#         if len(data) > 6:
#             diff = len(data)-5
#             name = data[:diff]
#             name = ' '.join(name)
#             data = data[diff:]
#             data[0] = name
# import requests
# from bs4 import BeautifulSoup
#
# r = requests.get(url='https://alexus.com.ua/najpovnisha-tablicya-skladu-bilki-zhiri-vuglevodi-i-kalorijnosti-produktiv/')
# soup = BeautifulSoup(r.text, "html.parser")
# table = soup.findAll('table')
# print(table)