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
sleep 30
