#!/bin/bash

while getopts ":h:u:p:d:" opt; do
  case $opt in
  h) host="$OPTARG" ;;
  u) user="$OPTARG" ;;
  p) password="$OPTARG" ;;
  d) database="$OPTARG" ;;
  esac
done

mysqlslap --host=$host --user=$user --password=$password \
  --create-schema=$database \
  --number-of-queries=1000 \
  --concurrency=50 --iterations=200 \
  --query="select_query.sql"
