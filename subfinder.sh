#!/bin/bash 
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BICyan='\033[1;96m'       # Cyan
White='\033[0;37m'        # White

echo -e  " ${BIYellow} 
    ▄████████ ███    █▄  ▀█████████▄     ▄████████  ▄█  ███▄▄▄▄   ████████▄     ▄████████    ▄████████ 
  ███    ███ ███    ███   ███    ███   ███    ███ ███  ███▀▀▀██▄ ███   ▀███   ███    ███   ███    ███ 
  ███    █▀  ███    ███   ███    ███   ███    █▀  ███▌ ███   ███ ███    ███   ███    █▀    ███    ███ 
  ███        ███    ███  ▄███▄▄▄██▀   ▄███▄▄▄     ███▌ ███   ███ ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀ 
▀███████████ ███    ███ ▀▀███▀▀▀██▄  ▀▀███▀▀▀     ███▌ ███   ███ ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   
         ███ ███    ███   ███    ██▄   ███        ███  ███   ███ ███    ███   ███    █▄  ▀███████████ 
   ▄█    ███ ███    ███   ███    ███   ███        ███  ███   ███ ███   ▄███   ███    ███   ███    ███ 
 ▄████████▀  ████████▀  ▄█████████▀    ███        █▀    ▀█   █▀  ████████▀    ██████████   ███    ███ 
                                                                                           ███    ███                                                                                                                   
                   Coded By Mohammad Obeidat 
"
echo -e " ${BICyan}
[01] : 101010 name
[02] : 89009  name
[03] : 10000  name
[04] : 1000   name 
[05] : 500    name
[06] : 100    name
"
echo "Enter word list : "
read list
echo -e "${BIRed}"
echo "Subfinder Has Been Stared"
echo "Target Host $1"
echo -e "${BIGreen}"

echo "Target ipv6 :"
host -t AAAA $1
echo " "
echo  "Target Name Server :"
host -t NS $1 | grep "name server" 
echo " "
echo "Target Mail server  :" 
host -t mx $1
echo -e "${White}"
if [ $list == "03" ] || [ $list == "3" ]
then

for subs in $(cat 10000subs.txt) 
do 
host $subs.$1 | grep " has address"  | grep -v "92.242.129.221"
done 
fi

if [ $list == "04" ] || [ $list == "4" ]
then
for subss in $(cat 1000subs.txt)
do
host $subss.$1 | grep "has address" | grep -v "92.242.129.221"
done
fi

if [ $list == "05" ] || [ $list == "5" ]
then
for subsss in $(cat 500subs.txt)
do  
host $subsss.$1 | grep "has address" | grep -v "92.242.129.221"
done
fi


if [ $list == "06" ] || [ $list == "6" ]
then
for subssss in $(cat 100subs.txt)
do  
host $subssss.$1 | grep "has address"| grep -v "92.242.129.221"
done
fi  

if [ $list == "01" ] || [ $list == "1" ]
then
for subssss in $(cat 101010subs.txt)
do  
host $subssss.$1 | grep "has address"| grep -v "92.242.129.221"
done
fi  

if [ $list == "02" ] || [ $list == "2" ]
then
for subssssss in $(cat 89009subs.txt)
do  
host $subssssss.$1 | grep "has address"| grep -v "92.242.129.221"
done
fi



