#!/bin/bash
for i in `seq 1 8`; do
    git checkout -b "leg-$i"
    for j in `seq 1 3`; do
        echo "commit $j" >> "leg$i"
        git add .
        git commit -m "Leg $i commit $j"
    done
    git checkout master
done
