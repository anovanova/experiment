FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

ENV PORT=12807

EXPOSE 12807

CMD [ "npm", "start"]