#!/bin/bash

progname="$0"

function help() {
	cat <<- EOF
	Usage: $progname <file1> <file2> <outfile>
	Remove words found in <file2> from <file1> and save output to <outfile>.
	EOF
	return
}

if [ "$1" = 'h' ] || [ "$1" = '--help' ] || [ "$#" -ne 3 ]; then
	help
	exit 1
fi

file1="$1"
file2="$2"
outfile="$3"

if [ \! -f "$file1" ] || [ \! "$file2" ]; then
	echo "\<file1\> or \<file2\> are not valid files" 1>&2
	exit 1
fi

for word in $(cat "$file2"); do
	sed s/"$word"//g < "$file1" > "$outfile"
done

echo "Done!"