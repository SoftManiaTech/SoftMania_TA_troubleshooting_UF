#!/bin/sh
now=$(date +'%Y_%d%m %H:%M-%S')
echo "$now cpu=$(($RANDOM%100)), memory=$(($RANDOM%100)), disk=$(($RANDOM%100))"