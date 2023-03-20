#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install openjdk-11-jdk -y

dpkg-reconfigure tzdata