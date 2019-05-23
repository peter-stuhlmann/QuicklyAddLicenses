#!/bin/bash

# colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
COLORRESET='\033[0m' 

shopt -s extglob

add_license=()

syntax_note() {
  printf "Please specify the license: 
  ${CYAN}license ${GREEN}-<type-of-license> ${COLORRESET}\n"
}

if [[ $# -lt 1 ]]; then
  syntax_note
else
  for i in $@; do
    case $i in   
    # Apache License 2.0
    -APC2.0) add_license+=('') ;;  
    # BSD 2-Clause "Simplified" License
    -BSD2) add_license+=('') ;; 
    # BSD 3-Clause "New" or "Revised" License
    -BSD3) add_license+=('') ;; 
    # Eclipse Public License 2.0
    -ECL) add_license+=('') ;; 
    # GNU Affero General Public License v3.0
    -GNUA3.0) add_license+=('') ;; 
    # GNU General Public License v2.0
    -GNU2.0) add_license+=('') ;; 
    # GNU General Public License v3.0
    -GNU3.0) add_license+=('') ;;
    # GNU Lesser General Public License v2.1
    -GNUL2.1) add_license+=('') ;; 
    # GNU Lesser General Public License v3.0
    -GNUL3.0) add_license+=('') ;; 
    # MIT License
    -MIT) add_license+=('') ;;
    # Mozilla Public License 2.0
    -MOZ) add_license+=('') ;; 
    # The Unlicense
    -UNL) add_license+=('') ;
    esac
  done

  touch LICENSE

  echo ${add_license[@]} >>LICENSE

  # Git
  git init
  git add LICENSE
  git commit -m "Add license" 

fi