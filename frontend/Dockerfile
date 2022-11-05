<<<<<<< HEAD
FROM node:alpine
ARG PORT

# Create app directory
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app/

RUN npm cache clean --force

#COPY node_modules/ ./

#RUN apt-get update && apt-get install netcat-openbsd -y

RUN npm install

# Bundle app source
COPY . .

# Port

EXPOSE 3000

RUN npm run build

CMD [ "npm", "start" ]

FROM nginx:stable-alpine

COPY . /usr/share/nginx/html
=======
# We don't want to start from scratch.
# That is why we tell node here to use the current node image as base.
FROM node:alpine

# The /app directory should act as the main application directory
WORKDIR '/app'

# Copy the app package and package-lock.json file
COPY package*.json .

# Install node packages
RUN npm install

# Copy or project directory (locally) in the current directory of our docker image (/app)
COPY . .

# Build the app
RUN npm run build
# Start the app
CMD [ "npm", "start" ]




>>>>>>> 030accaa06abaa0c1ccaff0c4b91d228d3dd6b1e

