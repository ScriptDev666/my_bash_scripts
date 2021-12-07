#!/bin/bash

pathto="/var/www/site1/"
[ -d "$pathto" ] || { echo "ERR: $pathto not exist"; exit 1; } #directory existance check
cd $pathto

noteCount=0 #counter declaration

for note in {a..z}{a..z}
do		
	touch $note.txt || { echo "ERR: can't create $note.txt"; exit 2; } #file $note.txt creation with error-checking
	echo $note > $note.txt || { echo "ERR: can't write to file $note.txt"; exit 3; } #write to file $note.txt with error checking
	let noteCount++
done

for note in {a..z}{A..Z}
do		
	touch $note.txt || { echo "ERR: can't create $note.txt"; exit 4; } #file $note.txt creation with error-checking
	echo $note > $note.txt || { echo "ERR: can't write to file $note.txt"; exit 5; } #write to file $note.txt with error checking
	let noteCount++
done

for note in {A..Z}{a..z}
do		
	touch $note.txt || { echo "ERR: can't create $note.txt"; exit 6; } #file $note.txt creation with error-checking
	echo $note > $note.txt || { echo "ERR: can't write to file $note.txt"; exit 7; } #write to file $note.txt with error checking
	let noteCount++
done

for note in {A..Z}{A..Z}
do		
	touch $note.txt || { echo "ERR: can't create $note.txt"; exit 8; } #file $note.txt creation with error-checking
	echo $note > $note.txt || { echo "ERR: can't write to file $note.txt"; exit 9; } #write to file $note.txt with error checking
	let noteCount++
done

echo "$noteCount notes done"
if [ $noteCount = 2704 ];
then
	echo "Notes count as expected"
else
	echo "ERR: wrong lines count"
	exit 10 #stop script execution if ERR
fi #counter check

for note in {a..z}{a..z}
do	
	[ -s $note.txt ] || { echo "ERR: empty file $note.txt"; exit 11; }
done

for note in {a..z}{A..Z}
do	
	[ -s $note.txt ] || { echo "ERR: empty file $note.txt"; exit 12; }
done

for note in {A..Z}{a..z}
do	
	[ -s $note.txt ] || { echo "ERR: empty file $note.txt"; exit 13; }
done

for note in {A..Z}{A..Z}
do	
	[ -s $note.txt ] || { echo "ERR: empty file $note.txt"; exit 14; }
done	#stop script execution if there is an empty file

echo "alphabet_filenames ver. 2 script done"
