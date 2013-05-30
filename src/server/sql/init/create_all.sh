#!/bin/sh -x

for file in $(ls create_*.sql)
do
    mysql iwatemeguri_test -u root -p < $file
done
