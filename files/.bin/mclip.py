#!/usr/bin/python3

import pyperclip
import signal
import sys

class MClip:
    def __init__(self, sep=""):
        self.__concat = []
        self.__sep = sep

    def run(self):
        pyperclip.copy("")
        while True:
            in_clip = pyperclip.paste()
            if in_clip != self.__sep.join(self.__concat):
                self.__concat.append(in_clip)
                pyperclip.copy(self.__sep.join(self.__concat))
                print(f"\"{self.__sep.join(self.__concat)}\" copied to clipboard!")

def on_interrupt(signum, frame):
    print("Interrupted, stopping process...")
    sys.exit(0)

def main():
    signal.signal(signal.SIGINT, on_interrupt)
    sep = ""
    if len(sys.argv) > 1 and "sep=" in sys.argv[1]:
        sep = sys.argv[1].split("=")[1]
    mclip = MClip(sep)
    mclip.run()


if __name__ == "__main__":
    main()
