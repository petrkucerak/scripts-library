#!/bin/bash

print_header() {
   lightcyan='\033[1;36m'
   nocolor='\033[0m'
   echo -e "${lightcyan}$1${nocolor}"
}


print_header "Start with software installation"

cd software || exit

for f in *.sh; do
   print_header "\n$f"
   bash "$f"
   printf "done\n"
done
