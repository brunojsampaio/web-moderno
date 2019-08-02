#!/bin/bash
APP_NAME=$1
FILE_NAME=./docker-compose.override.yml
rm $FILE_NAME
echo "version: '3'" > $FILE_NAME
echo "" >> $FILE_NAME
echo "services:" >> $FILE_NAME
echo "  app:" >> $FILE_NAME
echo '    command: ["create-react-app", "'$APP_NAME'"]' >> $FILE_NAME

docker-compose run app

rm $FILE_NAME