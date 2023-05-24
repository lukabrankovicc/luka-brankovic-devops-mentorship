## Test 1

```shell
#!/bin/bash

for test in Alabama Alaska Arizona Arkansas California Colorado
do
	echo The next state is $test
done
```

![Schreenshot test-a 1](chapter13-slike/test-1.png)

## Test 2

```shell
#!/bin/bash

for test in I don\'t know if "this'll" work
do
	echo "work:$test"
done
```

![Schreenshot test-a 1](chapter13-slike/test-2.png)

## Test 3

```shell
#!/bin/bash

for test in Nevada "New Hampshire" "New Mexico" "New York"
do
	echo "Now going to $test"
done
```

![Schreenshot test-a 1](chapter13-slike/test-3.png)

## Test 4

```shell
#!/bin/bash

list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" Connecticut"

for state in $list
do
	echo "Have you ever visited $state?"
done
```

![Schreenshot test-a 1](chapter13-slike/test-4.png)

## Test 5

```shell
#!/bin/bash

file="states"

for state in $(cat $file)
do
	echo "Visit beautiful $state"
done
```

![Schreenshot test-a 1](chapter13-slike/test-5.png)

## Test 5b

```shell
#!/bin/bash

file="states"

IFS=$'\n'

for state in $(cat $file)
do
	echo "Visit beautiful $state"
done
```

![Schreenshot test-a 1](chapter13-slike/test-5b.png)

## Test 6

```shell
#!/bin/bash


for file in /home/luka/Desktop/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done
```

![Schreenshot test-a 1](chapter13-slike/test-6.png)

## Test 7

```shell
#!/bin/bash

for file in /home/luka/.b* /home/luka/badtest
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ] 
	then
		echo "$file is a file"
	else
		echo "$file doesn't exist"
	fi
done
```

![Schreenshot test-a 1](chapter13-slike/test-7.png)

## Test 8

```shell
#!/bin/bash

for (( i=1; i <= 10; i++ ))
do
	echo "The next number is $i"
done
```

![Schreenshot test-a 1](chapter13-slike/test-8.png)

## Test 9

```shell
#!/bin/bash

for (( a=1, b=10; a <= 10; a++, b-- ))
do
	echo "$a - $b"
done
```

![Schreenshot test-a 1](chapter13-slike/test-9.png)

## Test 10

```shell
#!/bin/bash

var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 - 1 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-10.png)


## Test 11

```shell
#!/bin/bash

var1=10

while echo $var1
	[ $var1 -ge 0 ]
do
	echo "This is inside the loop"
	var1=$[ $var1 - 1 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-11.png)

## Test 12

```shell
#!/bin/bash

var1=100

until [ $var1 -eq 0 ]
do
	echo $var1
	var1=$[ $var1 - 25 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-12.png)

## Test 13

```shell
#!/bin/bash

var1=100

until echo $var1
	[ $var1 -eq 0 ]
do
	echo Inside the loop: $var1
	var1=$[ $var1 - 25 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-13.png)

## Test 14

```shell
#!/bin/bash

for (( a = 1; a <= 3; a++ ))
do
	echo "Starting loop $a:"
	for (( b = 1 ; b <= 3 ; b++ ))
	do
		echo "  Inside loop: $b"
	done
done
```

![Schreenshot test-a 1](chapter13-slike/test-14.png)

## Test 15

```shell
#!/bin/bash

var1=5

while [ $var1 -ge 0 ]
do
	echo "Outer loop: $var1"
	for (( var2 = 1; $var2 < 3 ; var2++ ))
	do
		var3=$[ $var1 * $var2 ]
		echo " Inner loop: $var1 * $var2 = $var3"
	done
	var1=$[ $var1 - 1 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-15.png)

## Test 16

```shell
#!/bin/bash

var1=3

until [ $var1 -eq 0 ]
do
	echo "Outer loop: $var1"
	var2=1
	while [ $var2 -lt 5 ]
	do
		var3=$(echo "scale=4; $var1 / $var2" | bc)
		echo "  Inner loop: $var1 / $var2 = $var3"
		var2=$[ $var2 + 1 ]
	done
	var1=$[ $var1 - 1 ]
done
```

![Schreenshot test-a 1](chapter13-slike/test-16.png)

## Test 17

```shell
#!/bin/bash

for var1 in 1 2 3 4 5 6 7 8 9 10
do
	if [ $var1 -eq 5 ]
	then
		break
	fi
	echo "Iteration number: $var1"
done
echo "The for loop is completed"
```

![Schreenshot test-a 1](chapter13-slike/test-17.png)

## Test 18

```shell
#!/bin/bash

var1=1

while [ $var1 -lt 10 ]
do 
	if [ $var1 -eq 5 ]
	then
		break
	fi
	echo "Iteration: $var1"
	var1=$[ $var1 + 1 ]
done
echo "The while loop is complited"
```

![Schreenshot test-a 1](chapter13-slike/test-18.png)

## Test 19

```shell
#!/bin/bash

for (( a = 1 ; a < 4; a++ ))
do
	echo "Outer loop: $a"
	for (( b = 1; b < 100; b++ ))
	do
		if [ $b -eq 5 ]
		then
			break
		fi
		echo "  Inner loop: $b"
	done
done
```

![Schreenshot test-a 1](chapter13-slike/test-19.png)

## Test 20

```shell
#!/bin/bash

for (( a = 1; a < 4; a++ ))
do
	echo "Outer loop: $a"
	for (( b = 1; b < 100 ; b++ ))
	do
		if [ $b -gt 4 ]
		then
			break 2
		fi
		echo "       Inner loop: $b"
	done
done
```

![Schreenshot test-a 1](chapter13-slike/test-20.png)

## Test 21

```shell
#!/bin/bash

for (( var1 = 1; var1 < 15; var1++ ))
do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
	then
		continue
	fi
	echo "Iteration number: $var1"
done
```

![Schreenshot test-a 1](chapter13-slike/test-21.png)

## Test 22

```shell
#!/bin/bash

for (( a = 1; a <= 5; a++ ))
do
	echo "Iteration $a:"
	for (( b = 1; b < 3 ; b++ ))
	do
		if [ $a -gt 2 ] && [ $a -lt 4 ]
		then
			continue 2
		fi
		var3=$[ $a * $b ]
		echo "  The result of $a * $b is $var3"
	done
done
```

![Schreenshot test-a 1](chapter13-slike/test-22.png)

## Test 23

```shell
#!/bin/bash

for (( a = 1 ; a < 10; a++ ))
do
	echo "The number is $a"
done > test23.txt
echo "The command is finished"
```

![Schreenshot test-a 1](chapter13-slike/test-23.png)

## Test 24

```shell
#!/bin/bash

for state in "North Dakota" Connecticut Illinois Alabama Tennessee
do
	echo "$state is the next place to go"
done | sort
echo "This completes our travels"
```

![Schreenshot test-a 1](chapter13-slike/test-24.png)

## Test 25

```shell
#!/bin/bash

IFS=:
for folder in the $PATH
do
	echo "$folder"
	for file in $folder/*
	do
		if [ -x $file ]
		then
			echo "  $file"
		fi
	done
done
```

![Schreenshot test-a 1](chapter13-slike/test-25.png)

## Test 26

```shell
#!/bin/bash

input="users.csv"
while IFS=',' read -r userid name
do
	echo "adding $userid"
	useradd -c "$name" -m $userid
done < "$input"
```

```shell
rich,Richard Blum
christine,Christine Bresnahan
barbara,Barbara Blum
tim,Timothy Bresnahan
```
