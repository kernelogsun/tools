#!/bin/bash
set -ex

data=$1
cmn=$2

gnuplot -e "set style data lines; plot '${data}' using $cmn; pause -1"
