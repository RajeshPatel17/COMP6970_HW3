#!/bin/bash
oc new-project hw3-rrp0019
sleep 5
oc create -f hw3.yml
sleep 60
oc expose service flask
sleep 5
curl $(oc status | grep -o "http:.*com")/api/people
