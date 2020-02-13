#Les Warren 02-12-2020
#Backs up a given directory

if [ $# != 1 ]
then
    echo ' Argument required for backup'
    exit
fi
if [ ! -d ~/ABE65100/$1 ]
then
    echo ' Directory does nto exist'
    exit
fi
date=`date +%F`

if [ -d ~/ABE65100backups/$1_$date ]
then
    echo ' This project has already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir -p ~/ABE65100backups/$1_$date
fi
cp -R ~/ABE65100/$1 ~/ABE65100backups/$1_$date
echo ' Backup completed'
