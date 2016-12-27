#!/bin/bash

sudo cp arch/pacman.conf /etc/pacman.conf
sudo chown root:root /etc/pacman.conf
sudo pacman -Sy
