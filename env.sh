#!/bin/bash

_host=$(uname -m)-$(uname -s)
echo $_host
if [ ! -d $_host ]; then
    echo "sorry we don't support $_host yet."
fi

export PATH=$(pwd)/$_host:$PATH

