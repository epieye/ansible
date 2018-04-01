require 'json'

`aws ec2 run-instances --image-id ami-26ebbc5c --count 1 --instance-type t2.micro --key-name Maurice --security-group-ids sg-3fa9bc49 --subnet-id subnet-cefe5de5`




get_instance_id = JSON.parse(`aws ec2 describe-instances`)['Reservations'][0]['Instances'][0]['InstanceId']
`aws ec2 create-tags --resources #{get_instance_id } --tags Key=Bob,Value=Your_Uncle`




public_dns_name = JSON.parse(`aws ec2 describe-instances`)['Reservations'][0]['Instances'][0]['PublicDnsName']

puts "ssh -i ~/.ssh/Maurice.pem ec2-user@#{public_dns_name}"

