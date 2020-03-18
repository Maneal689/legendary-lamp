#!/usr/bin/python3

import os
import shutil


def select_from(choices):
    res = -1
    print("================")
    for i in range(len(choices)):
        print("[", i, "]: ", choices[i], sep="")
    try:
        res = int(input("Your choice: "))
    except:
        res = -1
    return res


def main():
    theme_fold = os.getenv("AWESOME_THEMES")
    themes = os.listdir(theme_fold)
    selected = select_from(themes)
    if selected < 0:
        exit(0)
    selected_theme = themes[selected]
    shutil.rmtree(os.path.join(os.getenv("HOME"), ".config", "awesome"))
    shutil.copytree(os.path.join(theme_fold, selected_theme),
                    os.path.join(os.getenv("HOME"), ".config", "awesome"))
    print("OK, you can now restart awesome")


if __name__ == "__main__":
    main()
