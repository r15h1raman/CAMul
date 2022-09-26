set -e
declare -a weeks=('202150' '202151' '202152' '202201' '202202' '202203' '202204' '202205' '202206' '202207' '202208' '202209' '202210' '202211' '202212' '202213' '202214' '202215' '202216' '202217' '202218' '202219' '202220''202221' '202222' '202223' '202224' '202225' '202226' '202227' '202228' '202229' '202230''202231' '202232' '202233' '202234' '202235' '202236' '202237' '202238')

declare -a batch=('32' '128' '512' '1024')

for b in "${batch[@]}"
do
  for w in "${weeks[@]}"
  do
      python -u train_hosp.py -e "$w" -b "$b" --epochs 5000 -lr $1 --patience $2 -m "$w"_$1_$2_"$b"
  done 
done
