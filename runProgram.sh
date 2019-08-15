#!/bin/sh
#Aim: Program to compile and run the given java source code

clean_files(){
	#Delete all compiled class files
	rm -f *.class
}

main(){
	if [ $# -ne 1 ];then
		echo "\n[USAGE]: [ $0 ] [ Java_program_name ]\n"
		exit 1;
	fi
	program=$1
	printf "Compiling $program\n... ` javac $program `"
	clean_files
}

main $@
exit 0
