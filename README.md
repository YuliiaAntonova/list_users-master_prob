# list_users-master_prob
A running version of this app can be
found [here](https://peaceful-fortress-02632.herokuapp.com).

## Running Locally

Run the following commands to get started running this app locally:

```sh
$ git clone https://github.com/memcachier/examples-flask.git
$ cd examples-flask
$ mkdir instance
$ python -m venv venv
$ source venv/bin/activate
(venv) $ pip install -r requirements.txt
(venv) $ FLASK_APP=task_list flask db upgrade
(venv) $ FLASK_APP=task_list FLASK_ENV=development flask run
```

Then visit `http://localhost:5000` to play with the app.

## Deploying to Heroku

Run the following commands to deploy the app to Heroku:

```sh
$ git clone https://github.com/memcachier/examples-flask.git
$ cd examples-flask
$ heroku create
Creating app... done, ⬢ rocky-chamber-17110
https://rocky-chamber-17110.herokuapp.com/ | https://git.heroku.com/rocky-chamber-17110.git
$ heroku addons:create memcachier:dev
$ heroku addons:create heroku-postgresql:hobby-dev
$ heroku config:set FLASK_APP=task_list
$ heroku config:set SECRET_KEY="`< /dev/urandom tr -dc 'a-zA-Z0-9' | head -c16`"
$ git push heroku master
$ heroku open
```
