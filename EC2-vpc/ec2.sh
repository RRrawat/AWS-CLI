#!/bin/bash

#it will launch a t2.micro instance in the specified subnet of a VPC. Replace the italicized parameter values with your own.
aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e

#To add a block device to your instance, specify the --block-device-mappings option when you use run-instances.
#The following example parameter provisions a standard Amazon EBS volume that is 20 GB in size, and maps it to your instance using the identifier /dev/sdf.
#--block-device-mappings "[{\"DeviceName\":\"/dev/sdf\",\"Ebs\":{\"VolumeSize\":20,\"DeleteOnTermination\":false}}]"

#The following example adds an Amazon EBS volume, mapped to /dev/sdf, based on an existing snapshot. A snapshot represents an image that is loaded onto the volume for you.
#--block-device-mappings "[{\"DeviceName\":\"/dev/sdf\",\"Ebs\":{\"SnapshotId\":\"snap-a1b2c3d4\"}}]"

#Add a tag to your instance
aws ec2 create-tags --resources i-5203422c --tags Key=Name,Value=MyInstance

aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"
aws ec2 describe-instances --filters "Name=image-id,Values=ami-x0123456,ami-y0123456,ami-z0123456"
aws ec2 terminate-instances --instance-ids i-5203422c
