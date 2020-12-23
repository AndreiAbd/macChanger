$1
if [ $1 = "--help" ]
then
clear
echo " "
echo " █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀ "
echo " █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█ "
echo " "
echo "[*] Introduction:"
echo "  Mac Changer Tool, Simple bash script writen by Andrei Abd | CoderX"
echo "  this tool can change the Mac Adress name of Wlan Card Device, with"
echo "  some options,Random or Manual change."
echo "  Also this script can do loop for random change option,after select"
echo "  this type from list you can select how many time you want run your"
echo "  loop,after choise sleep time."
echo " "
echo "[*] Usage:"
echo "- First of all change mode to 755 by command: 'chmod 755 macChanger.sh'"
echo "  or chmod +x: 'chmod +x macChanger.sh'"
echo "- Run macChanger with bash or: './macChanger.sh'"
echo " "
echo "[*] Contact:"
echo "- For more information can mail by adress : usr.g0a1@gmail.com"
echo " "
read -p "[*] Press enter to back into Main List ... "
./macChanger.sh
fi


main_list () {
clear
echo " "
echo " ███╗░░░███╗░█████╗░░█████╗░ ░█████╗░██╗░░██╗░█████╗░███╗░░██╗░██████╗░███████╗██████╗░ "
echo " ████╗░████║██╔══██╗██╔══██╗ ██╔══██╗██║░░██║██╔══██╗████╗░██║██╔════╝░██╔════╝██╔══██╗ "
echo " ██╔████╔██║███████║██║░░╚═╝ ██║░░╚═╝███████║███████║██╔██╗██║██║░░██╗░█████╗░░██████╔╝ "
echo " ██║╚██╔╝██║██╔══██║██║░░██╗ ██║░░██╗██╔══██║██╔══██║██║╚████║██║░░╚██╗██╔══╝░░██╔══██╗ "
echo " ██║░╚═╝░██║██║░░██║╚█████╔╝ ╚█████╔╝██║░░██║██║░░██║██║░╚███║╚██████╔╝███████╗██║░░██║ "
echo " ╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░ ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝╚═╝░░╚═╝ "
sleep 1
echo " "
}
main_list
echo "[*] Select Number From List:"
echo " "
echo "	[1] Random Change Mac Adress."
echo "	[2] Manuale Change Mac Adress."
echo "	[3] Random Change Mac Adress with Loop."
echo " "
echo "[*] Select other options:"
echo " "
echo "	[4] Help."
echo "	[5] Exit."
echo " "
read -p "[+] Select Number to Contenuie: " number

if [ $number = 1 ]
then
main_list
echo "[0] Back into Main List."
echo "[1] Random Change Mac Adress:"
echo " "
read -p "  [+] Please Insert Wlan name: " wlan
if [ $wlan = 0 ]
then
./macChanger.sh
fi
sudo ifconfig $wlan down
sudo macchanger -r $wlan
sudo ifconfig $wlan up
echo ""
echo "[*] Back to Main ..."
echo ""
sleep 2
./macChanger.sh

elif [ $number = 2 ]
then
main_list
echo "[0] Back into Main List."
echo "[2] Manuale Change Mac Adress:"
echo " "
read -p "  [+] Please Insert Wlan name: " wlan
if [ $wlan = 0 ]
then
./macChanger.sh
fi
echo "  [!] New Mac Adress must be 12 number - 'ex : 11:22:33:44:55:66'"
read -p "  [+] Please Insert New Mac: " newMac
sudo ifconfig $wlan down
sudo macchanger -m $newMac $wlan
sudo ifconfig $wlan up
echo " "
echo "	[*] Back to Main ..."
echo " "
sleep 2
./macChanger.sh

elif [ $number = 3 ]
then
main_list
echo "[0] Back into Main List."
echo "[3] Random Change Mac Adress with Loop:"
echo " "
read -p "  [+] Please Insert Wlan name: " wlan
if [ $wlan = 0 ]
then
./macChanger.sh
fi
read -p "  [+] How much time do you want to run this loop - in seconds, Every 1 second = 1 : " lp
read -p "  [+] Please insert time between loops - in seconds, Evrey 1 second = 1 : " sec
echo "	[*] Your Mac Adress will be changed for $lp turns,For every $sec seconds ..."
echo " "
sleep 2
i=0
while [ $i -le $lp ]
do
i=`expr $i + 1`
sudo ifconfig $wlan down
sudo macchanger -r $wlan
sudo ifconfig $wlan up
echo ""
echo "	[*] Result of turn ($i) from loop number ($lp) ..."
echo "	[*] Mac Adress Changed Sucssesfuly,Waiting for $sec secounds ..."
sleep $sec
echo ""
done
read -p "[*] press enter to back into Main List ... "
./macChanger.sh

elif [ $number = 4 ]
then
clear
echo " "
echo " █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀ "
echo " █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█ "
echo " "
echo "[*] Introduction:"
echo "  Mac Changer Tool, Simple bash script writen by Andrei Abd | CoderX"
echo "  this tool can change the Mac Adress name of Wlan Card Device, with"
echo "  some options,Random or Manual change."
echo "  Also this script can do loop for random change option,after select"
echo "  this type from list you can select how many time you want run your"
echo "  loop,after choise sleep time."
echo " "
echo "[*] Usage:"
echo "- First of all change mode to 755 by command: 'chmod 755 macChanger.sh'"
echo "  or chmod +x: 'chmod +x macChanger.sh'"
echo "- Run macChanger with bash or: './macChanger.sh'"
echo " "
echo "[*] Contact:"
echo "- For more information can mail by adress : usr.g0a1@gmail.com"
echo " "
read -p "[*] Press enter to back into Main List ... "
./macChanger.sh

elif [ $number = 5 ]
then
main_list
echo "[*] Exit MacChanger."
sleep 2
exit

else
echo "[!] This Number Not Found In Main List !!!"
sleep 2
./macChanger.sh
fi
