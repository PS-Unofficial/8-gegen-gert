FROM node:16.13-bullseye-slim

# Create app directory
WORKDIR /usr/src/8-gegen-gert

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json ./
RUN npm install


WORKDIR /usr/src/8-gegen-gert/socket-client
COPY ./socket-client/package*.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
WORKDIR /usr/src/8-gegen-gert

# Bundle app source
# COPY ./entrypoint.sh ./
# COPY ./socket-client/ ./
# COPY ./server.js ./
COPY . .

EXPOSE 3000
EXPOSE 4001
COPY ./entrypoint.sh /usr/local/bin/
CMD ["sh", "entrypoint.sh" ]