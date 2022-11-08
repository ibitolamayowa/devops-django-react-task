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
![image](https://user-images.githubusercontent.com/29310552/200212777-d5846165-7b2d-49a5-af7c-a841b678c303.png)

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

Building the image

`$ docker build -t obasoro/frontend .`

`$ docker run -it -p port:port image name`

![image](https://user-images.githubusercontent.com/29310552/200222502-d169ad9b-e9b3-4782-83a1-19bc299ce0cb.png)


Docker-compose.yml file
![image](https://user-images.githubusercontent.com/29310552/200222825-47a273c8-b5a5-413d-959f-ae29de69f7c2.png)






![image](https://user-images.githubusercontent.com/29310552/200222152-8134c863-f59c-48a4-a6bb-1b0e094a97ea.png)

![image](https://user-images.githubusercontent.com/29310552/200222022-eb79812c-92be-4d5e-9da5-f3c6b7ffd4ac.png)

`$ docker-compsose up`

The container image would be spinned up.

![image](https://user-images.githubusercontent.com/29310552/200222232-8d229414-ee23-4c1a-a65b-d2ca9306441e.png)

[DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04)



