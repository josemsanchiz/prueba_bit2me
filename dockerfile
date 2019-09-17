# Image Base
FROM node:latest

## Create working directory
RUN mkdir -p /opt/app

# Stablish working directory
WORKDIR /opt/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# Copy app folder
COPY . .

# Exposes 3000 port
EXPOSE 3000

# Starts the app
CMD [ "npm", "start"]