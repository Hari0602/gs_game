function count {
  count1=$(find . -maxdepth 1 -type f| wc -l)
  echo $count1
}

count2=$(count)
  echo "Hello welcome to the game"
while :
do
	echo "Guess the number of files in my current directory, please"
	read  a
		if  [[ "$a" =~ ^[0-9]+$ ]]
		then
  			while [[ $count2 -ne $a ]]
			do
				if [[ $count2 -gt $a ]]
				then
					echo "It's too small! Try another number, please"
					read a
				elif [[ $count2 -lt $a ]]
				then
					echo "It's too much! Try another number, please"
                                        read a
                		fi
			done
		echo "It's the correct answer"
		echo "YOU WON THE GMAME"		
		break
		else
			echo "Sorry integers only"
			continue
		fi
done
