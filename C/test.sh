#!/bin/bash

if [ "$1" = "./Colleen" ]; then
    ./Colleen > tmp_Colleen
    diff tmp_Colleen Colleen.c > tmp_Diff
    if [ -s tmp_Diff ] && [ -e tmp_Diff ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi

if [ "$1" = "./Grace" ]; then
    ./Grace > tmp_Grace
    diff Grace.c tmp_Grace > tmp_Diff
    if [ -s tmp_Diff ] && [ -e tmp_Diff ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi

if [ "$1" = "./Sully" ]; then
    ./Sully > tmp_Sully
    diff Sully.c tmp_Sully > tmp_Diff
    if [ -s tmp_Diff ] && [ -e tmp_Diff ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi



