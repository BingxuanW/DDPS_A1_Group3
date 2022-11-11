#!/bin/bash
# change the master node if the preserve list changed
#ssh $master node
#launch hadoop
/var/scratch/ddps2203/hadoop/sbin/stop-dfs.sh
/var/scratch/ddps2203/hadoop/sbin/stop-yarn.sh
#launch spark
/var/scratch/ddps2203/spark/sbin/stop-all.sh
~                                               
