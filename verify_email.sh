echo "enter an email address";
read mail;
  if [[ $mail =~ ^[A-Za-z]+@[A-Za-z]+\.[a-zA-Z]{2,4}$ ]]
  then
          echo $mail
          echo "correct format"
  else
          echo $mail
          echo "check your mail"
  fi
