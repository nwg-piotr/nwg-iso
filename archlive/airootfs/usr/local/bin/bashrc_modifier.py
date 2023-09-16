#!/usr/bin/python3

"""
This script adds once or removes all occurrences of the "install-shell" line in all users ~./bashrc files.
"""

import argparse
import os


def load_text_file(path):
    try:
        with open(path, 'r') as file:
            data = file.read()
            return data
    except Exception as e:
        print(e)
        return None


def save_list_to_text_file(data, file_path):
    text_file = open(file_path, "w")
    for line in data:
        text_file.write(line + "\n")
    text_file.close()


def append():
    for item in os.listdir("/home"):
        bashrc = os.path.join("/home", item, ".bashrc")
        if os.path.isfile(bashrc):
            lines = load_text_file(bashrc).splitlines()
            if lines:
                lines.append("install-shell")
                save_list_to_text_file(lines, bashrc)


def remove():
    for item in os.listdir("/home"):
        bashrc = os.path.join("/home", item, ".bashrc")
        if os.path.isfile(bashrc):
            lines = load_text_file(bashrc).splitlines()
            if lines:
                output = []
                for line in lines:
                    if "install-shell" not in line:
                        output.append(line)
                save_list_to_text_file(output, bashrc)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-a",
                        "--append",
                        action="store_true",
                        help="Add installer to ~/.bashrc files")
    parser.add_argument("-r",
                        "--remove",
                        action="store_true",
                        help="Remove installer from ~/.bashrc files")

    args = parser.parse_args()

    if args.append:
        append()

    elif args.remove:
        remove()

    else:
        print("No argument specified")


if __name__ == '__main__':
    main()
