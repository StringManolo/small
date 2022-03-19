# small

Small is a tiny userland distro. This is the aarch64 version patched to run with proot-distro under termux.

##### Full Install on Termux

```bash
git clone https://github.com/stringmanolo/small
cd small
pkg install proot-distro
7z x reduced.7z
cp reduced -r smallFileSystem
./configureSmallDistro.sh
cd packages
./install_all.sh
cd ../
./installInProotDistro.sh
```

##### Usage

- Login into small:
```bash
small
```

- Run a command inside small
```bash
small ls -a
```

##### Files
- ###### [README.md](https://github.com/StringManolo/small/blob/master/README.md)  
This file.

- ###### [TODO.md](https://github.com/StringManolo/small/blob/master/TODO.md)  
Ideas for the future.

- ###### [alpine-minirootfs-3.15.0-aarch64.tar.gz](https://github.com/StringManolo/small/blob/master/alpine-minirootfs-3.15.0-aarch64.tar.gz)  
Used as a small base distro

- ###### alpineBase (extract it from miniroot)  
Used to create new distros

- ###### [cleanSmall.sh](https://github.com/StringManolo/small/blob/master/cleanSmall.sh)  
Replace the small filesystem by alpine filesystem

- ###### [configureSmallDistro.sh](https://github.com/StringManolo/small/blob/master/configureSmallDistro.sh)  
Add nameservers to /etc/resolv.config  
Remove env variables from host to avoid leakage  
Add env variables to small  
Add bin locations to $PATH  
Add terminal colors and prompt shell  
Add aliases  
Add bash shell options (if bash is installed)  

- ###### [exportInstalledSmall.sh](https://github.com/StringManolo/small/blob/master/exportInstalledSmall.sh)  
Export small with all changes made directly from the system (packages installed, new files, etc)

- ###### [exportSmall.sh](https://github.com/StringManolo/small/blob/master/exportSmall.sh)  
Export small directory, changes made directly from the system are not reflected

- ###### [installInProotDistro.sh](https://github.com/StringManolo/small/blob/master/installInProotDistro.sh)  
Install small in proot-distro  
Add small to /bin  
Other installed versions, will be removed (all files inside too)

- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)  
Extra packages (tweeaked and compressed to be smaller) will be here  
You can install by going into this folder and run the scripts
Usefull to install packages without APK (reduces the size)  

- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)/[install_all.sh](https://github.com/StringManolo/small/blob/master/packages/install_all.sh)  
Install all avaiable packages:  
  + APK (Alpine official package manager)  
  + Curl (Data transfer utility/cli http client)  
  
- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)/[apk](https://github.com/StringManolo/small/tree/master/packages/apk)   
APK package manager compressed files  
  
- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)/[install_apk.sh](https://github.com/StringManolo/small/blob/master/packages/install_apk.sh)  
Install the APK (Alpine Package Manager) in small  
  
- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)/[curl](https://github.com/StringManolo/small/tree/master/packages/curl)    
Curl binary and lib files  
  
- ###### [packages](https://github.com/StringManolo/small/tree/master/packages)/[install_curl.sh](https://github.com/StringManolo/small/blob/master/packages/install_curl.sh)   
Install the curl utility  
  
- ###### reduced (extract it from [reduced.7z](https://github.com/StringManolo/small/blob/master/reduced.7z))  
Smallest possible version of small  
  
- ###### smallFileSystem  (extract it from [reduced.7z](https://github.com/StringManolo/small/blob/master/reduced.7z) and rename it to smallFileSystem)
The small files that will be installed in proot-distro  
  
- ###### [startSmall.sh](https://github.com/StringManolo/small/blob/master/startSmall.sh)  
Old file to run small in desktop/PC  
Ignore it, possible not working with this patched small version  
