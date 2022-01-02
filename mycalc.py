#!env python3
import sys
import hashlib

def calc(name, extra):
    m = hashlib.sha256()
    m.update(name.encode("utf-8"))
    m.update(extra.encode("utf-8"))
    return m.hexdigest()


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("usage: %s <name> <extra>" % sys.argv[0])
        exit(1)

    name = sys.argv[1]
    extra = sys.argv[2]
    hex = calc(name, extra)
    print(hex[:len(extra)])
