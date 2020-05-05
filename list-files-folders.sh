#!/bin/bash
pasta='/home/user/folder/*'

for f in $pasta
do
	if [ -d "$f" ];
	then
	    for ff in $f/*
	    do
	        if [ -d "$ff" ];
			then
			    for fff in $ff/*
			    do
			        if [ -d "$fff" ];
					then
					    for ffff in $fff/*.js
					    do
					    	if [ -d "$ffff" ];
							then
							    for fffff in $ffff/*.js
							    do
							        if [ -d "$fffff" ];
									then
									    for ffffff in $fffff/*.js
									    do
									        echo "Processing $ffffff"
									    done
									else
										if [ ${fffff: -3} == ".js" ]
										then
									    	echo "Processing $fffff"
									    fi
									fi
							    done
							else
								if [ ${ffff: -3} == ".js" ]
								then
							    	echo "Processing $ffff"
							    fi
							fi
					    done
					else
						if [ ${fff: -3} == ".js" ]
						then
					    	echo "Processing $fff"
					    fi
					fi
			    done
			else
				if [ ${ff: -3} == ".js" ]
				then
			    	echo "Processing $ff"
			    fi
			fi
	    done
	else
		if [ ${f: -3} == ".js" ]
		then
	    	echo "Processing $f"
	    fi
	fi
done