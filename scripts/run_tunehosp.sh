#!/bin/bash
    
    for i in 1 2 3 4 5 6 7 8 9 10 
    do
    echo Day $i
    python ./train_hosp3.py -e 202150 -m deploy_week_50_st -c True -d $i --samples 1
    ((i++))
    done
    
    for i in 11 12 13 14 15 16 17 18 19 20 
    do
    echo Day $i
    python ./train_hosp3.py -e 202150 -m deploy_week_50_st -c True -d $i --samples 3
    ((i++))
    done
    
    for i in 21 22 23 24 25 26 27 28 29 30 
    do
    echo Day $i
    python ./train_hosp3.py -e 202150 -m deploy_week_50_st -c True -d $i --samples 5
    ((i++))
    done
    

