#!/bin/bash

for i in $(seq 0 1 2)
do
  echo -n "datadir-mysql-$i: "
  PVNAME=$(kubectl get pvc datadir-mysql-$i -o jsonpath='{.spec.volumeName}')
  NODENAME=$(kubectl get pv $PVNAME -o jsonpath='{.spec.nodeAffinity.required.nodeSelectorTerms.*.matchExpressions.*.values.*}')
  echo $NODENAME
done
