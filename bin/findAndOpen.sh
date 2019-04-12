#!/bin/bash

eval "find $2 -name $1 -exec gvim {} \;"
