FROM python:3

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . /app

RUN pip install -r requirements.txt
RUN pip install python-dotenv


CMD ["app.py"]



