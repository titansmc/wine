#!/bin/bash

# Get Ubuntu version
UBUNTU_VERSION=$(lsb_release -rs)

echo "Detected Ubuntu version: $UBUNTU_VERSION"

if [[ "$UBUNTU_VERSION" == "22.04" ]]; then
    echo "Installing Python 3.10 for Ubuntu 22.04..."
    sudo apt update
    sudo apt install -y python3.10 python3.10-venv python3-pip git
elif [[ "$UBUNTU_VERSION" == "24.04" ]]; then
    echo "Installing Python 3.12 for Ubuntu 24.04..."
    sudo apt update
    sudo apt install -y python3.12 python3.12-venv python3-pip git
else
    echo "Unsupported Ubuntu version: $UBUNTU_VERSION"
    exit 1
fi

echo "Python installation complete."

# Instalar paquetes python
#sudo apt update && sudo apt install python3.10-venv python3-pip git

# Crear virtual environment en python
python3 -m venv datascience

# Activar entorno
source datascience/bin/activate

# Instalamos librerias que usa nuestro script
pip install pandas matplotlib ucimlrepo jupyter seaborn scikit-learn xgboost


