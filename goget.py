#!/usr/bin/env python3
"""Update Go programs from source."""
import subprocess

PACKAGES = [
    'github.com/asciimoo/wuzz',
    'github.com/cespare/reflex',
    'github.com/github/hub',
    'github.com/gohugoio/hugo',
    'github.com/sirupsen/logrus',
]


def main():
    """Update list of Go Packages."""
    for package in PACKAGES:
        subprocess.run(f'go get -u -v {package}', check=True, shell=True)


if __name__ == '__main__':
    main()
