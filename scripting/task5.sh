#!/bin/bash
#installing tomcat
if tomcat >/dev/null
then
    echo exists
else
    echo does not exist
    yum install tomcat -y
fi
