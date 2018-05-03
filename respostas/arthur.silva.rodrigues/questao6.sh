#!/bin/bash

perm=$(ls -l | cut -c8-10 | grep -E -- "-w-|rw-|-wx|rwx")
if [ ${#perm} -eq 0 ]; then
	echo "DIRETORIO SEGURO"
else
	echo "DIRETORIO INSEGURO"
fi
