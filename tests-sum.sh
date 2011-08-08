#!/bin/sh
# This script parses the amount of failed tests and total tests run
TOTAL=$(grep "testsuite" $1/*-Test.xml | sed -e "s/^.*tests=\"//" | cut -d "\"" -f1 | grep -v "</testsuite>" )
FAILURES=$(grep "testsuite" $1/*-Test.xml | sed -e "s/^.*failures=\"//" | cut -d "\"" -f1 | grep -v "</testsuite>")
ERRORS=$(grep "testsuite" $1/*-Test.xml | sed -e "s/^.*errors=\"//" | cut -d "\"" -f1 | grep -v "</testsuite>")

TOTALSUM=$(echo $TOTAL 0 | tr " " "+" | bc)
FAILURESSUM=$(echo $FAILURES 0 | tr " " "+" | bc)
ERRORSSUM=$(echo $ERRORS 0 | tr " " "+" | bc)

echo "SqueakSource-Tests:$FAILURESSUM/$ERRORSSUM|$TOTALSUM"
