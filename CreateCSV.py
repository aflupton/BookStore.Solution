#!/usr/bin/env python
import re

database = open("database.csv",'w')

for line in open("database.txt"):
	line = re.sub(" 	","",line)
	line = re.sub("\t",",",line)
	database.write(line)


