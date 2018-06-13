#!/bin/bash
echo "Doing Some configuring"
sudo apt-get install expect -y
sleep 5
/usr/local/bin/jupyter notebook --generate-config
echo "c.NotebookApp.ip = '*'" >> /home/pi/.jupyter/jupyter_notebook_config.py
./jupyter-notebook-passwordset.expect
