#!/bin/python3
import os
import shutil

home_dir = os.environ["HOME"]

src_path_list = [
    (".zshrc", os.path.join(home_dir, ".zshrc")),
    (".tmux.conf", os.path.join(home_dir, ".tmux.conf"))
]

for src, dst in src_path_list:
    print(src, dst)

    if os.path.exists(dst):
        print(f"Path: {dst} exists. Do you overwrite it?(y/n)")
        res = input()

        if res == "y":
            shutil.copy(src, dst)
            print(f"Copied {src} to {dst}")
    else:
        shutil.copy(src, dst)
        print(f"Copied {src} to {dst}")
