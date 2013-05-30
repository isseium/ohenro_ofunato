#!/bin/sh -x

for file in $(ls create_*.sql)
do
    mysql iwatemeguri_prod -u root -p < $file
done
