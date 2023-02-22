FROM node:16

WORKDIR /app

COPY package.json .

# Ignoring security :-)
RUN npm config set strict-ssl false

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]