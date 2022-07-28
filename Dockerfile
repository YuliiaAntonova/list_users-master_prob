FROM python:3

ADD . /code
WORKDIR /code

COPY requirements.txt .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install python-dotenv

COPY . .


ENTRYPOINT ["python","app.py"]




