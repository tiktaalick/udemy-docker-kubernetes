# Use node 14 as the base image
FROM node:14

# Set app as the working directory
WORKDIR /app

# Copy package.json over to the working directory
COPY package.json .

# Ignoring security :-)
RUN npm config set strict-ssl false

# Here we install everything in the image, not the container
RUN npm install

# Copy the rest from Dockerfile folder to the working directory
COPY . .

# Exposing port 80 to the outside world
EXPOSE 80

# Creating a volume within the image
VOLUME [ "/app/feedback", " /app/node_modules" ]

# Here we start the server in the container, not the image
CMD ["node", "server.js"]