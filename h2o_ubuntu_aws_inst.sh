#!/bin/bash
####
## This script will setup a H2O GPT from a newly created AWS Ubuntu
## Step 1
###
cd ~
apt update
apt install gcc cmake build-essential -y
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
bash ./Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
source ~/.bashrc
echo ######
echo ## You must now logout, login, and run the second part of the installation
echo ######
echo
echo


