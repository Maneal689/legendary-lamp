#!/usr/bin/python3

import sys

def argc():
    cpt = 0
    for elm in sys.argv:
        cpt += 1
    return (cpt)

def is_var(line):
    words = line.lstrip().split(" ")
    if (len(words) == 3 and words[0] == "private"):
        var = words[len(words) - 2] + " " + words[len(words) - 1]
        return (var[:len(var) - 1])
    return ("")

def main():
    ### READ THE FILE ###
    if (argc() != 2):
        exit(84)
    file = open(sys.argv[1], "r")
    text = file.read()
    file.close()

    ### TAKE LINES AND ANALISYS THESE ###
    lines = text.split("\n")
    res_get = []
    res_set = []
    for line in lines:
        var = is_var(line)
        if (var != ""):
            var = var.split(" ")
            res_get.append("public " +
                    var[0] + " " +
                    "get" + var[1].capitalize() +
                    "()\n{\n    return (" +
                    var[1] + ");\n}")
            res_set.append("public void " +
                    "set" + var[1].capitalize() + "(" + var[0] + " p" +
                    var[1].capitalize() + ")\n{\n    " +
                    var[1] + " = " + "p" + var[1].capitalize() + ";\n}")

    res = ""
    res += "//*** ACCESSEURS ***\n\n"
    for getter in res_get:
        res += getter + "\n\n"
    res += "//*** MUTATEURS ***\n\n"
    for setter in res_set:
        res += setter + "\n\n"
    print(res)

if (__name__ == "__main__"):
    main()
