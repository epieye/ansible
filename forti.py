# http://pyfg.readthedocs.io/en/latest/
from pyFG import FortiOS

d = FortiOS('192.168.1.99', vdom='root')
d.open()



d.close()
