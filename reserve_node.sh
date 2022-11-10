#!/bin/bash
module load prun

preserve -# 10 -t 00:45:00

preserve -llist | grep ddps2203

#§/home/ddps2203/deploy_spark.sh
