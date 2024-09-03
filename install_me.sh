#!/bin/bash

sudo apt install tmux openssh-server vim git build-essential default-jdk \
  default-jdk-doc geany gimp silversearcher-ag binwalk gitk

# Talking to embedded stuff (will require a reboot)
sudo apt-get install picocom putty
sudo adduser $USER dialout

# Adding container VM stuff (docker will require a reboot)
sudo apt install docker.io podman
sudo usermod -aG docker ${USER}


# QEMU/KVM VM stuff (will require a reboot for the new groups)
sudo apt install qemu-kvm virt-manager bridge-utils
sudo adduser $USER kvm
sudo adduser $USER libvirt

# Wireshark package and group setting (reboot required)
sudo apt install wireshark
sudo adduser $USER wireshark

# QT development (or C++ development)
sudo apt install qtbase5-dev cmake qtcreator qtcreator-doc qtbase5-doc


