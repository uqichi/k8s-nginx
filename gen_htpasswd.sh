#!/bin/sh

pw=$(pwgen -1)
echo $pw > .basic-pw
echo "dummy:$(openssl passwd -quiet -crypt $pw)" | base64
