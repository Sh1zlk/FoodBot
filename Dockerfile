FROM python:3.8

RUN apt-get update && apt-get upgrade -y

WORKDIR /food_bot
COPY . /food_bot
ENV TOKEN=6394511792:AAHOr6tszgp14leL7zeFvV8jjsendGi1j98
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
