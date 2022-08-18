#!/bin/bash

print_header() {
   lightcyan='\033[1;36m'
   nocolor='\033[0m'
   echo -e "${lightcyan}$1${nocolor}"
}

print_header "Start with software installation"

repo_owner="petrkucerak"
repo_name="scripts-library"
repo_path="Azure_DevOps_Agents_Software/Linux/software"
url="https://api.github.com/repos/${repo_owner}/${repo_name}/contents/${repo_path}"

response=$(curl $url | jq -C -r '.[] | (.download_url)')
IFS=' ' read -r -a sources <<<"$response"

for source in "${sources[@]}"; do
   echo "$source"
done

# curl \
#   https://api.github.com/repos/${OWNER}/${REPO}/contents/${PATH}

cd software || exit

for f in *.sh; do
   print_header "\n$f"
   bash "$f"
   printf "done\n"
done
