#!/bin/bash

set -u

cd /repo 
gittyleaks --find-anything

sleep 120

exit 0
