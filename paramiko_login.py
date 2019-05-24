import sys, paramiko

hostname = 192.168.1.99
password = ""
source = sys.argv[3]
dest = sys.argv[4]

username = "admin"
port = 22

try:
    t = paramiko.Transport((hostname, port))
    t.connect(username=username, password=password)
    sftp = paramiko.SFTPClient.from_transport(t)
    sftp.get(source, dest)

finally:
    t.close()
