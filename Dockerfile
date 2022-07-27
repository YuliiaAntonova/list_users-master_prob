# FROM python:3
#
# ENV APP_HOME /app
# WORKDIR $APP_HOME

# COPY . /app

# RUN pip install -r requirements.txt
# RUN pip install python-dotenv
#
# ENTRYPOINT ["python3"]
# CMD ["app.py"]



FROM python:3.10.5

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "app.py"]