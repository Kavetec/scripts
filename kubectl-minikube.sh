#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install kubectl (Version v1.23.0)
echo "Installing kubectl v1.23.0..."
curl -LO "https://dl.k8s.io/release/v1.23.0/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Verify kubectl installation
echo "Verifying kubectl installation..."
kubectl version --client

# Install Minikube
echo "Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

# Verify Minikube installation
echo "Verifying Minikube installation..."
minikube version

# Start Minikube using Docker driver
echo "Starting Minikube with Docker..."
minikube start --driver=docker

# Check Minikube status
minikube status

# Installation complete
echo "kubectl and Minikube installation completed!"
