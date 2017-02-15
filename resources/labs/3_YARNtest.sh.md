-------
#Change Logs
-Eddited the time command 
-outputted the value of reducer in to file
-segrate all log into different directories
--------
```
#!/bin/sh
# Confirm the path values given below correspond to your installation

MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP=/opt/cloudera/parcels/CDH/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 2
do
   # Reducer containers
   for j in 2
   do
      # Container memory
      for k in 4028 6144
      do
         # Set mapper JVM heap
         MAP_MB=`echo "($k*0.8)/1" | bc`

         # Set reducer JVM heap
         RED_MB=`echo "($k*0.8)/1" | bc`

        echo -e " Mapper: ${i} \n Reducers: ${j} \n Memory: ${k} \n Mapper JVM: ${MAP_MB} \n Reducer JVM= ${RED_MB}" >> values/tera_${i}_${j}_${k}.val
        /usr/bin/time --output="timedir/teragen_${i}_${j}_${k}.err" -f "Real: %e \n"   ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     51200000 /tmp/results/tg-10GB-${i}-${j}-${k} 1> commandout/tera_${i}_${j}_${k}.out 2> commandout/tera_${i}_${j}_${k}.err

       /usr/bin/time --output="timedir/terasort_${i}_${j}_${k}.err" -f "Real: %e \n"  ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
                     /tmp/results/tg-10GB-${i}-${j}-${k}  \
                     /tmp/results/ts-10GB-${i}-${j}-${k} 1>> commandout/tera_${i}_${j}_${k}.out 2>> commandout/tera_${i}_${j}_${k}.err

        $HADOOP/hadoop fs -rm -r -skipTrash /tmp/results/tg-10GB-${i}-${j}-${k}
        $HADOOP/hadoop fs -rm -r -skipTrash /tmp/results/ts-10GB-${i}-${j}-${k}
      done
   done
done

echo Testing loop ended on `date`



```