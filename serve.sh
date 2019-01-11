#!/bin/bash


function cancel()
{
    sub=`ps -ef|grep "serve_demon.sh"|grep -v grep|awk '{print $2}'`
    if [[ "x$sub" != "x" ]]; then
        `ps -ef|grep "serve_demon.sh"|grep -v grep|awk '{print $2}'|xargs kill -9`
    fi
    rm -rf serve.log
    exit 0
}

trap cancel SIGINT SIGTERM SIGQUIT


echo "" > serve.log
./serve_demon.sh &
gitbook serve | tee serve.log

