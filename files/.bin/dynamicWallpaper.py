#!/usr/bin/python3

from datetime import datetime
from datetime import timedelta
from time import sleep
from os import system

DYNAMICS = [{"hour": 0, "minute": 0, "wallpaper": "/home/maneal/.config/bspwm/wallpapers/midnight-wallpaper.jpg"},
            {"hour": 7, "minute": 0,
                "wallpaper": "/home/maneal/.config/bspwm/wallpapers/morning-wallpaper.jpg"},
            {"hour": 14, "minute": 0,
                "wallpaper": "/home/maneal/.config/bspwm/wallpapers/noon-wallpaper.jpg"},
            {"hour": 19, "minute": 0,
                "wallpaper": "/home/maneal/.config/bspwm/wallpapers/night-wallpaper.jpg"},
            ]


def wallpaperTime(i):
    now = datetime.now()
    next_time = datetime(now.year,
                         now.month,
                         now.day,
                         DYNAMICS[i]["hour"],
                         DYNAMICS[i]["minute"])
    if (next_time - now).total_seconds() < 0:
        next_time += timedelta(1)
    return next_time


def get_current_wallpaper():
    now = datetime.now()
    current_wallpaper = 0
    while current_wallpaper < len(DYNAMICS) - 1 and (DYNAMICS[current_wallpaper + 1]["hour"] < now.hour or (DYNAMICS[current_wallpaper + 1]["hour"] == now.hour and DYNAMICS[current_wallpaper + 1]["minute"] < now.minute)):
        current_wallpaper += 1
    return current_wallpaper


def set_wallpaper(wallpaper_index):
    wallpaper = DYNAMICS[wallpaper_index]["wallpaper"]
    system("feh --bg-fill " + wallpaper)


def main():
    current_wallpaper_index = get_current_wallpaper()
    set_wallpaper(current_wallpaper_index)

    while True:
        current_wallpaper_index = (current_wallpaper_index + 1) % len(DYNAMICS)
        next_time = wallpaperTime(current_wallpaper_index)
        sleep_time = (next_time - datetime.now()).total_seconds()
        sleep(sleep_time)
        set_wallpaper(current_wallpaper_index)


if __name__ == "__main__":
    main()
