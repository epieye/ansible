require 'json'

get_instance_id = JSON.parse(`aws ec2 describe-instances`)['Reservations'][0]['Instances'][0]['InstanceId']
`aws ec2 create-tags --resources #{get_instance_id } --tags Key=Bob,Value=Your_Uncle`


