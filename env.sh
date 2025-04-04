#!/bin/bash

# Instalar paquetes python
sudo apt install python3.10-venv python3-pip git

# Crear virtual environment en python
python3 -m venv datascience

# Activar entorno
source datascience/bin/activate

# Instalamos librerias que usa nuestro script
pip install pandas matplotlib ucimlrepo seaborn


