#!/bin/bash
clear
echo "Building DID Demo..."
cd "src/indy-material/nodejs"
sh ./manage build
echo "Done."
echo "Running Up Container with Wallets:"
echo "------*------*----------------------------------------"
echo "Alice : 3005 | https://alice.wallet.drom.beta.de.com"
echo "Bob   : 3001 | https://bob.wallet.drom.beta.de.com"
echo "Faber : 3002 | https://faber.wallet.drom.beta.de.com"
echo "Acme  : 3003 | https://acme.wallet.drom.beta.de.com"
echo "Bank  : 3004 | https://bank.wallet.drom.beta.de.com"
echo "------*------*----------------------------------------"
docker-compose up -d