FROM node:8

# Create directory for the app
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

EXPOSE 8080
CMD npm start