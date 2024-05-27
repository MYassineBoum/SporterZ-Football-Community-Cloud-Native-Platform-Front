FROM node:19.5.0-alpine

WORKDIR /app

ADD package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

CMD ["ng", "serve"]
