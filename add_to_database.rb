# Make a model and use ORM
require 'pg'


# Add new host, need a 'type' field e.g. server or switch

begin

    con = PG.connect :dbname => 'hosts', :user => 'postgres'
    #puts con.server_version

    #con.exec "INSERT INTO hosts VALUES('', '', '')"
    con.exec "CREATE TABLE Hosts (name VARCHAR(20), addr inet, mac macaddr)"
    con.exec "INSERT INTO hosts VALUES('cisco_switch',    '192.168.2.2', '00:0a:b7:5c:4e:c0')"
    con.exec "INSERT INTO hosts VALUES('belkin_wireless', '192.168.2.3', '08:86:3b:38:27:c1')"
    con.exec "INSERT INTO hosts VALUES('kalahari',        '192.168.2.4', '00:1E:4F:55:69:52')"
    con.exec "INSERT INTO hosts VALUES('hp-switch',       '192.168.2.6', '00:0a:57:57:1f:80')"
    con.exec "INSERT INTO hosts VALUES('printer',         '192.168.2.11', '28:80:23:f3:98:0f')"
    con.exec "INSERT INTO hosts VALUES('vonage',          '192.168.2.12', '00:1f:f3:54:95:8b')"

    # Juniper EX
    # other wireless

rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end


# write out dhcpd.conf
# write out dnsmasq
# make inventory dynamic
