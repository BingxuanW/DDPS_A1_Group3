#!/bin/bash
# change the master node if the preserve list changed
#ssh node105
#launch hadoop
/var/scratch/ddps2203/hadoop/sbin/start-dfs.sh
/var/scratch/ddps2203/hadoop/sbin/start-yarn.sh
#launch spark
/var/scratch/ddps2203/spark/sbin/start-all.sh
