#!/bin/bash
cd /var/www/scripts
rm test_out.txt
touch test_out.txt

note=0

for lit in {a..z}
do
	for lit2 in {a..z}
	do
		echo "$lit$lit2" >> test_out.txt
		let note++
	done
	for LIT in {A..Z}
	do
		echo "$lit$LIT" >> test_out.txt
		let note++
	done
done
for LIT in {A..Z}
do
	for lit in {a..z}
	do	
		echo "$LIT$lit" >> test_out.txt
		let note++
	done
	for LIT2 in {A..Z}
	do	
		echo "$LIT$LIT2" >> test_out.txt
		let note++
	done
done

echo "$note notes done"
if [ $note = 2704 ];
then
	echo "Notes count as expected"
fi
echo "Test script done"
