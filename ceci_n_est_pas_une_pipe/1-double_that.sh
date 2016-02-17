#!/bin/bash

# isn't it more concise to use "grep 'o' list | sort -d" though?
cat list | grep 'o' | sort -d
