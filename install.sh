#!/bin/bash

if [[ $1 == "-f" ]]; then
    flags=a
else
    flags=ai
fi

cp -$flags dots/. ~/ 
