#!/bin/bash
read -p "enter num1 value:" num1
read -p "enter num2 value:" num2
echo "provide an option"
echo "a for addition"
echo "b for substration"
echo "c for multiplication"
echo "d for devision"

read choice

addition(){
	let sum=$num1+$num2
	echo "sum of $num1 and $num2 is $sum"
}

subst() {
        let sub=$num1-$num2
        echo "substration of $num1 and $num2 is $sub"
}

multi() {
        let mul=$num1*$num2
        echo "multiplication of $num1 and $num2 is $mul"
}

devi() {
        let dev=$num1/$num2
        echo "devision of $num1 and $num2 is $dev"
}
a=$(addition)
b=$(subst)
c=$(multi)
d=$(devi)

if [[ $choice == "a" ]]
then
        echo "$a"
elif [[ $choice == "b" ]]
then
        echo "$b"
elif [[ $choice == "c" ]]
then
        echo "$c"
else
        echo "$d"
fi

