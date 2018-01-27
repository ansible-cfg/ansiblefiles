#!/bin/bash

# Copy Ansible files to Ansible server

A_SERVER_LOGIN="pi"
A_SERVER_ADDRESS="192.168.1.61"
A_SERVER_SSH="${A_SERVER_LOGIN}@${A_SERVER_ADDRESS}"
A_DIR="/data/ansible"
DEV_DIR="/data/development/ansiblefiles"
SSHPASS=`cat "/data/documents/keepass/pi_password.txt"`
export SSHPASS

sshpass -e ssh "${A_SERVER_SSH}" "rm -rf ${A_DIR}/*"
sshpass -e ssh "${A_SERVER_SSH}" "mkdir -p ${A_DIR}"
sshpass -e scp -r "${DEV_DIR}/" "${A_SERVER_SSH}:${A_DIR}/"
