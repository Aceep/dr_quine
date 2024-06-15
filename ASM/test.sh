#!/bin/bash

if [ "$1" = "Colleen" ]; then
    ./Colleen
    echo -e "Colleen should display its own source code. But it can't be tested by the script for now. Sorry. \n"
fi

if [ "$1" = "Grace" ]; then
    echo -e "Test Grace\nGrace should create a file named Grace_kid.s which should be the same as the original file."
    ./Grace
    diff Grace.c Grace_kid.s > tmp_Grace
    echo -ne "diff the output(Grace_kid.c) and the original file(Grace.s).\nThey should be identical : "
    if [ -s tmp_Grace ] && [ -e tmp_Grace ]
    then
        echo -e "KO\n"
    else
        echo -e "OK\n"
    fi
fi

if [ "$1" = "Sully" ]; then
    echo -e "Test Sully\nSully should create 13 files named Sully_X.c where X is the number of files created."
    if [ -e tmp_3 ]
    then
        rm tmp_3
    fi
    ./Sully
    LS=$(ls -l | grep Sully | wc -l)
    COUNT=4
    diff Sully.c Sully_4.c >> tmp_3
    while [ $COUNT -gt 0 ]; do
        diff Sully_$COUNT.c Sully_$((COUNT - 1)).c >> tmp_3
        COUNT=$((COUNT - 1))
    done
    nombre_lignes=$(wc -l < tmp_3)
    echo -ne "diff the output(Sully_X.c) and the original file(Sully.c).\nThe number of lines should be 20 and the number of files should be 13 : "
    if [ $nombre_lignes -eq 20 ] && [ $LS -eq 13 ]
    then
        echo "OK"
    else
        echo "KO"
    fi
fi



