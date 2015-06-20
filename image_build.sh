#!/bin/sh
# php:5.6.9-fpm-pg-gd-mbstring
PGM='php'
#MAIN_VER=`date +%Y%m%d`
MAIN_VER='5.6.9-fpm'
SUB_VER='-pg-gd-mbstring'
VER=${MAIN_VER}${SUB_VER}

docker build -t siuyin/${PGM}:${VER} .
