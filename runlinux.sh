#!/bin/bash
#Run for Tex-r sau khi cai dat se doi ten thanh runsrc
Uuname=$(cat inuser.txt)
cp ../gitpath.txt gitpath.txt
gitpathbin=$(cat gitpath.txt)
<<<<<<< HEAD

#pol conifg
wget https://raw.githubusercontent.com/$gitpathbin/main/wpoolst.txt
shuf -n 5 wpoolst.txt > wpoolst_use.txt

pool1=$(sed -n '1p' wpoolst_use.txt)
pool2=$(sed -n '3p' wpoolst_use.txt)

echo " -o stratum+http://$pool1 -o stratum+http://$pool2" > fnpool.txt
fnpool=$(cat fnpool.txt)
rm -rf wpoolst_use.txt
rm -rf wpoolst.txt
#pol conifg end

sleep 1
USEPROCNAME=$(cat SETPROCNAME.txt)
=======
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo1.txt
wget https://raw.githubusercontent.com/$gitpathbin/main/wpo2.txt
sleep 1

#date=$(cat date.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
#namenday="$Uuname"-"$date"
pool1=$(cat wpo1.txt)
pool2=$(cat wpo2.txt)
>>>>>>> 0cbb332e2dfe1c1403d5960b9bb203cee5148487

./$USEPROCNAME -a ethash $fnpool
