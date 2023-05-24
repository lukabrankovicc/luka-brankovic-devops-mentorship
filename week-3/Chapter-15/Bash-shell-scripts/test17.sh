#!/bin/bash

exec 3> test17file
echo "This is a test line of data" >&3
exec 3>&-

