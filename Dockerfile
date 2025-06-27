FROM node:18-alpine

WORKDIR /app

RUN npm install -g mintlify

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["mintlify", "dev"] 