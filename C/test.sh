#!/bin/bash

if [ "$1" = "Colleen" ]; then
    ./Colleen > tmp_Colleen
    diff tmp_Colleen Colleen.c > tmp_Diff
    if [ -s tmp_Diff ] && [ -e tmp_Diff ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi

if [ "$1" = "Grace" ]; then
    ./Grace
    diff Grace.c Grace_kid.c > tmp_Grace
    if [ -s tmp_Grace ] && [ -e tmp_Grace ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi

if [ "$1" = "Sully" ]; then
    ./Sully > tmp_Sully
    diff Sully.c tmp_Sully > tmp_Diff2
    if [ -s tmp_Diff ] && [ -e tmp_Diff2 ]
    then
        echo "KO"
    else
        echo "OK"
    fi
fi



