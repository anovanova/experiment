FROM node:lts-alpine

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

ENV PORT=12807

EXPOSE 12807

RUN npm run build

CMD [ "http-serve", "dist"]