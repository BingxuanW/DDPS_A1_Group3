cat > .bashrc << EOF
#.bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module load gcc
module load slurm
module add prun
module add python/3.6.0

# JAVA
export JAVA_HOME=/var/scratch/ddps2203/jdk;
export PATH=${JAVA_HOME}/bin:${PATH};
alias java="$JAVA_HOME/bin/java"

# SPARK
export SPARK_HOME=/var/scratch/ddps2203/spark;
export PATH=${SPARK_HOME}/bin:$PATH;

# Hadoop
export HADOOP_HOME=/var/scratch/ddps2203/hadoop;
export PATH=${PATH}:${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin;

# Maven
export MAVEN_HOME=/var/scratch/ddps2203/maven
# export M2_HOME=${MAVEN_HOME}
# export M2=${MAVEN_HOME}/bin
export PATH=${MAVEN_HOME}/bin:$PATH

EOF
source .bashrc

