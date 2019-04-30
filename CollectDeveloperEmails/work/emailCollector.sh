#!/bin/bash

echo "========= Start reading Files ============"
path='c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work'
echo "root path: $path"
printf "\n"

while read gitLink
do 
       
    echo "Start cloning project $gitLink"

    arr=(` echo $gitLink | tr '/' ' ' `)
    appPath="c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work\\${arr[3]}" 

    echo "'$appPath'"
    printf "\n"
    git clone $gitLink

    printf "\n"

    if [ "${arr[3]}" == "ActionBarSherlock" ] 
    then 
        
        cd 'c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work\ActionBarSherlock'
        echo "====== Getting Logs ========"
        printf "\n"
        git log > ../${arr[3]}_log.txt
        rm -rf 'c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work\ActionBarSherlock'
        echo "complete"ss
    fi

    if [ "${arr[3]}" == "storm" ] 
    then 
        
        cd 'c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work\storm'
        echo ${pwd}

        echo "====== Getting Logs ========"
        printf "\n"
        git log > ../${arr[3]}_log.txt
        rm -rf 'c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work\storm'
        echo "complete"
    fi
    cd 'c:\Users\Miguel Alvarado\Documents\GitHub\shell scripting\CollectDeveloperEmails\work' 

#read authors
    while read line 
        do 
            if [[ $line = "Author: "* ]]; then
                if [[ $(grep "$line" "developersEmails.txt") ]]; then 
                    echo "Already in the file"
                else
                    echo "write developer info to file"
                    echo $line >> developersEmails.txt
                fi
            fi
        done < ${arr[3]}_log.txt
        echo "Developers info ready!"
done < links.txt



read