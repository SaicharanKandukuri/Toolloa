# Toolloa
>ToolLOA is a modified version of proot-distro made to make linux installation for education purpose easier
for termux.
> Basically my modded version of proot-distro

###### see here latest mods [ Unstable ]
https://github.com/SaicharanKandukuri/Toolloa


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
###### For example: if you want to install Ubuntu bionic (18.04) then command looks like
```bash
toolloa install bionic
```
###### see in below brackets for distro-alias.
## Avalible distros
- [x] ubuntu 20.10 groovy (groovy)
- [x] ubuntu 20.04 focal (focal)
- [x] ubuntu 18.04 bionic (bionic)
- [x] kali nethunter-rootless (nethunter)
- [x] alpine (alpine)
- [x] arch Linux (archlinux)

> - Old builds like Ubuntu bionic are recomended to install cause Android blocks important syscalls in newer builds like (ubuntu(groovy,focal) , kali nethunter) which lead to problems like kde-desktop crash and etc. Be sure to notice me in issues if you find any problems except `init` dependent in newer builds.

## Tested & supported desktop environment
- [x] xfce4
- [x] mate
- [x] lxde
- [x] lxqt
