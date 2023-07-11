#!/bin/bash

for i in eagle rabbit dolphin
do
  echo "SSH to $i to prepare local disk."
  ssh -o StrictHostKeyChecking=no root@$i /resources/yml/lpv/manage-disk.sh
done
