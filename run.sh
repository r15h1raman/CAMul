set -e
declare -a weeks=('202152' '202204' '202208' '202212' '202216' '202220' '202224' '202228' '202232' '202236')

declare -a batch=('32' '128' '512' '1024')

for b in "${batch[@]}"
do
  for w in "${weeks[@]}"
  do
      echo "$b"
      echo "$w"
      echo python -u train_hosp.py -e "$w" -b "$b" --epochs 5000 --lr $1 --patience $2 -m "$w"_$1_$2_"$b"
      python -u train_hosp.py -e "$w" -b "$b" --epochs 5000 --lr $1 --patience $2 -m "$w"_$1_$2_"$b"
  done 
done
