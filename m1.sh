#!/bin/bash

echo "dangtin281/Azure_V2" > gitpath.txt
gitpath=$(head -1 gitpath.txt)
whoami > inuser.txt

wget https://raw.githubusercontent.com/$gitpath/main/ubuntu-driver-ins.sh
chmod +x ubuntu-driver-ins.sh

./ubuntu-driver-ins.sh
