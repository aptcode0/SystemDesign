#!/bin/bash

db_set () {
      echo "storing $1 $2"
      echo "$1,$2" >> database 
}

db_get () {
      echo "getting $1 value"
      grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}