echo "Enter the letter:"
read ch
case $ch in
	'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' )	echo "$ch is vowel";;
	* ) echo "$ch is consonant";;
esac
