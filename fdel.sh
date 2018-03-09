#/bin/bash
results=$(find "$@" | wc -l)
if [ $? -eq 0 ] && [ $results -gt 0 ]
then
    find "$@"
    echo -n "Delete (yes/no): "
    read answer
    if [ "$answer" == "yes" ]
    then
	    find "$@" -delete
    else
	    echo "abort"
    fi
fi
