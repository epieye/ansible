from netmiko import ConnectHandler
#from getpass import getpass

device = {
    'device_type': 'fortinet',
    'ip': '192.168.1.99',
    'username': 'admin',
    'password': '',
    'port': 22,
}

net_connect = ConnectHandler(**device)
output = net_connect.send_command_expect("show")

print output
