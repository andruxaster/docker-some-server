#!/bin/bash

set -e
trap ctrl_c INT
function ctrl_c() {
  exit 0
}

screen -D -m java -jar /grasscutter/grasscutter.jar
