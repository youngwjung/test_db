#!/bin/bash

while getopts ":h:u:p:d:" opt; do
  case $opt in
  h) host="$OPTARG" ;;
  esac
done

while true;
do
  date
  host $host |grep alias
  nc -vvvz $host 3306
  sleep 5
done
  