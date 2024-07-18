#!/bin/bash

args=$@
pat=$1
sha=$2

sudo bash kubernetes-center/run.sh repo=kubernetes-dashboard raw_args="$args" action=deinstall pat=$pat sha=$sha
sudo bash kubernetes-center/run.sh repo=kubernetes-dashboard action=recommended pat=$pat sha=$sha yaml=true