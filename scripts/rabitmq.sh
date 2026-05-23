#!/bin/bash

# Import RabbitMQ signing keys
rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/rabbitmq-release-signing-key.asc'
rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-erlang.E495BB49CC4BBE5B.key'
rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-server.9F4587F226208342.key'

# Copy RabbitMQ repository configuration
sudo cp rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo

# Update packages
sudo dnf update -y

# Install dependencies
sudo dnf install socat logrotate -y

# Install Erlang and RabbitMQ
sudo dnf install -y erlang rabbitmq-server

# Enable and start service
sudo systemctl enable rabbitmq-server
sudo systemctl start rabbitmq-server

# Configure RabbitMQ
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'

# Create demo user
sudo rabbitmqctl add_user demo_user demo_password
sudo rabbitmqctl set_user_tags demo_user administrator
sudo rabbitmqctl set_permissions -p / demo_user ".*" ".*" ".*"

# Restart service
sudo systemctl restart rabbitmq-server
