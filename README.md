# Toolloa
ToolLOA is a modified version of proot-distro made to make linux installation for education purpose easier
for termux
ToolLOA = ( Tool Linux On Android )
⚠️ This script dosent represents the final version of ToolLOA 
# Installation
ToolLOA has some dependencies
- proot ( to run distros )
- ncurses-utils ( used for colours )
- tar & bzip2 ( for extracting roots )
- curl ( for downloading root file systems )
- git ( to copy this source )
To install dependencies first upgrade your termux packages
```bash
apt update && apt upgrade -y
```
Next install dependencies
```bash
apt install bzip2 curl ncurses-utils tar proot git -y
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
### To login into your installed
```bash
toolloa login <distro-alias>
```
see in below brackets for distro-alias
## Avalible distros
- [x] ubuntu 20.04 focal (ubuntu)
- [x] kali nethunter-rootless (nethunter)
- [x] alpine (alpine)
- [x] arch Linux (archlinux)
- [x] Manjaro arm64 (manjaro)
- [ ] Manjaro amd64
- [ ] Manjaro armvl7
- [ ] debian
- [ ] void
- [ ] Fedora
## Tested & supported desktop environment
- [x] xfce4
- [x] mate
- [x] lxde
- [x] lxqt
- [ ] kde
- [ ] gnome
- [ ] unity
###### Iam planning to make customized good looking xfce based DE
Mostly looks like 
![A screenshot of the Arc-Darker theme](http://i.imgur.com/NC6dqyl.png)
🧐 More features comming soon
-------
# Devolopers & credits🥳
###### Main
> @SaicharanKandukuri
###### First Creator
> @xeffer

- Some scripts are took from [Andronix!](https://github.com/AndronixApp/AndronixOrigin)

