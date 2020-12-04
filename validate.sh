  file=wordlist.txt
  a=2
  b=3
  cat $file | while read line
   do
	   num=` echo "$line"| awk -F"@" '{print $2}'| awk -F"." '{print NF}' `
	   if [[ $num == $b ]]
 then	 
	 if [[ $line =~ ^[A-Za-z0-9]+@[A-Za-z]+\.[a-zA-Z]{3}\.[a-zA-Z]{2,4}$ ]] 
  then
  
	  echo "$line -->> correct format"
  else
	  echo "$line --->check your mail"
	 fi
 fi

 if [[ $num == $a ]]
 then
	if [[ $line =~ ^[A-Za-z0-9]+@[A-Za-z]+\.[a-zA-Z]{2,4}$ ]] 
	then 	
	  echo "$line -->> correct format"
  else
	  echo "$line ---> check your mail"
       
	fi
 fi
 done

