#! /usr/bin/python3

import sys


def init_list():
    """
    """
    mons_numbers = [0 for i in range(5)]
    for i in range(1, len(sys.argv)):
        try:
            mons_numbers[5 - i] = int(sys.argv[i])
        except Exception as error:
            print(error)
            sys.exit(0)
    return mons_numbers


def end(mons_list):
    return any(map(lambda elm: elm > 0, mons_list))


def main():
    """
    Main function
    """
    if len(sys.argv) <= 1:
        print(
            "USAGE: ", sys.argv[0], "5* [4* [3* [2* [1*]]]]\n\t<n>*: Number of monster of <n> stars to sacrifice")
        sys.exit(0)
    mons = init_list()
    for i in range(4):
        used = mons[i] - (mons[i] % (i + 2))
        created = mons[i] // (i + 2)
        mons[i] = mons[i] % (i + 2)
        mons[i + 1] += created
        print("Used", used, i + 1, "star monsters to create",
              created, "new", i + 2, "star monsters")
        print("(", used, "x", i + 1, "* => ", created, "x", i + 2, "*) ", str(mons), sep="")


if __name__ == "__main__":
    main()
