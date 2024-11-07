from struct import unpack, pack
import sys

filename = sys.argv[1]

with open(filename, "rb") as f:
    d = f.read()

crc = 0
for i in range(0, len(d)-4, 4):
    dd = d[i:i+4]
    crc += unpack("<I", dd)[0]

print(pack("<I", (0x100000000-crc&0xffffffff)).hex())