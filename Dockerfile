FROM python:3

ENV FLASK_APP /app
WORKDIR $FLASK_APP

COPY . /app

RUN pip install -r requirements.txt
RUN pip install python-dotenv

ENTRYPOINT ["python3"]
CMD ["app.py"]



