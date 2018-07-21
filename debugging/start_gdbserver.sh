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


cat << EOS
--- Note ---

e.g.
1. gdb
2. (gdb) file /usr/lib/debug/lib/modules/<version>/vmlinux
3. (gdb) add-symbole-file /usr/lib/debug/lib/modules/<version>/kernel/fs/xfs/xfs.ko.debug <module address of connection guest (*1)>
4. (gdb) b xfs_sysctl_register
5. (gdb) target remote :1234
6. (gdb) c

----

(*1) How to check a module address

     1. login guest os
     2. modprobe xfs (if not load)
     3. cat /sys/module/xfs/sections/.text
        0xffffffffc0e7f000

-----------
EOS
virsh qemu-monitor-command --hmp ${domain} gdbserver
