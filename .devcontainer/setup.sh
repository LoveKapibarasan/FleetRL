#!/bin/bash
set -e

cd ..

python -m venv .venv

source .venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

sudo apt-get update
sudo apt-get install -y glpk-utils libglpk-dev
rm .git/hooks/pre-push

pip install jupyter

jupyter notebook