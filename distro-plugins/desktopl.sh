#
# Plug-In for Toolloa 
#
DISTRO_NAME="DesktopL"
DISTRO_COMMENT="This a tweaked version of kali xfce for termux with minimal DE"

# Rootfs is in subdirectory.
DISTRO_TARBALL_STRIP_OPT=1

# Returns download URL.
get_download_url() {
	case "$(uname -m)" in
		aarch64)
			echo "https://build.nethunter.com/kalifs/kalifs-latest/kalifs-arm64-minimal.tar.xz"
			;;
		armv7l|armv8l)
			echo "https://build.nethunter.com/kalifs/kalifs-latest/kalifs-armhf-minimal.tar.xz"
			;;
		i686)
			echo "https://build.nethunter.com/kalifs/kalifs-latest/kalifs-i386-minimal.tar.xz"
			;;
		x86_64)
			echo "https://build.nethunter.com/kalifs/kalifs-latest/kalifs-amd64-minimal.tar.xz"
			;;
	esac
}


# Define here additional steps which should be executed
# for configuration.
# this where twaking Goes
distro_setup() {
	# Fix ~/.bash_profile.
	cat <<- EOF > ./root/.bash_profile
	. /root/.bashrc
	. /root/.profile
	EOF
    printf "\n[*]Setting up base file\n"
    run_proot_cmd apt update
    run_proot_cmd apt install sudo axel -y
    run_proot_cmd sudo apt upgrade -y
	axel -o setup-desktopl.sh https://raw.githubusercontent.com/1X1-Tech/Toolloa/master/setup%20files/setup-desktopl.sh
         cd /
 chmod +x /setup-desktopl.sh
	bash /setup-desktopl.sh
    
}
	
