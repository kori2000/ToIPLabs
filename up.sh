#!/bin/bash

function trap_ctrlc () {
    # perform cleanup here
    echo "Ctrl-C caught...performing clean up"
    cd "src/indy-material/nodejs"
    docker-compose down
 
    echo "Doing cleanup"
 
    # exit shell script with error code 2
    # if omitted, shell script will continue execution
    exit 2
}

# initialise trap to call trap_ctrlc function
# when signal 2 (SIGINT) is received
trap "trap_ctrlc" 2

clear
echo "Running Container with Wallets:"
echo "------*------*----------------------------------------"
echo "Alice : 3005 | https://alice.wallet.drom.beta.de.com"
echo "Bob   : 3001 | https://bob.wallet.drom.beta.de.com"
echo "Faber : 3002 | https://faber.wallet.drom.beta.de.com"
echo "Acme  : 3003 | https://acme.wallet.drom.beta.de.com"
echo "Bank  : 3004 | https://bank.wallet.drom.beta.de.com"
echo "------*------*----------------------------------------"
cd "src/indy-material/nodejs"
docker-compose up -d