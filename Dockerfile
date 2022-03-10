FROM python:3.9.5

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get update -y && apt-get install curl -y
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 wget unzip -y

RUN python -m nltk.downloader punkt -d /usr/local/nltk_data
RUN python -m nltk.downloader stopwords -d /usr/local/nltk_data
RUN wget -P ./data "https://archive.org/download/aravec2.0/www_cbow_300.zip"
RUN unzip ./data/www_cbow_300.zip -d ./data
RUN rm ./data/www_cbow_300.zip


