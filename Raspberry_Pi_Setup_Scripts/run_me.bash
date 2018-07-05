#!/bin/bash
/usr/bin/git clone https://github.com/jeaimehp/Code_at_TACC_Robotics.git
cd ./Code_at_TACC_Robotics/Raspberry_Pi_Setup_Scripts
SCRIPTS_FROM="$(pwd)"
echo $SCRIPTS_FROM
echo "Starting Jupyter Notebooks and Requirements Install"
$SCRIPTS_FROM/install_jupyter-notebooks.bash
sleep 5
$SCRIPTS_FROM/configure_jupyter-notebooks.bash
echo "Starting Jupyter Service Install"
$SCRIPTS_FROM/install_jupyter-service.bash
sleep 5
echo "All done!"
echo " "
echo "You can test the Jupyter install by going to \"localhost:8888\" in your web browser"
echo "The Default Password is pi"
echo " "
echo "Installing Wireshark"
$SCRIPTS_FROM/install_wireshark.bash
echo " "
echo "Making PCAPS Folder on Desktop"
tar -xvf $SCRIPTS_FROM/Security/wireshark-pcaps.tar.gz -C /home/pi/Desktop
echo " "
echo "Adding Bookmarks"
mkdir -p /home/pi/.config/chromium/Default/
cp $SCRIPTS_FROM/Security/Bookmarks /home/pi/.config/chromium/Default/Bookmarks
sleep 30
