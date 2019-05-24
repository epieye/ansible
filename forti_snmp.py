import sys, paramiko
from pyFG import FortiOS
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

#print
#print '#' * 50
print output
#print '#' * 50
#print


#net_connect.send_command_expect('config system interface')
#net_connect.send_command_expect('edit lan')
#net_connect.send_command_expect('set allowaccess snmp')
#net_connect.send_command_expect('end')
#config system interface
#edit lan
#set allowaccess snmp
#end

#print output

#d = ConnectHandler(**device)
#d = FortiOS('fortigate', vdom='root')


#d = paramiko.Transport(('192.168.1.99', 22))
#d.connect(username='admin', password='')
#
#d = FortiOS('fortigate', vdom='root')
#
#d.open()
#
#d.load_config('system interface lan')
#
#print d.running_config.to_text()

#config system interface
#edit lan
#set allowaccess snmp
#end

## show system snmp sysinfo 
#config system snmp sysinfo
#    set status enable
#    set contact-info "warren@ourzoo.us"
#    set location "Den"
#end

## show system snmp community 
#config system snmp community
#    edit 1
#        set name "bobulike"
#        set events cpu-high mem-low log-full intf-ip vpn-tun-up vpn-tun-down ha-switch ha-hb-failure ips-signature ips-anomaly av-virus av-oversize av-pattern av-fragmented bgp-established bgp-backward-transition ha-member-up ha-member-down ent-conf-change av-conserve av-bypass av-oversize-passed av-oversize-blocked ips-pkg-update ips-fail-open faz-disconnect wc-ap-up wc-ap-down fswctl-session-up fswctl-session-down
#    next
#end

#d = netmiko.Transport(('192.168.1.99', 22))
#d = FortiOS('fortigate', vdom='root')


#d.close()
