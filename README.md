# Toolloa (Old read me )
[ Warning this a work in progress branch ]
ToolLOA is a modified version of proot-distro made to make linux installation for education purpose easier
for termux
> ToolLOA = ( Tool Linux On Android )
> ⚠️ This script dosent represents the final version of ToolLOA 
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
dont use <> symbols in installation command 🤦‍♂️
###### see in below brackets for distro-alias.
## Avalible distros
- [x] ubuntu 20.10 groovy (groovy)
- [x] ubuntu 20.04 focal (focal)
- [x] ubuntu 18.04 bionic (bionic)
- [x] kali nethunter-rootless (nethunter)
- [x] alpine (alpine)
- [x] arch Linux (archlinux)

## Tested & supported desktop environment
- [x] xfce4
- [x] mate
- [x] lxde
- [x] lxqt


# Devolopers & credits🥳
###### ToolLOA creator
> @SaicharanKandukuri
###### First source (origin - proot-distro)
> @xeffer

- Some code is took from [Andronix!](https://github.com/AndronixApp/AndronixOrigin)
