#!/bin/bash

QUERY=case
GREPOUT=grep.txt
PCREGREPOUT=pcregrep.txt

zvsh pcregrep  $QUERY @input.txt > $PCREGREPOUT
grep  $QUERY input.txt | tac > $GREPOUT
diff $GREPOUT $PCREGREPOUT > /dev/null 2>&1
if [ $? == 0 ]; then
	echo -e "\033[01;32mPassed\033[00m"
else
	echo -e "\033[01;31mFailed\033[00m"
fi

zvsh pcregrep -v $QUERY @input.txt > $PCREGREPOUT
grep  $QUERY -v input.txt | tac > $GREPOUT
diff $GREPOUT $PCREGREPOUT > /dev/null 2>&1
if [ $? == 0 ]; then
	echo -e "\033[01;32mPassed\033[00m"
else
	echo -e "\033[01;31mFailed\033[00m"
fi

QUERY=Case

zvsh pcregrep -i  $QUERY @input.txt > $PCREGREPOUT
grep  $QUERY -i input.txt | tac > $GREPOUT
diff $GREPOUT $PCREGREPOUT > /dev/null 2>&1
if [ $? == 0 ]; then
	echo -e "\033[01;32mPassed\033[00m"
else
	echo -e "\033[01;31mFailed\033[00m"
fi

