FROM python 3.10.5

ADD . /code
WORKDIR /code
# ENTRYPOINT ["python", "app.py"]
COPY requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .

