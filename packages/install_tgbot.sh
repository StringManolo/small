#!/usr/bin/env bash


echo -e "\nIf you are not going to run ./configureSmallDistro.sh , remember to add manualy the nameservers to /etc/resolv.conf, so you can reach telegram servers.\n"

echo "Installing tgbot...";
7z x tgbot/tgbot.7z -o../smallFileSystem/bin/ > /dev/null
echo 'Replace this line by your password and log in telegram using /login mypassword' > ../smallFileSystem/bin/password.txt;
echo 'Replace this line by your telegram bot_api token. You can get it from here https://t.me/BotFather or by searching BotFather in telegram.' > ../smallFileSystem/bin/token.txt;
echo "Read the /bin/password.txt and /bin/token.txt files to set your password and telegram token";

7z x tgbot/usr_lib_cpp.7z -o../smallFileSystem/usr/lib/ > /dev/null
actualPath=$(pwd);
cd ../smallFileSystem/usr/lib/
ln -s libstdc++.so.6.0.28 libstdc++.so.6


# Uses curl to fetch the tgapi 
cd "$actualPath"
./install_curl.sh > /dev/null
echo "\nDone.";

