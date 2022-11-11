# Assignment 1: Reproducibility Study
## Resilient Distributed Datasets: A Fault-Tolerant Abstraction for In-Memory Cluster Computing

### Installation

### Execution
```
   #reserve node on DAS-5 
   ./reserve_node.sh
   #Allocating master and worker node and updating to Spark, Hadoop and HiBench configuration files.
   ./deploy.sh
   # Connecting to master node and launching Hadoop or Spark
   ssh $master_node
   ./launch_spark_hadoop.py
   exit
```

### Experiment
