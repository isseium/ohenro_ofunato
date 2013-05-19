#!/bin/sh -x

for file in $(ls create_*.sql)
do
    mysql iwatemeguri_test -u iwatemeguri_test -p < $file
done
