#!/bin/bash
echo "Creates and launches the Jupyter Notebooks Service"
sudo cp ./jupyter.service /usr/lib/systemd/system/jupyter.service
echo "Enabling and launching the service"
sudo systemctl enable jupyter.service
sudo systemctl daemon-reload
sudo systemctl restart jupyter.service

