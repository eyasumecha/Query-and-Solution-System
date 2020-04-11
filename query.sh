#!/bin/bash
#prints out the column number of one or multiple headers given 
#Eyasu Lemma, Date 4/10/2020, 
if [ -r scorecard.csv ]
then 
	if [ $# -ne 0 ]
	then	
		for i in $@
		do	
			COUNTER=0
			for x in $(sed '1 s/,/ /g' myfile.csv| head -1)
			do	
				if [ $i = $x ]
				then
					((COUNTER++))
					echo $COUNTER : $i
				       	break
				else 
					((COUNTER++))	

				fi
			done
		done
	fi	
else 
	echo Error: scorecard.csv either doesn't exist or isn't readable 
fi	

