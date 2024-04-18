#! /bin/bash
PSQL="psql --username=freecodecamp --tuples-only --dbname=salon -c" 
AVAILABLE_SERVICES=$($PSQL "select * from services");
echo -e "\nWelcome. Choose one."
echo "$AVAILABLE_SERVICES" | while read ID SERVICE
do
  echo "$ID) $SERVICE" | sed -e 's/|//'
done
read INPUT;
if [[ $INPUT -eq 1 ]]
then
echo 1;
elif [[ $INPUT -eq 2 ]]
then
echo 2;
elif [[ $INPUT -eq 3 ]]
then
echo 3;
else 
echo "Try again."
echo "$AVAILABLE_SERVICES" | while read ID SERVICE
do
  echo "$ID) $SERVICE" | sed -e 's/|//'
done
read INPUT;
fi
