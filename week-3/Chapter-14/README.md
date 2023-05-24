## Test 1

```shell
#!/bin/bash

factorial=1

for (( number = 1 ; number <= $1 ; number++ ))
do
	factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial
```

![Slika test-1](chapter14-slike/test-1.png)

## Test 2

```shell
#!/bin/bash

total=$[ $1 * $2 ]
echo The first parametar is $1
echo The second parametar is $2
echo The total value is $total
```

![Slika test-2](chapter14-slike/test-2.png)

## Test 3

```shell
#!/bin/bash

echo Hello $1, glad to meet you.
```

![Slika test-3](chapter14-slike/test-3.png)

## Test 4

```shell
#!/bin/bash

total=$[ ${10} * ${11} ]
echo The tenth parameter is ${10}
echo The eleventh parameter is ${11}
echo The total is $total
```

![Slika test-4](chapter14-slike/test-4.png)

## Test 5

```shell
#!/bin/bash

echo The zero parameter is set to: $0
```

![Slika test-5](chapter14-slike/test-5.png)

## Test 5b

```shell
#!/bin/bash

name=$(basename $0)
echo
echo The script name is: $name
```

![Slika test-5b](chapter14-slike/test-5b.png)

## Test 6

```shell
#!/bin/bash

name=$(basename $0)

if [ $name = "addem" ]
	then
		total=$[ $1 + $2 ]
	elif [ $name = "multem" ]
	then
		total=$[ $1 * $2 ]
fi

echo
echo The calculated value is $total
```

![Slika test-6](chapter14-slike/test-6.png)

## Test 7

```shell
#!/bin/bash

if [ -n "$1" ]
then
	echo Hello $1, glad to meet you.
else
	echo "Sorry, you did not identify yourself."
fi
```

![Slika test-7](chapter14-slike/test-7.png)

## Test 8

```shell
#!/bin/bash

echo There were $# parameters supplied.
```

![Slika test-8](chapter14-slike/test-8.png)

## Test 9

```shell
#!/bin/bash

if [ $# -ne 2 ]
then
	echo
	echo Usage: test9.sh a b
	echo
else
	total=$[ $1 + $2 ]
	echo 
	echo The total is $total
	echo
fi
```

![Slika test-9](chapter14-slike/test-9.png)

## Test 10

```shell
#!/bin/bash

params=$#
echo
echo The last parameter is $params
echo The last parameter is ${!#}
echo
```

![Slika test-10](chapter14-slike/test-10.png)

## Test 11

```shell
#!/bin/bash

echo
echo "Using the \$* method: $*"
echo
echo "Using the \$@ method: $@"
```

![Slika test-11](chapter14-slike/test-11.png)

## Test 12

```shell
#!/bin/bash

echo
count=1

for param in "$*"
do
	echo "\$* Parameter #$count = $param"
	count=$[ $count + 1 ]
done

echo
count=1

for param in "$@"
do
	echo "\$@ Parameter #$count = $param"
	count=$[ $count + 1 ]
done
```
![Slika test-12](chapter14-slike/test-12.png)

## Test 13

```shell
#!/bin/bash

echo
count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count + 1 ]
	shift
done
```

![Slika test-13](chapter14-slike/test-13.png)

## Test 14

```shell
#!/bin/bash

echo
echo "The original parameters: $*"
shift 2
echo "Here's the new first parameter: $1"
```

![Slika test-14](chapter14-slike/test-14.png)

## Test 15

```shell
#!/bin/bash

echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) echo "Found the -b option" ;;
		-c) echo "Found the -c option" ;;
		*) echo "$1 is not an option" ;;
	esac
	shift
done
```

![Slika test-15](chapter14-slike/test-15.png)

## Test 16

```shell
#!/bin/bash

echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) echo "Found the -b option" ;;
		-c) echo "Found the -c option" ;;
		--) shift
			break ;;
		*) echo "$1 is not an option" ;;
	esac
	shift
done

count=1
for param in $@
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done
```

![Slika test-16](chapter14-slike/test-16.png)

## Test 17

```shell
#!/bin/bash

echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) param="$2"
			echo "Found the -b option, with parameter value $param"
			shift ;;
		-c) echo "Found the -c option" ;;
		--) shift
			break ;;
		*) echo "$1 is not an option" ;;
	esac
	shift
done

count=1
for param in "$@"
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done
```

![Slika test-17](chapter14-slike/test-17.png)

## Test 18

```shell
#!/bin/bash

set -- $(getopt -q ab:cd "$@")

echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) param="$2"
			echo "Found the -b option, with parameter value $param"
			shift ;;
		-c) echo "Found the -c option" ;;
		--) shift
			break ;;
		*) echo "$1 is not an option" ;;
	esac
	shift
done

count=1
for param in "$@"
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done
```

![Slika test-18](chapter14-slike/test-18.png)

## Test 19

```shell
#!/bin/bash

echo
while getopts :ab:c opt
do
	case "$opt" in
		a) echo "Found the -a option" ;;
		b) echo "Found the -b option, with value $OPTARG" ;;
		c) echo "Found the -c option" ;;
		*) echo "Unknow option: $opt" ;;
	esac
done
```

![Slika test-19](chapter14-slike/test-19.png)

## Test 20

```shell
#!/bin/bash

echo
while getopts :ab:cd opt
do
	case "$opt" in
		a) echo "Found the -a option" ;;
		b) echo "Found the -b option, with value $OPTARG" ;;
		c) echo "Found the -c option" ;;
		d) echo "Found the -d option" ;;
		*) echo "Unknown option: $opt" ;;
	esac
done

shift $[ $OPTIND - 1 ]

echo
count=1
for param in "$@"
do
	echo "Parameter $count: $param"
	count=$[ $count + 1 ]
done
```

![Slika test-20](chapter14-slike/test-20.png)

## Test 21 

```shell
#!/bin/bash

echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program."
```

![Slika test-21](chapter14-slike/test-21.png)

## Test 22

```shell
#!/bin/bash

read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "That makes you over $days days old!"
```

![Slika test-22](chapter14-slike/test-22.png)

## Test 23

```shell
#!/bin/bash

read -p "Enter your name: " first last
echo "Checking data for $last, $first..."
```

![Slika test-23](chapter14-slike/test-23.png)

## Test 24

```shell
#!/bin/bash

read -p "Enter your name: "
echo
echo Hello $REPLY, welcome to my program.
```

![Slika test-24](chapter14-slike/test-24.png)

## Test 25

```shell
#!/bin/bash

if read -t 5 -p "Please enter your name: " name
then
	echo "Hello $name, welcome to my script"
else
	echo
	echo "Sorry, to slow! "
fi
```

![Slika test-25](chapter14-slike/test-25.png)

## Test 26

```shell
#!/bin/bash

read -n1 -p "Do you want to continue [Y/N]? " answer
case $answer in
	Y | y) echo
		echo "fine, countinue on..." ;;
	N | n) echo
		echo OK, goodbye
		exit;;
esac
echo "This is the end of the script"
```

![Slika test-26](chapter14-slike/test-26.png)

## Test 27

```shell
#!/bin/bash

read -s -p "Enter your password: " pass
echo
echo "Is your password really $pass?"
```

![Slika test-27](chapter14-slike/test-27.png)

## Test 28

```shell
#!/bin/bash

count=1
cat test | while read line
do
	echo "Line $count: $line"
	count=$[ $count + 1 ]
done
echo "Finished processing the file"
```

![Slika test-28](chapter14-slike/test-28.png)
