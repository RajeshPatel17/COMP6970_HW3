#!/bin/bash
oc create -f hw3.yml
sleep 60
oc expose service flask
sleep 5
curl $(oc status | grep -o "http:.*com")/api/people
