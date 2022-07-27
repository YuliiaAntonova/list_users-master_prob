# FROM python:3
# ENV APP_HOME /app
# WORKDIR $APP_HOME
# LABEL author="Yuliia"
#
# COPY ./requirements.txt requirements.txt
# RUN pip install -r requirements.txt
# RUN pip install python-dotenv
# COPY . .
# ENTRYPOINT ["python3"]
# CMD ["app.py"]

FROM python:3

ENV FLASK_APP /app
WORKDIR $FLASK_APP

COPY . /app

RUN pip install -r requirements.txt
RUN pip install python-dotenv

ENTRYPOINT ["python3"]
CMD ["app.py"]



