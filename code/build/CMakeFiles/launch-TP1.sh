#!/bin/sh
clear
make

bindir=$(pwd)
cd /home/e20230010831/Bureau/Master2/TER/TP1_code/TP1/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/e20230010831/Bureau/Master2/TER/TP1_code/build/TP1 
	else
		"/home/e20230010831/Bureau/Master2/TER/TP1_code/build/TP1"  
	fi
else
	"/home/e20230010831/Bureau/Master2/TER/TP1_code/build/TP1"  
fi