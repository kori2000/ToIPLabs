#!/bin/bash

trap_ctrlc()
{  
  # perform cleanup here
  echo "Ctrl-C caught...performing shut down"

  docker-compose down
  
  echo "Done"

  # exit shell script with error code 2
  # if omitted, shell script will continue execution
  exit 2
}

# initialise trap to call trap_ctrlc function
# when signal 2 (SIGINT) is received
trap "trap_ctrlc" 2

clear
echo "---------------------------------------------------------------------------"
echo " Building DROM DID Demo Application..."
echo "---------------------------------------------------------------------------"
cd "src/indy-material/nodejs"
sh ./manage build
echo "Done."
echo " Running Up Container with Wallets"
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
docker-compose up -d