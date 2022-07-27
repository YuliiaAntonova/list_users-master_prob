# FROM python:3
#
# ENV APP_HOME /app
# WORKDIR $APP_HOME
#
# COPY . /app
#
# RUN pip install -r requirements.txt
# RUN pip install python-dotenv
#
# ENTRYPOINT ["python3"]
# CMD ["app.py"]
#
#
#
FROM python:3.10.5-alpine

RUN pip install --upgrade pip

RUN adduser -D yuliiaantonova
USER yuliiaantonova
WORKDIR /home/yuliiaantonova

COPY --chown=yuliiaantonova:yuliiaantonova requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV PATH="/home/myuser/.local/bin:${PATH}"

COPY --chown=yuliiaantonova:yuliiaantonova . .

CMD ["python", "app.py", "runserver", "127.0.0.0:5000"]