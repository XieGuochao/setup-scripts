#!/bin/bash

# Options:

help="
Options available:
-all: install all
-basic: install zsh
-kernel: install kernel compile dependencies
-container: install Docker
"

a_flag=''
b_flag=''
files=''
verbose='false'
all='false'

print_usage() {
  printf "$help"
}

while getopts 'abf:v' flag; do
  case "${flag}" in
    a) all='true' ;;
    b) b_flag='true' ;;
    f) files="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done

echo ${a_flag}
echo ${b_flag}
echo ${files}
echo ${verbose}
echo ${all}

