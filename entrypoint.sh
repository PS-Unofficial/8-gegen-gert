#!/bin/bash
cd /usr/src/8-gegen-gert/

# Start Backend
node server.js &
echo "started server.js [Back-End]"

# Start Front-End
cd ./socket-client
echo "starting socket-client [Front-End]"
echo "Access on Port 3000"
npm start

