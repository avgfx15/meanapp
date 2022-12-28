FROM node:16-alpine As builder

WORKDIR /app

COPY ./package*.json ./

RUN npm install -g npm@9.2.0

COPY . . 

EXPOSE 4200

CMD ["npm", "run", "start"]


