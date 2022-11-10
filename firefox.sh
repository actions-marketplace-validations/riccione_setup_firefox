#!/bin/bash
#https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-from-mozilla-builds-for-advanced-users
#https://www.mozilla.org/en-US/firefox/106.0.5/system-requirements/
#https://ftp.mozilla.org/pub/firefox/releases/latest/README.txt

# download latest Firefox
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"

# exctraxt firefox from archive
tar xjf firefox.tar.bz2

# move to opt folder
mv firefox /opt

# create a symbol link
ln -s /opt/firefox/firefox /usr/local/bin/firefox

# check firefox version
firefox --version