#!bin/bash

service=$1

if [ $service == 'front' ]
then
    PWD=Documents/workspace/company_name/front-company_name

elif [ $service == 'graphql' ]
then
    PWD=Documents/workspace/company_name/api-graphql

elif [ $service == 'lib' ]
then
    PWD=Documents/workspace/company_name/company_name-ui

else
    PWD=Documents/workspace/company_name/$service-service
fi

cd $PWD && code .
