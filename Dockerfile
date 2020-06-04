FROM node:12

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . ./

RUN chmod +x start.sh

ENTRYPOINT ["docker-entrypoint.sh"]