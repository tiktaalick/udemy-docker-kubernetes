# This image is based on the node image
FROM node

# The working directory inside the container
WORKDIR /app

# Here we copy from root outside the container to app inside the container
# COPY . /app

# The same as above, but then relative to the working directory
COPY . ./

# Ignoring security :-)
RUN npm config set strict-ssl false

# Here we install everything in the image, not the container
RUN npm install

# Exposing port 80 to the outside world
EXPOSE 80

# Here we start the server in the container, not the image
CMD ["node", "server.js"]