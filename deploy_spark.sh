#!/bin/bash
# simple script for ddps2203eploying Spark in standalone mode on DAS-5 for the DDPS course 2022.
# Author: Yuxuan Zhao

set -eu

# echo "Deploying spark on ${1}"
# nodes=${1}
IFS=',' read -ra node_list <<< "node105,node106,node107,node108,node109,node110,node111,node112,node113,node114"; unset IFS
master=${node_list[0]}
worker=${node_list[@]:1}
echo "master is "$master
echo "worker is "$worker

# Comment out these lines if you already downloaded them.
# wget -O /var/scratch/ddps2203/spark-3.1.2-bin-hadoop2.7.tgz https://archive.apache.org/dist/spark/spark-3.1.2/spark-3.1.2-bin-hadoop2.7.tgz && \
# tar -xf /var/scratch/ddps2203/spark-3.1.2-bin-hadoop2.7.tgz -C /var/scratch/ddps2203 && mv /var/scratch/ddps2203spark-3.1.2-bin-hadoop2.7 /var/scratch/ddps2203/spark
# wget -O /var/scratch/ddps2203/openjdk-11.0.2_linux-x64_bin.tar.gz https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz && \
# tar -zxf /var/scratch/ddps2203/openjdk-11.0.2_linux-x64_bin.tar.gz -C /var/scratch/ddps2203
# wget -O /var/scratch/ddps2203/hadoop-2.7.7.tar.gz https://archive.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
# tar -xf /var/scratch/ddps2203/hadoop-2.7.7.tar.gz -C /var/scratch/ddps2203 && mv /var/scratch/ddps2203/hadoop-2.7.7 /var/scratch/ddps2203/hadoop
#source export.sh


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
# ssh $master cd /var/scratch/ddps2203/spark && ./bin/spark-submit examples/src/main/python/pi.py 1000"

