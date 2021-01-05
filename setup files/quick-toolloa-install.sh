#!/bin/bash

# ✔️ | ❌

# A Quick install script with only necessary files
##########################################
default_file_name="Toolloa"
branch="master"
##########################################

# Root folder files 
url_prefix="https://raw.githubusercontent.com/1X1-Tech/Toolloa/${branch}"

toolloa_sh="${url_prefix}/toolloa.sh"

installer="${url_prefix}/install-toolloa.sh"

# Stable Plugins..

alpine_sh="${url_prefix}/distro-plugins/alpine.sh"

archlinux_sh="${url_prefix}/distro-plugins/archlinux.sh"

nethunter_sh="${url_prefix}/distro-plugins/nethunter.sh"

ubuntu_sh="${url_prefix}/distro-plugins/ubuntu.sh"

function wire_rf() {

    if (( ${HOME} == /data/data/com.termux/* )) && [[ -n ${HOME}]] && [[ -r ${HOME} ]] ; then

        tmp_home="${HOME}/.toolloa_tmp"
            [ -d ${tmp_home}1 ] && rm -rf ${tmp_home}1
            [ -d ${tmp_home} ] && mv ${tmp_home} ${tmp_home}1
            [ ! -d ${tmp_home} ] && mkdir ${tmp_home}

    elif [[ -z ${HOME} ]]; then

        echo "[❌] Error String \$\"HOME\" is empty in env... "
        unable_to_continue

    fi

}

function check_connection_to_git() {
    local status

    status=$(wget -q --spider www.github.com; echo $?)
    return ${status}
}

function set_dependencies() {
    local apt_exit_status
    local dependencies

    apt_exit_status=$(apt install axel >> /dev/null ; echo $?)
    dependencies="proot tar ncurses-utils"

}

function install_dependencies() {

    if (( ${apt_exit_status} == 100 )); then

    echo "[ ] Termux first Run detected. Updating and upgrading indexes and packages .."
    apt update && apt -y upgrade && apt install -y ${dependencies} || {
        clear
        echo "[[✔️]] Running Installer...."
        echo "[❌] Termux first Run detected. Updating and upgrading indexes and packages .."
        echo "[❌] Failed To upgrade"
        return 2
    }
    return 0

    fi

}

function resolv_home() {
    
}

function start() {
    local x
    x = 0
    ## Write structure

    if ! check_connection_to_git; then
    no_internet_found
    unable_to_continue
    exit 1
    else


}

function download_files() {
        if wire_rf; then

        mkdir ${tmp_home}/distro-plugins
        plugins_location="$${tmp_home}/distro-plugins"

        echo
        printf "[ ] Pulling files from github [${x}/10]"

}

function downloader() {
    curl --output ${location}/${file_name} ${url_path} >> /dev/null || printf "\n" && expr x=x+1 >> /dev/null && printf "\r"
}

#### Outputs ...

function update_fail () {
    printf "[❌] Termux first Run detected. Updating and upgrading indexes and packages ..\r\n"
}

function update_pass () {
    printf "[✔️] Termux first Run detected. Updating and upgrading indexes and packages ..\r\n"
}
function update_process () {
    printf "[ ] Termux first Run detected. Updating and upgrading indexes and packages ..\r\n"
}


function no_internet_found() {
    echo "[❌] Internet Connection failed : Error Code [${status}]"
}

function unable_to_continue() {
    echo "[❌] Unable to continue.."
}

function files_progress() {
    printf "[ ] Pulling files from github [${x}/10]"
}

function
start