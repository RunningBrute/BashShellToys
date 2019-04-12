#!/bin/bash

WHAT=$1
WHERE="."

eval "find $WHERE -name $WHAT -exec gvim {} \;"
