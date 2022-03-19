#!/usr/bin/env bash

echo "Installing curl...";
7z x curl/bin_curl.7z -o../smallFileSystem/bin > /dev/null
7z x curl/lib_libcurl.so.4.7.0.7z -o../smallFileSystem/lib/ > /dev/null
cd ../smallFileSystem/lib && ln -s libcurl.so.4.7.0 libcurl.so.4 > /dev/null
echo "Done.";
