#!/bin/sh

trap "exit" INT

printf "Checking for sudo privileges...\n";
sudo -n true &> /dev/null;

if [ "$?" -eq "0" ]; then
    printf "Running in a session with sudo privileges, continuing\n";
else
    printf "This scripts need sudo privileges to continue\n";
    sudo ls &> /dev/null;
fi

printf "Checking for current VPN configuration...\n";
ip addr show halia &> /dev/null;

if [ "$?" -eq "0" ]; then
    printf "Found partial connection, switching...\n";
    printf "Disabling halia partial...\n";
    wg-quick down halia &> /dev/null;
    printf "Starting halia-full...\n";
    wg-quick up halia-full &> /dev/null;
    printf "Successfully switched to full VPN connection\n";
else
    printf "Found full connection, switching...\n";
    printf "Disabling halia-full...\n";
    wg-quick down halia-full &> /dev/null;
    printf "Starting halia partial...\n";
    wg-quick up halia &> /dev/null;
    printf "Successfully switched to partial VPN connection\n";
fi
