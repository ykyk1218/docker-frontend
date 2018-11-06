FROM node:latest
RUN npm install -g http-server

RUN mkdir /myapp
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 8080
CMD [ "http-server", "dist"]
