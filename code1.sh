echo "Arithmetic Computation & Sorting"
echo "1.compute1:a+b*C 2.compute2:a*b+c 3.compute3:c+a/b 4.compute4:a%b+c"


read -p "Enter some value for a : " a
read -p "Enter some value for b : " b
read -p "Enter some value for c : " c


output1=$((a+b*c))
echo "Answer of compute1 is : $output1 "
output2=$((a*b+c))
echo "Answer of compute2 is : $output2 "
output3=$((c+a/b))
echo "Answer of compute3 is : $output3 "
output4=$((a%b+c))
echo "Answer of compute4 is : $output4 "



declare -A computation

computation[compute1]="$output1"
computation[compute2]="$output2"
computation[compute3]="$output3"
computation[compute4]="$output4"

echo "computed values in array form"
computed=("$output1" "$output2" "$output3" "$output4")

echo "Descending order"

for computed in $( echo "$output1 $output2 $output3 $output4" | tr ' ' '\n' | sort -nr )
do
  echo $computed
done

echo "Ascending order"

for computed in $( echo "$output1 $output2 $output3 $output4" | tr ' ' '\n' | sort -n )
do
  echo $computed
done
