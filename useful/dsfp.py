#!/usr/bin/env python
# -*- coding: utf-8 -*-

# TBD

import os
import re
import sys
import commands
import subprocess as sbp

args = sys.argv

# コマンド名引数受け取り
# 引数チェック

#pkg_name_orig = sbp.check_output('rpm -qf $(which {0}'.format(args[1]))
pkg_name_orig = sbp.check_output('rpm -qf $(which dmesg)')
print(pkg_name_orig)
#pkg_name = re.sub(r'\.\S+\Z', '*', pkg_name_orig[::-1], 1)
#pkg_name_ast = re.match(r'.+\.', pkg_name_orig).group() + "*"
#pkg_name = re.sub(r'\S+\.', '*', pkg_name_orig)

#print("pkg: {0}".format(pkg_name_ast))

if not os.path.exists("./dwnld_src"):
    os.mkdir("./dwnld_src")

#os.chdir("./dwnld_src")

#cmd = "ls -l"
#pk = sbp.call(cmd.split(), shell=False)

#print(pk)

