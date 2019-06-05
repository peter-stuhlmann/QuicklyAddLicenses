#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $ABSOLUTE_PATH

# colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
COLORRESET='\033[0m'

URL="https://licenses.peter-stuhlmann.now.sh"

shopt -s extglob

add_license=()

syntax_note() {
  printf "Please specify the license: 
  ${CYAN}license ${GREEN}-<type-of-license> ${COLORRESET}\n"
}

wget --spider --quiet $URL
if [ "$?" != 0 ]; then
  printf "${CYAN}Please check your ${GREEN}internet connection ${CYAN}or try it later again!${COLORRESET}\n"
elif [[ $# -lt 1 ]]; then
  syntax_note
else
  for i in $@; do
    case $i in   
    # Apache License 2.0
    -APC2.0) add_license+=("${URL}/apache-2.0.txt") ;;  
    # BSD 2-Clause "Simplified" License
    -BSD2) add_license+=("${URL}/bsd-2-clause.txt") ;; 
    # BSD 3-Clause "New" or "Revised" License
    -BSD3) add_license+=("${URL}/bsd-3-clause.txt") ;; 
    # Eclipse Public License 2.0
    -ECL) add_license+=("${URL}/epl-2.0.txt") ;; 
    # GNU Affero General Public License v3.0
    -AGPL3.0) add_license+=("${URL}/agpl-3.0.txt") ;; 
    # GNU General Public License v2.0
    -GPL2.0) add_license+=("${URL}/gpl-2.0.txt") ;; 
    # GNU General Public License v3.0
    -GPL3.0) add_license+=("${URL}/gpl-3.0.txt") ;;
    # GNU Lesser General Public License v2.1
    -LGPL2.1) add_license+=("${URL}/lgpl-2.1.txt") ;; 
    # GNU Lesser General Public License v3.0
    -LGPL3.0) add_license+=("${URL}/lgpl-3.0.txt") ;; 
    # MIT License
    -MIT) add_license+=("${URL}/mit.txt") ;;
    # Mozilla Public License 2.0
    -MOZ) add_license+=("${URL}/mpl-2.0.txt") ;;
    # The Unlicense
    -UNL) add_license+=("${URL}/unlicense.txt") ;
    esac
  done

  touch LICENSE

  curl ${add_license[@]} >LICENSE

  # Git
  git init
  git add LICENSE
  git commit -m "Add license" 

fi