FROM python:3.8

ARG TOKEN=''
ENV TOKEN=$TOKEN
ARG DATABABE_USER=''
ENV DATABABE_USER=$DATABABE_USER
ARG DATABASE_PASSWORD=''
ENV DATABASE_PASSWORD=$DATABASE_PASSWORD

# Update system package
RUN apt-get update && apt-get upgrade -y

# Set project work directory
WORKDIR /food_bot
COPY . /food_bot

# Upgrade pip tool and install requirements
RUN pip install --upgrade pip && pip install -r requirements.txt

# Start bot script
CMD ["python", "app.py"]
