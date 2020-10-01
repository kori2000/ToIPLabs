#!/bin/bash
clear
echo "Building DID Demo..."
sh /src/indy-material/nodejs/manage build
echo "Done."
echo "Running Container:"
echo "------*--------------------"
echo "Alice : PORT = 3000 "
echo "Bob   : PORT = 3001 "
echo "Faber : PORT = 3002 "
echo "Acme  : PORT = 3003 "
echo "Bank  : PORT = 3004 "
echo "------*--------------------"
sh /src/indy-material/nodejs/manage up
