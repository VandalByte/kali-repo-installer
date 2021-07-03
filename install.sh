#
# ▒█░▄▀ █▀▀█ █░░ ░▀░ 　 ▒█▀▀█ █▀▀ █▀▀█ █▀▀█ 　 ▀█▀ █▀▀▄ █▀▀ ▀▀█▀▀ █▀▀█ █░░ █░░ █▀▀ █▀▀█ 
# ▒█▀▄░ █▄▄█ █░░ ▀█▀ 　 ▒█▄▄▀ █▀▀ █░░█ █░░█ 　 ▒█░ █░░█ ▀▀█ ░░█░░ █▄▄█ █░░ █░░ █▀▀ █▄▄▀ 
# ▒█░▒█ ▀░░▀ ▀▀▀ ▀▀▀ 　 ▒█░▒█ ▀▀▀ █▀▀▀ ▀▀▀▀ 　 ▄█▄ ▀░░▀ ▀▀▀ ░░▀░░ ▀░░▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀░▀▀
#                                                                      Coded by Vandal
#
# A Shell script to install official Kali repository safely with least priority settings to 
# any Debian based linux distribution in order to avoid clashes between native repository packages.
#
# GITHUB repository : https://github.com/vandalsoul/kali-repo-installer
#

# Banner
printf "\n\033[0;36m               _               ___                           \n"
printf "\033[0;36m |/  _. | o   |_)  _  ._   _    |  ._   _ _|_  _. | |  _  ._ \n"
printf "\033[0;36m |\ (_| | |   | \ (/_ |_) (_)  _|_ | | _>  |_ (_| | | (/_ |  \n"
printf "\033[0;36m                      |                                      \n"
printf "                                    \033[0mCode written by \033[0;36mVandal\033[0m\n\n"

# Script
not_root () { [ "$(id -u)" -ne 0 ]; }
if not_root; then
    printf "\n\033[1;31m(!)\033[0m Run the script using 'sudo' or as root !!\n\n" >&2
    exit 1
fi

# Installing dependencies
printf "\n\033[1;32m(~)\033[0m Installing dependencies...\n\n"
apt update && apt install gnupg -y
printf "\n\033[1;35m(!)\033[0m Done !!\n"

# Adding repository to sources
printf "\n\033[1;32m(~)\033[0m Adding repository to sources...\n"
printf 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
printf "\n\033[1;35m(!)\033[0m Done !!\n"

# Downloading and installing key
printf "\n\033[1;32m(~)\033[0m Downloading Kali Linux archive key from \033[0;36mhttps://archive.kali.org/archive-key.asc\033[0m \n\n"
wget 'https://archive.kali.org/archive-key.asc'
apt-key add archive-key.asc
rm -rf "archive-key.asc"  # removing key file

# Changing priority
printf "\n\033[1;32m(~)\033[0m Changing priority of Kali Linux repository...\n"
echo 'Package: *'>/etc/apt/preferences.d/kali.pref; echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref; echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref
printf "\n\033[1;35m(!)\033[0m Done !!\n"

# Updating repositories
printf "\n\033[1;32m(~)\033[0m Updating Repositories...\n\n"
apt update
printf "\n\033[1;35m(!)\033[0m Yayy! \033[1;31mKali Linux\033[0m repository added Successfully !!\n\n"

exit 0