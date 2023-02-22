FROM node

WORKDIR /app

COPY package.json .

# Ignoring security :-)
RUN npm config set strict-ssl false

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["node", "app.js"]