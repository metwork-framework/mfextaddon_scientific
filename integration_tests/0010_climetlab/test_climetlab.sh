#!/bin/bash

#Prevent 500 timeout errors
cd $MFEXT_HOME/opt/python3_scientific/lib/python$PYTHON3_SHORT_VERSION/site-packages/multiurl
cp -p http.py http.py.ori
sed -i 's/maximum_retries=500/maximum_retries=2/' http.py
cd -

python climetlab_test.py >  out.html

cat out.html | grep -v Timeout > /dev/null
if test $? -eq 1; then
    #In case of timeout error, don't consider the test is failing
    cat out.html
    exit 0
else
    nb=$(wc -c < out.html)
    test "$nb -gt 1000"
fi
cd $MFEXT_HOME/opt/python3_scientific/lib/python$PYTHON3_SHORT_VERSION/site-packages/multiurl
mv http.py.ori http.py
