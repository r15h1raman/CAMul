#!/bin/bash
    
i=1
while [ $i -le 7 ]
    echo Day $i
    do
    python ./train_hosp3.py -e 202149 -m deploy_week_49_tune -c True -d $i 
    ((i++))
    done
echo All done
