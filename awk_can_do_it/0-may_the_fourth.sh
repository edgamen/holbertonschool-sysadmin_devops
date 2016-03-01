#!/bin/bash

# take a string as an argument and print the fourth word
echo $1 | awk '{print $4}'
