#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
  let counter=counter+1

  name=$(nl people.txt | grep -w counter | awk '{print $2}' | awk -F ',' '{print $2}')
  lastname=$(nl people.txt | grep -w counter | awk '{print $1}' | awk -F ',' '{print $1}')
