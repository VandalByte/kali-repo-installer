
```
█▄▀ ▄▀█ █░░ █   █▀█ █▀▀ █▀█ █▀█   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█
█░█ █▀█ █▄▄ █   █▀▄ ██▄ █▀▀ █▄█   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄
```
![license](https://img.shields.io/github/license/vandalsoul/darkmatter-grub2-theme?style=for-the-badge)

**A Shell script to install official Kali repository safely with least priority settings to any Debian based linux distribution.**

<br>

**⚠️ WARNING** ~ *This script aims at installing repository of another distribution, so you should consider to keep a backup in case something breaks, never happened to me before 🙄 but still, you know, safety first. I won't be responsible if any damage is caused by this script, just in case if your try to sue me 😒*

## ✨ Features

- Easy to install.
- All the packages present in Kali repository will be available to download.
- Install Kali packages and also update your system normally without the fear of breaking anything.

## ⚙️ Installation

First clone the repository, then navigate to folder **kali-repo-installer**.
```shell
git clone https://github.com/vandalsoul/kali-repo-installer.git
cd kali-repo-installer
```
Give executable permission for `install.sh`
```shell
chmod +x install.sh
```
Now run the script.
```shell
sudo ./install.sh
```
And there you go all done, Kali Linux repository is added with least priority settings.

<h2><img width="2.7%" src="/media/warn.png" alt="logo" /> <b>Important</b></h2>

Preferred way of downloading any packages in my opinion will be by using `aptitude` instead of `apt`.
This is because for some Packages their dependencies are present in the Kali Linux repositories and sometimes `apt` fails to install them.

Installing packages using `aptitude`
```shell
sudo aptitude install -t kali-rolling PACKAGE_NAME
```
Replace `PACKAGE_NAME` with your desired package name.

If you are too lazy 😪 like me, you can create an alias for this in your terminal. 😂 **LOL**

## 📝 License
Made with 💖 and it's released under the **MIT license**.
