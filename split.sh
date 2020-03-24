#! /bin/bash

if [[ -z $1 ]]; then
	printf "Enter original wireless interface!\n"
	exit 1
fi

if [[ -z $2 ]]; then
        printf "Enter extra  wireless interface!\n"
        exit 1
fi

sudo iw dev $1 interface add $2 type station

sudo airmon-ng start $2

sudo iw $2 del

clear

echo "Success!"

echo

echo

ip a

sleep 3
