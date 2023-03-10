#!/bin/bash
#
progname=$0
brand="please_specify"
job_name=$(date +"%Y%m%d%H%M%S")

echo "Starting ${progname}"

# Check options
while :
do
  case $# in
  0)
    break
    ;;
  esac
  option=$1
  shift
  case "${option}" in
  -b | --brand )
    brand=$1
    shift
    ;;
  -j | --jobname )
    job_name=$1
    shift
    ;;
  -l | --list )
    echo
    echo Current supported crawlers
    echo

    ls -1 ./brands
    exit
    break
    ;;
  *)
    echo "usage: ${progname} [OPTION]..."
    echo
    echo "This script is used to crawl Fashin Websites"
    echo "chose the fashion brand/company you want or type ${progname} [-l|--list] to know the current options"
    echo
    echo "Options:"
    echo "  --brand   -b           specify the brand/company you want to crawl"
    echo "  --jobname -j           specify a name for the current execution"
    echo "  --list    -l           list current supported brands/companies"
    echo
    exit 1
    ;;
  esac
done
# Main launcher procedure


cd ./brands/$brand

./src/crawl.sh $job_name

exit $?