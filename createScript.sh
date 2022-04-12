#!/bin/bash

read -p 'Filnavn: ' FILE
read -p 'Kort beskrivelse: ' DESC

touch $FILE
chmod 755 $FILE
echo "#!/bin/bash" >> $FILE
echo "# $DESC" >> $FILE
#echo "# Michael Aggerholm" >> $FILE
echo "# Michael Aggerholm  $(date +%F" - "%T)" >> $FILE
vim $FILE
