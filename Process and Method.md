Here is your stage 2 task:

### containerisation :package:.

You are provided a simple application with the frontend in JavaScript(React) and backend in Python(Django). 
Follow instructions on how to deploy the application locally on your server. It should look like this. NB: It should have your slack display name

1. You are then required to build docker images of the frontend and backend using a Dockerfile for each and push them to a docker repository eg docker hub, ecr etc.
2. You are then required to create a docker-compose file that can spin up images into containers and are connected with one another. A simple docker-compose up should be able to start the application. If successful the frontend application should run on port 3000 of your server IP.
3. You are then required to use reverse proxy with NGINX to point port 3000 to the IP of your server.
Push your code to GitHub, it should be in the following format.


### Fork the repo and clone into your system/server

### customize the the name 

1. Open <bold>App.js</bold> with the Frontend folder and change the name to user slack name

2. You can test the frontend by running this commands

```
`$ cd frontend`

`$ npm i`

`$ npm start`

```

```
To test the backend also... Navigate into the folder api

Create a virtual environment

`$ python3 -m venv env`

`$ source env/bin/activate`

`$ pip install -r requirement`

`$ python manage.py runserver`

## Create a Dockerfile

```
You either do it on the CLI or open a Vscode. I will be using Vscode because of ease and accessibility to CLI also


