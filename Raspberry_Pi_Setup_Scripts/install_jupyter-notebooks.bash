#!/bin/bash
echo "This script will install Jupyter Notebooks and Phython3 Kernel"
sudo apt-get install -y python-dev
sudo pip install  --upgrade pip
sudo pip install jupyter
sudo apt-get install -y python-seaborn python-pandas ttf-bitstream-vera python-matplotlib
sudo pip3 install jupyter
sudo ipython3 kernelspec install-self
## Added due to known bug in prompt-toolkit v. 2.0.2 Github Jupyter issue 158 - 7/4/19"
sudo pip3 install 'prompt-toolkit==1.0.15'
sudo pip install 'prompt-toolkit==1.0.15'
echo "Done Installing Jupyter"
