#!/usr/bin/env python3.7
"""Update Go programs from source."""
import asyncio

PACKAGES = [
    'github.com/asciimoo/wuzz',
    'github.com/cespare/reflex',
    'github.com/github/hub',
    'github.com/gohugoio/hugo',
    'github.com/sirupsen/logrus',
    'github.com/wtfutil/wtf',
]


async def go_get(package):
    """Run `go get -u -v package`."""
    process = await asyncio.create_subprocess_shell(f'go get -u -v {package}')
    code = await process.wait()
    return code


async def update():
    """Update list of Go Packages."""
    gets = [go_get(package) for package in PACKAGES]
    await asyncio.gather(*gets)


def main():
    """Entry point."""
    asyncio.run(update())


if __name__ == '__main__':
    main()
