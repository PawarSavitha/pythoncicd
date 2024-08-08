#!/bin/bash

# Local Setup Script

# Define local paths
PROJECT_DIR=$(pwd)
VENV_DIR="$PROJECT_DIR/venv"

# Create a virtual environment
if [ ! -d "$VENV_DIR" ]; then
  echo "Creating virtual environment..."
  python -m venv $VENV_DIR
fi

# Activate the virtual environment
source $VENV_DIR/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Run the application
echo "Running the application..."
python src/main.py
