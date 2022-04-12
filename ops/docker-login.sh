#!/usr/bin/env bash

login_command=`aws ecr get-login`
bash -c "${login_command}"

if [ $? -ne 0 ]
then
    login_command=`aws ecr get-login --no-include-email`
    bash -c "${login_command}"
fi