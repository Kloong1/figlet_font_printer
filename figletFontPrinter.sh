#!/bin/bash

FONT_PATH="/usr/local/share/figlet/fonts/"
TEST_STRING=$1
OUTPUT_FILE=$2

if [ $# -lt 2 -o $# -gt 3 ]; then
	echo "Error: Wrong arguments!"
	echo ""
	echo "Usage: ./figletFontPrinter.sh <string> <output file> <options(default: -c)>"
	echo "Ex: ./figletFontPrinter.sh Hello output.txt"
	echo "Ex: ./figletFontPrinter.sh Hello output.txt \"-l\""
	echo ""
	echo "Exit"
	exit 1
fi

if [ $# -eq 2 ]; then
	OPTIONS=-c
elif [ $# -eq 3 ]; then
	OPTIONS=$3
fi

echo "Figlet Font Printer by Kloong"
echo ""

echo "Test string : $TEST_STRING"
echo "Output file : $OUTPUT_FILE"
echo "Option : $OPTIONS"
echo ""

if [ -e $OUTPUT_FILE ]; then
	echo "$OUTPUT_FILE exists. Overwrite $OUTPUT_FILE"
	rm $OUTPUT_FILE
fi

echo ""
echo "------ FONT LIST ------"

FONTS=($(ls $FONT_PATH | tr "\ " "\n"))

for FONT_NAME in ${FONTS[@]};
do
	if [[ "$FONT_NAME" == *.flf* ]]; then
		echo $FONT_NAME
		echo $FONT_NAME >> $OUTPUT_FILE
		figlet -f $FONT_NAME $OPTIONS $TEST_STRING >> $OUTPUT_FILE
	fi
done
