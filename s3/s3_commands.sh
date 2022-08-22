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

#The s3 cp command uses the following syntax to upload a file stream from stdin to a specified bucket.
aws s3 cp - <target> [--options]

#The s3 cp command uses the following syntax to download an Amazon S3 file stream for stdout.
aws s3 cp <target> [--options] -

#Sync objects
aws s3 sync <source> <target> [--options]
