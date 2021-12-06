#!/bin/bash

#cd /var/www/scripts
#rm test_out.txt
#touch test_out.txt

#cd /var/www/scripts
#echo -n > test_out.txt || { echo 'ERR: echo -n > $file'; exit 1; } #создание файла в нужной директории c выводом ошибки в случае неуспешного выполнения команды

TMP_DIR='/var/www/scripts'
TMP_FILENAME='test_out.txt'
TMP_FILE="$TMP_DIR/$TMP_FILENAME" #присвоение файлу стандартного имени и пути

[ -d "$TMP_DIR" ] || { echo "ERR: $TMP_DIR not exist"; exit 1; } #проверка директории на существование
cd "$TMP_DIR" #переход в директорию

rm $TMP_FILE || { echo "ERR: can't reset $TMP_FILE"; exit 2; }
touch $TMP_FILE || { echo "ERR: can't recreate $TMP_FILE"; exit 3; } #TMP_FILE reset with error checking with exit-codes

note=0 #counter declaration

for lit1 in {a..z}
do
	for lit2 in {a..z}
	do
		echo "$lit1$lit2" >> $TMP_FILE
		let note++
	done
	for Lit1 in {A..Z}
	do
		echo "$lit1$Lit1" >> $TMP_FILE
		let note++
	done
done
for Lit1 in {A..Z}
do
	for lit1 in {a..z}
	do	
		echo "$Lit1$lit1" >> $TMP_FILE
		let note++
	done
	for Lit2 in {A..Z}
	do	
		echo "$Lit1$Lit2" >> $TMP_FILE
		let note++
	done
done #два цикла для задания корректных имен

echo "$note notes done"
if [ $note = 2704 ];
then
	echo "Notes count as expected"
fi #counter check

wc -l $TMP_FILENAME #lines count output to check script run correct (wc -l $TMP_FILE output must be equal to $note)

echo "Test script done"
