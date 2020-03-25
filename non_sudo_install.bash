#!/usr/bin/env bash
set -e
IWD=$(pwd)

# 2 Ardupilot

cd $IWD/ardupilot

Tools/environment_install/install-prereqs-ubuntu.sh -y

. ~/.profile