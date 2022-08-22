#Create a bucket
aws s3 mb <target> [--options]

#List buckets and objects
aws s3 ls <target> [--options]

#Delete buckets
aws s3 rb <target> [--options]

#Delete objects in bucket
aws s3 rm  <target> [--options]


#Move objects
aws s3 mv <source> <target> [--options]

#Copy objects
aws s3 cp <source> <target> [--options]
