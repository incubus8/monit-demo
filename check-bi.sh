#!/bin/bash
# Author: Rheza Satria (c) 2017

url="google.com"
words="'penelusuran lanjutan'"

(curl -L $url | grep -i 'penelusuran lanjutan') && exit 0 || exit 1
