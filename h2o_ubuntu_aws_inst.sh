#!/bin/bash
####
## This script will setup a H2O GPT from a newly created AWS Ubuntu
###

apt update
apt install gcc -y
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
bash ./Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
conda create -n h2ogpt -y
conda activate h2ogpt
conda install -y mamba -c conda-forge
mamba install python=3.10 -c conda-forge -y
conda update -n base -c defaults conda -y
git clone https://github.com/h2oai/h2ogpt.git
for fil in requirements.txt reqs_optional/requirements_optional_langchain.txt reqs_optional/requirements_optional_gpt4all.txt reqs_optional/requirements_optional_langchain.gpllike.txt reqs_optional/requirements_optional_langchain.urls.txt ; do pip install -r $fil --extra-index https://download.pytorch.org/whl/cpu ; done
