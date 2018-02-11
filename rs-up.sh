#!/bin/bash
echo '}{ Restaurar sessão - UP }{'
echo ' '
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get update
echo ' '
echo '}{ Conluido! }{'
echo ' '