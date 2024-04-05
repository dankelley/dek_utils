#!/usr/bin/env python3
import sys
from time import strftime
from shutil import copy, copytree
from os.path import isdir

def main(fractional_second=False):
    if len(sys.argv) > 1:
        file = sys.argv[1]
        if len(sys.argv) == 3:
            add = sys.argv[2]
        else:
            add = ""
        if fractional_second:
            t = strftime("%Y%m%dT%H%M%s")
        else:
            t = strftime("%Y%m%dT%H%M%S")
        parts = file.split('.')
        if len(parts) == 2:
            if add != "":
                ofile = parts[0] + "_" + t + "_" + add + "." + parts[1]
            else:
                ofile = parts[0] + "_" + t + "." + parts[1]
        else:
            if add != "":
                ofile = file + "_" + t + "_" + add
            else:
                ofile = file + "_" + t
        if isdir(file):
            copytree(file, ofile)
        else:
            copy(file, ofile)
        print(("created %s" % ofile))
    else:
        print("must name a file")
        sys.exit(2)

if __name__ == "__main__":
    main()
