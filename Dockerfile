FROM python:3.8

#Set project variables
ARG TOKEN=''
ENV TOKEN=$TOKEN

# Update system package
RUN apt-get update && apt-get upgrade -y

# Set project work directory
WORKDIR /food_bot
COPY . /food_bot

# Upgrade pip tool and install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Start bot script
CMD ["python", "app.py"]
