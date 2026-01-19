contador=1
while [ $contador -lt 500 ]; do
  nohup ./curl.sh > log/response$contador.log &
  ((contador++))
done
