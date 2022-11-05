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

