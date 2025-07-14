import sys
import json

def parse(v):
    return list(map(int, v.split('.')))

start = sys.argv[1]
end = sys.argv[2]

s = parse(start)
e = parse(end)

versions = []
cur = s[:]

while cur <= e:
    versions.append('.'.join(map(str, cur)))
    cur[-1] += 1
    for i in reversed(range(len(cur))):
        if cur[i] >= 10:
            cur[i] = 0
            if i > 0:
                cur[i-1] += 1

versions = [v for v in versions if parse(v) <= e]
print(json.dumps(versions))
