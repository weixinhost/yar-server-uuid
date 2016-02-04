#!/bin/sh

if [ ! ${DATA_CENTER} ] ; then
	
	echo "env variable DATA_CENTER not set."
	exit
fi

if [ ! ${MACHINE} ] ; then

        echo "env variable MACHINE not set."
        exit
fi

/uuid-server -X -s ${MACHINE} -n 1 -d ${DATA_CENTER} -S 0.0.0.0:5600
