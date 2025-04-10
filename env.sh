#!/bin/bash

# Prompt for the sudo password
read -s -p "Enter your sudo password: " SUDO_PASS
echo

# Get Ubuntu version
UBUNTU_VERSION=$(lsb_release -rs)

echo "Detected Ubuntu version: $UBUNTU_VERSION"

if [[ "$UBUNTU_VERSION" == "22.04" ]]; then
    echo "Installing Python 3.10 for Ubuntu 22.04..."
    echo "$SUDO_PASS" | sudo -S apt update
    echo "$SUDO_PASS" | sudo -S apt install -y python3.10 python3.10-venv python3-pip git
elif [[ "$UBUNTU_VERSION" == "24.04" ]]; then
    echo "Installing Python 3.12 for Ubuntu 24.04..."
    echo "$SUDO_PASS" | sudo -S apt update
    echo "$SUDO_PASS" | sudo -S apt install -y python3.12 python3.12-venv python3-pip git
else
    echo "Unsupported Ubuntu version: $UBUNTU_VERSION"
    exit 1
fi

echo "Python installation complete."

# Create virtual environment using appropriate Python version
PYTHON_CMD="python3"

$PYTHON_CMD -m venv datascience

# Activate environment
source datascience/bin/activate

# Install required Python libraries
pip install pandas matplotlib ucimlrepo jupyter seaborn scikit-learn xgboost

echo "Setup complete."
