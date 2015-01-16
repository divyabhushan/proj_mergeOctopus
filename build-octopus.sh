#!/bin/bash
merge_cmd="git merge --no-ff"
for i in `seq 1 8`; do
    git checkout -b "leg-$i"
    for j in `seq 1 3`; do
        echo "commit $j" >> "leg$i"
        git add .
        git commit -m "Leg $i commit $j"
    done
    merge_cmd="$merge_cmd leg-$i"
    git checkout master
done
eval $merge_cmd
