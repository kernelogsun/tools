#!/bin/bash

domain=$1

# check the argument
if [ -z ${domain} ]; then
        echo "Domain Name is required."
        echo "Please specify domain name."
        exit 1
fi

# if domain is stopped, start domain
virsh list --name | grep -x ${domain}
if [ $? = 1 ]; then
        virsh list --all
        virsh start ${domain}

        while :
        do
                sleep 10
                virsh list --name | grep -x ${domain}
                if [ $? = 0 ]; then
                        break
                fi
        done
fi


virsh qemu-monitor-command --hmp ${domain} gdbserver
