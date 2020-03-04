#!/bin/bash

[ $(echo -e "Yes\nNo" | dmenu -i -p "$1") \
== "Yes" ] && $2
