echo "Flip coin Simulatior"
heads=0
tails=0
flips=0


for flips in {1..30}
do
throwcoin=$((RANDOM%2))
if [ $throwcoin -eq 0 ]
then
   echo "Head"
          heads+=1
else
   echo "Tail"
          tails+=1
fi
          flips+=1
done


echo "head won $heads times"
echo "tail won $tails times"

