#!/bin/bash

# isn't it more concise to use "grep 'l' list | sort -d | uniq" though?
cat list | grep 'l' | sort -d | uniq
