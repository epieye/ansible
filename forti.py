# http://pyfg.readthedocs.io/en/latest/
from pyFG import FortiOS

d = FortiOS('fortigate', vdom='root')
d.open()



d.close()
