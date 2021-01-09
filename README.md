# Toolloa
>ToolLOA is a modified version of proot-distro made to make linux installation for education purpose easier
for termux
> Basically my modded version proot-distro


# Installation
To install dependencies first upgrade your termux packages
```bash
apt update && apt upgrade -y
```
Next install dependencies
```bash
apt install bzip2 axel ncurses-utils tar proot git -y
```
Next get the source of ToolLOA
```bash
git clone https://github.com/1X1-Tech/Toolloa.git
```
Next we need cd to the Toolloa folder give permissions & install the toolloa
```bash
cd Toolloa
chmod +x install-toolloa.sh
./install-toolloa.sh
```
🧐 Toolloa is installed now
# Usage
### To install a distro
```bash
toolloa install <distro-alias>
```
### To login into your installed distro
```bash
toolloa login <distro-alias>
```
###### For example: if you want to install Ubuntu then command looks like
```bash
toolloa install Ubuntu
```
###### see in below brackets for distro-alias.
## Avalible distros
- [x] ubuntu 20.04 focal (ubuntu)
- [x] kali nethunter-rootless (nethunter)
- [x] alpine (alpine)
- [x] arch Linux (archlinux)
## Tested & supported desktop environment
- [x] xfce4
- [x] mate
- [x] lxde
- [x] lxqt
