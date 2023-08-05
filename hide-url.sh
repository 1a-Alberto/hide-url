#!/bin/bash

clear


url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}




echo -e ""
echo -e ""
echo -e ' \e[91m[\e[92m★\e[91m] \e[32mPaste Phishing URL/Link here \e[96m(with http or https):\e[0m '
echo -en "\e[32m =>\e[0m "
read phish
url_checker $phish
echo -e ""
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e ""
echo -e ' \e[91m[\e[92m*\e[91m]\e[93m\e[1m Domain to mask the Phishing URL \e[21m\e[0m: \e[91m(Ex:\e[96m https://google.com , http://facebook.com)\e[0m'
echo -en "\e[32m =>\e[0m "
read mask
url_checker $mask
echo -e ""
echo -e ""
echo -e ' \e[91m[\e[92m*\e[91m] \e[93m\e[1mType social engineering words : \e[21m\e[0m\e[91m(Ex:\e[96m like, free-money, free-insta-followers)'
echo -e " \e[32m Don't use space just use\e[91m - \e[32mbetween social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e ""
echo -e ""
echo -e " \e[32m+=>\e[94m Processing and Modifing Phishing URL ..........\e[0m"
sleep 3
echo -e " \e[32m+=>\e[95m Generating Masking Link by 1a-Alberto\e[0m\n"
sleep 5
echo -e ""
final=$mask-$words@$shorter
echo -e " \e[91m[\e[92m★\e[91m] \e[93mYour Masking URL/Link:\e[32m ${final} \e[0m\n"
echo -e ""
echo -e ""
