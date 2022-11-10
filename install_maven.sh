#!/bin/sh
set -e

# script to install maven

# todo: add method for checking if latest or automatically grabbing latest
url="https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz"
install_dir="/var/scratch/ddps2203/maven"


mkdir ${install_dir}
curl -fsSL ${url} | tar zx --strip-components=1 -C ${install_dir}
