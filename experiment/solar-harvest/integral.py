import csv
import datetime

summap = {}

with open('readings.dat', 'rb') as csvfile:
    datareader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    
    prevtime = None
    
    for row in datareader:
        currdate = row[0]
        currtime = datetime.datetime.strptime(row[1], "%H:%M:%S.%f")

        if currdate in summap:
            delta = currtime - prevtime
            
            v = float(row[2])               # V
            a = float(row[3])/1000          # A
            t = delta.total_seconds()/3600  # h

            a5v = a * (v / 5)               # A at 5V

            summap[currdate] += t*a5v
        else:
            summap[currdate] = 0.0
            
        prevtime = currtime   
                       
sum = 0
             
for date in sorted(summap.keys()):
    sum += summap[date] * 1000 # mA
    print date, '\t', summap[date] * 1000, '\t', sum               
