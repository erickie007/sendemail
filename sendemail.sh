#!/bin/bash  
  
# Read the user input   
  
echo "Enter email address to spoof: "  
read email1  
sleep 2
echo "Enter the recipient's email address: "  
read email2 
sleep 2
echo "Enter the Email Subject: "
read subject
echo "Compose your message: "
read message
echo "Sending..."
sleep 5

key=

sendemail -f $email1 -t $email2 -u $subject -m $message . -s smtp.sendgrid.net:587 -xu apikey -xp $key