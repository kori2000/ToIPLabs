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
echo "Done. You can start all wallets with up.sh script"