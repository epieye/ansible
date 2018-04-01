# https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/welcome.html

require 'aws-sdk-ec2'
require 'base64'

# User code that's executed when the instance starts. This would be good but it doesn't seem to work. path?
script = 'script.sh'
encoded_script = Base64.encode64(script)

ec2 = Aws::EC2::Resource.new(region: 'us-east-1')

instance = ec2.create_instances({
  image_id: 'ami-26ebbc5c',
  min_count: 1,
  max_count: 1,
  key_name: 'Maurice',
  security_group_ids: ['sg-3fa9bc49'],
  user_data: encoded_script,
  instance_type: 't2.micro',
  placement: {
    availability_zone: 'us-east-1a'
  },
  subnet_id: 'subnet-cefe5de5',
  #iam_instance_profile: {
  #  arn: 'arn:aws:iam::' + '742629497219' + ':user/epieye'
  #}
})

# Wait for the instance to be created, running, and passed status checks
ec2.client.wait_until(:instance_status_ok, {instance_ids: [instance.first.id]})
 
# Name the instance 'MyGroovyInstance' and give it the Group tag 'MyGroovyGroup'
instance.batch_create_tags({ tags: [{ key: 'Bob', value: 'Your_Uncle' }, { key: 'this', value: 'that' }]})
 
#puts instance.id
puts instance.instance_variables
#puts instance.public_ip_address
#puts instance.public_dns_name

#puts "ssh -i ~/.ssh/Maurice.pem ec2-user@#{public_ip_address}"
