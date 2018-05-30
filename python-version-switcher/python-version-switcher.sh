#!/bin/bash

set -e

declare -A mapper
mapper_idle=( [2]="idle2" [3]="idle3" )
mapper_pip=( [2]="pip2" [3]="pip3" )
mapper_pydoc=( [2]="pydoc2" [3]="pydoc3" )
mapper_python=( [2]="python2" [3]="python3" )
mapper_pythonConfig=( [2]="python2-config" [3]="python3-config" )

version=${PYTHON_VERSION:=3}

command_name=`basename $0`

case "$command_name" in
	"idle") exec_command=${mapper_idle[$version]}; ;;
	"pip") exec_command=${mapper_pip[$version]}; ;;
	"pydoc") exec_command=${mapper_pydoc[$version]}; ;;
	"python") exec_command=${mapper_python[$version]}; ;;
	"python-config") exec_command=${mapper_pythonConfig[$version]}; ;;
	*) echo "Unrecognized command: ${command_name}"; exit 1; ;;
esac

if [ "${exec_command}" == "" ]
then
	echo "Unrecognized PYTHON_VERSION: ${version}"
	exit 2
fi

exec "${exec_command}" "$@"
