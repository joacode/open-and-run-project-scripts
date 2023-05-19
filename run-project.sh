#!bin/bash

service=$1
project=$2
run_command='yarn.cmd start:dev'

if [ $service == 'front' ]
then
    PWD=Documents/workspace/company_name/front-academy
    run_command='yarn.cmd dev'

elif [ $service == 'graphql' ]
then
    PWD=Documents/workspace/company_name/api-graphql

elif [ $service == 'lib' ]
then
    PWD=Documents/workspace/company_name/company_name-ui
    run_command='yarn.cmd storybook'
 
else
    PWD=Documents/workspace/company_name/$service-service/projects/$project
fi

cd $PWD && $run_command
