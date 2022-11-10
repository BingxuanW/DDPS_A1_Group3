#!/bin/bash

set -eu

# echo "Deploying spark on ${1}"
# nodes=${1}
IFS=',' read -ra node_list <<< "node105,node106,node107,node108,node109,node110,node111,node112,node113,node114"; unset IFS
master=${node_list[0]}
worker=${node_list[@]:1}
echo "master is "$master
echo "worker is "$worker

#set the master node in hadoop and HiBench Master
sed -i -r "s/node[0-9]{3}/$master/g" \
	/var/scratch/ddps2203/hadoop/etc/hadoop/core-site.xml \
	/var/scratch/ddps2203/hadoop/etc/hadoop/yarn-site.xml \
	/var/scratch/ddps2203/HiBench/conf/hadoop.conf \
	/var/scratch/ddps2203/HiBench/conf/spark.conf

# cd /var/scratch/ddps2203/spark/conf && cp spark-env.sh.template spark-env.sh && cp workers.template workers
# sleep 3
# echo "export JAVA_HOME=/var/scratch/ddps2203/jdk" >> /var/scratch/ddps2203/spark/conf/spark-env.sh
echo "export SPARK_MASTER_HOST=$master" >> /var/scratch/ddps2203/spark/conf/spark-env.sh
echo "$worker" > /var/scratch/ddps2203/spark/conf/workers

echo "$worker" > /var/scratch/ddps2203/hadoop/etc/hadoop/workers
