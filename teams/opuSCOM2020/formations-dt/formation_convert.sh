#!/bin/bash

conf_list=`ls *.conf`

for i in $conf_list; do
	formation_converter $i > tmp.conf
	mv $i ${i}.pre
	mv tmp.conf $i
done
