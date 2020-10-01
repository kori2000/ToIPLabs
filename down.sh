#!/bin/bash

clear
echo "---------------------------------------------------------------------------"
echo " Shutting Down Container with Wallets"
echo "----------+------+------+--------------------------------------------------"
echo " Asset    : 3005 | https://wallet.asset.drom.beta.de.com"
echo " Roland   : 3001 | https://wallet.roland.drom.beta.de.com"
echo " Marta    : 3002 | https://wallet.marta.drom.beta.de.com"
echo " Luisa    : 3003 | https://wallet.luisa.drom.beta.de.com"
echo " Andrei   : 3004 | https://wallet.andrei.drom.beta.de.com"
echo " Cemil    : 3006 | https://wallet.cemil.drom.beta.de.com"
echo " Koraltan : 3007 | https://wallet.koraltan.drom.beta.de.com"
echo "----------+------+------+--------------------------------------------------"
echo " Ledger Discover : 9000 | https://wallet.ledger-explorer.drom.beta.de.com"
echo "----------+------+------+--------------------------------------------------"
cd "src/indy-material/nodejs"
docker-compose down