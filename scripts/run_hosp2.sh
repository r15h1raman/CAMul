#!/bin/bash
    
i=1
while [ $i -le 30 ]
    echo Day $i
    do
    echo "./train_hosp3.py -e 202150 -m deploy_week_50 -c True -d $i"
    python ./train_hosp3.py -e 202150 -m deploy_week_50 -c True -d $i 
    
    ((i++))
    done
echo All done
