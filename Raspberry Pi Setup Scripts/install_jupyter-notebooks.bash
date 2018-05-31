#!/bin/bash
echo "This script will install Jupyter Notebooks and Phython3 Kernel"
sudo apt-get install -y python-dev
sudo pip install  --upgrade pip
sudo pip install   jupyter
sudo apt-get install -y python-seaborn python-pandas ttf-bitstream-vera python-matplotlib
sudo pip3 install  jupyter
sudo ipython3 kernelspec install-self






