#FROM python:3
#
#ENV APP_HOME /app
#WORKDIR $APP_HOME
#
#COPY . /app
#
#RUN pip install -r requirements.txt
#RUN pip install python-dotenv
#
#CMD ["python"]
#CMD ["app.py"]

FROM python:3

ADD . /code
WORKDIR /code

COPY requirements.txt .

ARG DEBIAN_FRONTEND=noninteractive
ARG DEBCONF_NOWARNINGS="yes"

RUN python -m pip install --upgrade pip && \

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install python-dotenv

COPY . .


ENTRYPOINT ["python","app.py"]

#Create a ubuntu base image with python 3 installed.
#FROM python:3.10
#
##Set the working directory
#WORKDIR /list_users-master
#
##copy all the files
#COPY . .
#
##Install the dependencies
#RUN apt-get -y update
#RUN apt-get update && apt-get install -y python3 python3-pip
#RUN pip3 install -r requirements.txt
#
##Expose the required port
#EXPOSE 5000
#
##Run the command
#CMD gunicorn app:app



