
##################################################################
# Warning This is not a official installer from microsoft.
# All rights of visual code studio reserved to team microsoft
##################################################################

#################################################################
# This script is intended to work in Termux which is installed with a fs From toolloa
##################################################################


printf "\n> Setting Variables \n"
#######################################################
# CONFIGS
     
     # Downloads

vs_arm64="https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600638_arm64.deb"
vs_armhf="https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600660_armhf.deb"
vs_amd64="https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600906_amd64.deb"
    
    # Download output folder

Filename="Visual_code_release_0v_1.50.1$(uname -m).deb"
filelocation="${HOME}/${Filename}"

#######################################################

function chech_arch() {
    local arch
    printf "Checking Device arch \n"
    case $(uname -m) in
    aarch64)
    download_code="vs_arm64"
    installer
    ;;
    armv7l|armv8l)
    download_code="vs_armhf"
    installer
    ;;
    x86_64)
    download_code="vs_amd64"
    installer
    ;;
    *)
    printf"\n   * Sorry your device architecture\e[1;31m $(uname -m) \e[0mis not supported \n"
    ;;
    esac
}
function check_device() {
    printf "Checking Shell path \n"
    case ${SHELL} in
    /bin/*) 
    chech_arch
    installer
    ;;
    /data/data/com.termux/files/usr/bin/*) 
    printf"\n [error : \$SHELL path]   * You running script in Termux\n"
    ;;
    *)
    printf"\n [error : \$SHELL path] \n"
    ;;
    esac
}
function installer() {
    chech_arch

    if [ ! $(command -v axel) ]; then
    apt install axel -y
    fi

    case $(whoami) in
    root)
    axel -o $filelocation $download_code || {
        printf "Error Downloading \n"
    }
    apt install -y $Filename
    ;;
    *)
    sudo axel -o $filelocation $download_code || {
        printf "Error Downloading \n"
    }
    sudo apt install -y $Filename
    ;;
    esac
    if [ ! $(command -v code) ]; then
    printf "\n Microsoft VS code installation Failed \\\\\\\\ \n"
    sleep 3
    else
    printf "\n>> Microsoft VS code installation succed. \n"
    fi


    

}
check_device
