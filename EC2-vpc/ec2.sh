aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e
aws ec2 create-tags --resources i-5203422c --tags Key=Name,Value=MyInstance
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"
aws ec2 describe-instances --filters "Name=image-id,Values=ami-x0123456,ami-y0123456,ami-z0123456"
aws ec2 terminate-instances --instance-ids i-5203422c
