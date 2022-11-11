# Assignment 1: Reproducibility Study
## Resilient Distributed Datasets: A Fault-Tolerant Abstraction for In-Memory Cluster Computing

### Installation
```
   ./install_spark_java_hadoop.sh
   ./install_maven.sh
   source export.sh
```
### Execution
```
   #reserve node on DAS-5.
   ./reserve_node.sh
   #Allocating master and worker node and updating to Spark, Hadoop and HiBench configuration files.
   ./deploy.sh
   # Connecting to master node and launching Hadoop or Spark.
   ssh $master_node
   ./launch_spark_hadoop.py
   exit
```

### Experiments
   + **Experiment 1 : Different Data Scale** 
   
      ` vim /var/scratch/ddps2203/HiBench/conf/hibench.conf`
      
      then configure 'hibench.scale.profile' with different value 'small' 'large' 'huge'.
      
   + **Experiment 2 : Different Number of Nodes** 
   
      Repeat Execution steps for reserveing different number of nodes. 
      
   + **Experiment 3 : Exploring Duration of First and later Iterations**
   
      `vim /var/scratch/ddps2203/HiBench/conf/workloads/ml/kmeans/kmeans.conf`
      
      then configure 'hibench.kmeans.huge.max_iteration		$first_time' or 'hibench.kmeans.huge.max_iteration		5'
      
   + **Experiment 4 : Behavior with Insufficient Memory**  
   
      `vim /var/scrath/ddps2203/HiBench/conf/spark.conf`
      
      configure 'spark.executor.memory  $memory_size'.
      
### Launch HiBench 
   ```
      ./repeat_iteration_times_spark_hadoop.sh
      #or
      ./repeat_memory_spark.sh  
   ```
### Stop Spark and Hadoop 
  `./stop_spark_hadoop.sh`

### Results

  
   
