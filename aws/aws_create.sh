#aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-xxxxxxxx --subnet-id subnet-xxxxxxxx
aws ec2 run-instances --image-id ami-26ebbc5c --count 1 --instance-type t2.micro --key-name Barry     --security-group-ids sg-3fa9bc49 --subnet-id subnet-cefe5de5


#my vpcs:
#vpc-705aa414
#vpc-e7498e81
#vpc-cb7a34ae <- default vpc
#
#security groups:
#sg-3fa9bc49

#apparently the public IP address isn't included in the response.
# use: aws ec2 describe-instances


#{
#    "Reservations": [
#        {
#            "Instances": [
#                {
#                    "PublicDnsName": "ec2-52-91-210-80.compute-1.amazonaws.com", 
#


#{
#    "Instances": [
#        {
#            "InstanceId": "i-02e5e15ae4e1fc2c2",
#
#aws ec2 create-tags --resources i- 02e5e15ae4e1fc2c2--tags Key=Bob,Value=Your_Uncle
