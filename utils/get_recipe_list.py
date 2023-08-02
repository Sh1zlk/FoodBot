# -----------------------------------------
# Script by Andriy.K.
#
#
# Version       Date       Info
# 1.0           2023       Initial Version
#
# -----------------------------------------


import requests
from bs4 import BeautifulSoup
from urllib.parse import quote

def get_recipe_list(product_name: str):
    r_sesion = requests.Session()

    encoded_word = quote(product_name, encoding='utf-8')
    recipes = r_sesion.get(url=f'https://shuba.life/search?term={encoded_word}')

    # create BeautifulSoup parser
    soup = BeautifulSoup(recipes.text, "html.parser")
    try:
        error = soup.find(class_="c-title c-title--lg")
        if error:
            text = 'Введіть назву коректно'
            return text
        else:
            hrefs = soup.findAll(class_="c-entry__title")
            links = []
            for href in hrefs:
                link = href.find('a').get('href')
                links.append(link)
            return links

    except:
        pass

