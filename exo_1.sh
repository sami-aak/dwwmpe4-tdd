#!/usr/bin/env bash

MIN=$(( $1/60 ))
SEC=$(( $1%60 ))
if [[ $1 > 60 ]]; then
    echo "${MIN}m${SEC}s"
if [[ ]]; then 
    echo "rien ne s'affiche"
else
    echo "${1}s"
fi