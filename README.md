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
      
      Configure 'hibench.scale.profile' with different value 'small' 'large' 'huge'.
      
      Now we can launch the HiBench driver program.
      
       `./repeat_run_spark_hadoop.sh `
      
   + **Experiment 2 : Different Number of Nodes** 
   
      Repeat Execution steps for reserveing different number of nodes. 
      
   + **Experiment 3 : Exploring Duration of First and later Iterations**
   
      `vim /var/scratch/ddps2203/HiBench/conf/workloads/ml/kmeans/kmeans.conf`
      
      then configure 'hibench.kmeans.huge.max_iteration		$first_time' or 'hibench.kmeans.huge.max_iteration		5'
      
       `./repeat_run_spark_hadoop.sh `
      
   + **Experiment 4 : Behavior with Insufficient Memory**  
   
      `vim /var/scrath/ddps2203/HiBench/conf/spark.conf`
      
      configure 'spark.executor.memory  $memory_size'.
      
       `./repeat_run_spark_hadoop.sh `

    
### Stop Spark and Hadoop 
  `./stop_spark_hadoop.sh`

### Results

![Insufficient_Memory](https://user-images.githubusercontent.com/91846976/201238738-b02af4e3-b545-49a1-b38b-21f7b88631bc.png)

   ![iteration_stage](https://user-images.githubusercontent.com/91846976/201238744-8582a0d7-0cbe-4bac-9b03-e23ce7a297fc.png)

![node_num](https://user-images.githubusercontent.com/91846976/201238747-36cb2126-7b15-4c25-bc6c-fb47157f507d.png)
![Input_Data_Size](https://user-images.githubusercontent.com/91846976/201238751-8b76dd7e-6c08-4914-9b1c-c58afa00cf0f.png)
