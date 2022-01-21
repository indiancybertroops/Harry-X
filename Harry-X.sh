#!/bin/bash
# instagram: @IndianCyberTroops
# Read Code And Get Out, Don't Recode Tiny Brain 
clear
N='\033[0m'
R='\033[0;31m'
G='\033[0;32m'
O='\033[0;33m'
B='\033[0;34m'
Y='\033[0;38m'       # Yellow
C='\033[0;36m'         # Cyan
W='\033[0;37m'        # White
trap 'printf "\e[1;77m \n Ctrl+C was pressed, exiting...\n\n \e[0m"; exit 0' 2

function banner() {
	
	echo -e "
        
  
${O}██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗   ██╗    ██╗  ██╗
${R}██║  ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝    ╚██╗██╔╝
${G}███████║███████║██████╔╝██████╔╝ ╚████╔╝█████╗╚███╔╝ 
${O}██╔══██║██╔══██║██╔══██╗██╔══██╗  ╚██╔╝ ╚════╝██╔██╗ 
${B}██║  ██║██║  ██║██║  ██║██║  ██║   ██║       ██╔╝ ██╗
${C}╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝       ╚═╝  ╚═╝

  ${C}A Tool By Indian Cyber Troops
Author:${O}Krishanu Sharma            
${W}Look Web With Third Eye And Check Vuln ${B}CORS(Cross-origin resource sharing)
${Y}A New Way To Gain Information In New Era
       ${B}Github:https://github.com/indiancybertroops 
       ${O}Instagram:https://instagram.com/indiancybertroops
                                       "

}
banner
echo -e "${O}[+] Checking Internet Connectivity\n"
sleep 2
if [[ "$(ping -c 1 8.8.8.8 | grep '100% packet loss')" != "" ]]; then
  echo "No Internet Connection"
  exit 1
  else
  echo "Internet is present"
  sleep 2
fi
echo -e ${N}"wait Tool Is Loading"

clear
banner
echo -e -n ${CP}"\n[+] Enter Site (e.g https://site-url.com) : "
read site
sleep 1
echo -e ${CNC}"\n[+] Searching For CORS (Cross-origin resource sharing) Misconfiguration"
ICT=$(curl -s -m5 -I $site -H "Origin: evil.com")
echo -n -e ${YELLOW}"\nURL: $i" >> output.txt
echo "$ICT" >> output.txt
if grep -q evil   <<<"$ICT"
  then
  clear
  banner
  echo -n -e ${RED}"URL: $site  [Vulnerable]\n"
  cat output.txt | grep   -e  evil  -e access-control-allow-credentials:
  rm output.txt
  else
  clear
  banner
  echo -n -e ${GREEN}" URL: $site  [Not Vulnerable]\n"
   sleep 2
   rm output.txt
 fi
