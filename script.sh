#!/bin/bash

CURTIP=$(cat ./.curtip)
TIPFILE=./tips/$CURTIP.txt
NUMTIPS=`ls ./tips/*.txt | wc -l`
tipof() {
echo "TIP OF THE TODAY ($TIPFILE)"
echo "====================================================="
echo " "
cat $TIPFILE
echo " "
echo "====================================================="
countTips
}

countTips(){
NEXT=`expr $CURTIP % $NUMTIPS`
NEXT=`expr $NEXT + 1`
echo $NEXT > ./.curtip
}

main()
{

CONTENT=$(cat ./.disco)
if [[ $CONTENT != "0" ]]; then
tipof
else
exit 0
fi
}

main
