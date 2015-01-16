#!/bin/bash
for i in `seq 1 8`; do
    git checkout -b leg$i
    echo leg$i > leg$i
    git add .
    git commit -m "Leg $i"
    git checkout master
done
