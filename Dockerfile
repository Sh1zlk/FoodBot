FROM python:3.8

RUN apt-get update && apt-get upgrade -y

WORKDIR /food_bot

COPY . /food_bot

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "app.py"]