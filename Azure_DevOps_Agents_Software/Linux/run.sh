#!/bin/bash

# variables

repo_owner="petrkucerak"
repo_name="scripts-library"
repo_path="Azure_DevOps_Agents_Software/Linux/software"
url="https://api.github.com/repos/${repo_owner}/${repo_name}/contents/${repo_path}"

print_header() {
   lightcyan='\033[1;36m'
   nocolor='\033[0m'
   echo -e "${lightcyan}$1${nocolor}"
}

print_header "START WITH SOFTWARE INSTALLATION"
echo "Get list of scripts"

## API limit!!!

response=$(
   curl \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: token $1" \
      $url | jq -C -r '.[] | (.download_url)'
)

sources=($response)

for source in "${sources[@]}"; do
   print_header "\nRun script ${source}"
   bash <(curl -s ${source})

done
