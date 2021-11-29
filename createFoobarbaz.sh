#!/bin/bash

cd /var/www/site1/
#rmdir foobarbaz
mkdir foobarbaz
cd foobarbaz


#for i in {1..9}
#do
#	touch "000$i.txt" && echo "000$i" > 000$i.txt
#done
#
#for i in {10..99}
#do
#	touch "00$i.txt" && echo "00$i" > 00$i.txt
#done
#
#for i in {100..999}
#do
#	touch "0$i.txt" && echo "0$i" > 0$i.txt
#done
#
#touch 1000.txt && echo "1000" > 1000.txt 

foo=0
bar=0

for i in {1..1000};
do
	foo=$(($i%3))
	bar=$(($i%5))
	if  [[ $foo == 0 && $bar == 0 ]];
	then
		echo "foobar" > $i.txt
	elif  [[ $foo == 0 ]];
	then
		echo "foo" > $i.txt
	else  [[ $bar == 0 ]];
		echo "bar" > $i.txt
	fi
done

echo "Script DONE"

#for ((i = 1; i <= 1000; i++)); do	#annihilator
       	#rm $i.txt 
	#echo "$i deleted" 
#done					#annihilator end

