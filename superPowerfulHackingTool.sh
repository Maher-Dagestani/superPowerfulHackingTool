#!/bin/bash


blue='\033[0;31m' #changed it to red later, didnt change the variable name to red cause i am lazy
cyan='\033[0;36m'

clear
echo -e "${cyan}hello ${blue}$(whoami)"
echo""
echo -e ""

echo -e "${cyan}Enter ${blue} link ${cyan} to start info gathering: "
read link
clear

echo -e "link ${blue} ${link}"

tmp=$(whiptail --checklist "" 15 60 5\
        "1" "enumerate subdomains passively" ON \
	"2" "enumerate subdomains with brute force" ON \
	"3" "enumerate subdomains with mutations" ON \
	"4" "enumerate URLs passively" ON \
	"5" "enumerate URLs with brute force" ON \
        "6" "scan internet archive" ON \
        "7" "scan for secrets in js" ON \
        "8" "probing" ON \
                    3>&1 1>&2 2>&3)




for i in {1..100}; do echo $i; sleep 0.05; done | whiptail --gauge "Loading..." 6 50 0


echo "scan complite!!"
sleep 0.5
echo ""
echo -e  "${blue} domains/URLs found:${cyan}"
sleep 0.5
echo "admin.${link}"
echo "home.${link}"
echo "product/$link}"
echo ""
sleep 0.5
echo -e "${blue} found secrets:${cyan}"
sleep 0.5
echo "DEEPSEEK_API=sk452789895243789"
echo "SUPER_SECRET_API=234578974982357"
