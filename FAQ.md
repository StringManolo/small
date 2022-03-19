# FAQ

##### What is small?  
Small is a Linux distro (fork from alpine miniroot filesystem)

##### What is the intended usage of Small?  
- Portable distribution you can run in aarch64 smartphones. Sucks to configure your system over and over across devices. You can install small once in your device, export it with your installed packages and install it in another devices.  
  

- Base for another distros or package groups. For example, you can install your programming language frameworks and tools and export the installed rootfs to install in other devices.  
  

- Minimal distribution for low storage devices. Some smartphones have only 8 gigabytes (or even less) of available memory. This is one of the smallest proot-distros you will find (Less than 6 megabytes). This will let you install your packages using the minimal possible available space


##### How can i compile my program and use it in small?
Follow instrutions from here https://github.com/StringManolo/dev-small  
Once you have your program compiled, you can move it to /data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/small/bin/ folder. Then just log into small and run your command.

##### Why isn't it working for me?
The public version only works on aarch64, termux and proot-distro  
The project can work anywhere, but you need versions of mostly everything for another archs, libs, etc. If you are going to make a version, you probably want to fork this repo and change everything.  
I have tested other archs even in desktop x86_64 using proot without termux and without proot-distro (using proot). Is in my TODO.md list add support to other archs.  
  
##### I don't see any license, why?
Each file may have his own license, and I'm not to interested in add each one, references to what license each file is using...  
Usually I never add any licenses to my repos for same reassons. You can reach me in Telegram or Twitter if you have more questions 
