while read p; do
	
	res=$(curl -I -s $p/ | head -n 1 )
	if [[ -z "$res"  ]];
	then
		printf "%-30s | %-30s \n" "$p" "Not Exist"
	else
		code=$(echo $res | head -n 1 | cut -d' ' -f2)
		printf "%-30s | %-30s " "$p" "$code"
		printf "\n"
	fi

done
