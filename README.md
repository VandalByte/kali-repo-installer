
```
█▄▀ ▄▀█ █░░ █   █▀█ █▀▀ █▀█ █▀█   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█
█░█ █▀█ █▄▄ █   █▀▄ ██▄ █▀▀ █▄█   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄
```

A Shell script to install Kali repository safely with least priority settings to any Debian based linux distribution in order to avoid clashes between native repository packages.

## Installation

First clone the repository, then navigate to folder **kali-repo-installer**.
```
git clone https://github.com/vandalsoul/kali-repo-installer.git
cd kali-repo-installer
```
Change permission for `install.sh`
```
chmod +x install.sh
```
Now run the script.
```
sudo ./install.sh
```
And there you go all done, Kali Linux repository is added.

**Important note about usage**

Preferred way of downloading the packages in my opinion will be by using `aptitude` instead of `apt`.
This is because for some Packages their dependencies are present in the Kali Linux repositories, but sometimes `apt` fails to install them.

Installing packages using `aptitude`
```
sudo aptitude install -t kali-rolling PACKAGE_NAME
```
Replace **PACKAGE_NAME** with your desired package name.

If you are too lazy like me to type the whole thing, you should create an alias for this in your terminal. LOL

## License
Made with 💖 and it's released under the **MIT license**.
