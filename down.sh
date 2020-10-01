#!/bin/bash

clear
echo "Shutting Down Container with Wallets:"
echo "-------*------*----------------------------------------"
echo " Alice : 3005 | https://alice.wallet.drom.beta.de.com"
echo " Bob   : 3001 | https://bob.wallet.drom.beta.de.com"
echo " Faber : 3002 | https://faber.wallet.drom.beta.de.com"
echo " Acme  : 3003 | https://acme.wallet.drom.beta.de.com"
echo " Bank  : 3004 | https://bank.wallet.drom.beta.de.com"
echo "-------*------*----------------------------------------"
cd "src/indy-material/nodejs"
docker-compose down