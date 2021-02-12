import math
import os
import random
import re
import sys

cost = float(input())
tip = cost * int(input()) / 100
tax = cost * int(input()) / 100
tcost=cost+tip+tax
print(str(round(tcost)))