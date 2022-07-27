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

RUN pip install --upgrade pip

RUN adduser -D myuser
USER myuser
WORKDIR /home/myuser

COPY --chown=myuser:myuser requirements.txt requirements.txt
RUN pip install --user -r requirements.txt
RUN pip install python-dotenv
ENV PATH="/home/user/.local/bin:${PATH}"

COPY --chown=myuser:myuser . .

#WORKDIR /app
#
#COPY requirements.txt .
#RUN pip install -r requirements.txt
#
#COPY . .

CMD ["python3", "app.py"]