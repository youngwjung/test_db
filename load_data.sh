#!/bin/bash

while getopts ":h:u:p:d:" opt; do
  case $opt in
  h) host="$OPTARG" ;;
  u) user="$OPTARG" ;;
  p) password="$OPTARG" ;;
  esac
done

mysql --host=$host --user=$user --password=$password < employees.sql 