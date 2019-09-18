import pycurl
from io import BytesIO

ips = ["http://norse-antenna-251217.appspot.com/", "http://softwaredevproject1python.appspot.com/", "http://35.225.178.248:8080/random/hello.jsp", "http://34.67.187.36/"]
totaltime = 0
buffer = BytesIO()
c = pycurl.Curl()


for ip in ips:
    c.setopt(c.URL, ip)
    c.setopt(c.WRITEDATA, buffer)
    c.perform()

    body = buffer.getvalue()
    
    totaltime = totaltime + c.getinfo(c.TOTAL_TIME)

c.close()

print(f'Total time: {totaltime}')