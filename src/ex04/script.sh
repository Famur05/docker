#!/bin/bash

gcc main.c -o main -lfcgi
spawn-fcgi -p 8080 ./main
service nginx start

/bin/bash