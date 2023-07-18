#!/bin/bash
####
## This script will setup a H2O GPT from a newly created AWS Ubuntu
## Step 2
###
cd ~
conda create -n h2ogpt -y
conda activate h2ogpt
conda install -y mamba -c conda-forge
mamba install python=3.10 -c conda-forge -y
conda update -n base -c defaults conda -y
git clone https://github.com/h2oai/h2ogpt.git
cd h2ogpt
for fil in requirements.txt reqs_optional/requirements_optional_langchain.txt reqs_optional/requirements_optional_gpt4all.txt reqs_optional/requirements_optional_langchain.gpllike.txt reqs_optional/requirements_optional_langchain.urls.txt ; do pip install -r $fil --extra-index https://download.pytorch.org/whl/cpu ; done
apt-get install -y libmagic-dev poppler-utils tesseract-ocr libreoffice
python -m nltk.downloader all