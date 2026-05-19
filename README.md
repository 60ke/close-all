# CloseAll

A simple Mac application to close all running applications with one click.

Inspired by [this Sspai article](https://sspai.com/post/26549).

## Features
- Quits all open applications except Finder.
- Prompts to save changes in open documents.

## How to use
1. Download the latest `CloseAll.dmg` from the [Releases](https://github.com/yourusername/close-all/releases) page.
2. Open the DMG and drag `CloseAll.app` to your `Applications` folder.
3. (Optional) Drag it to your Dock for quick access.

## Distribution
To distribute the app:
1. Run `./build.sh` to generate the DMG in the `build/` folder.
2. Create a new [Release](https://github.com/yourusername/close-all/releases/new) on GitHub.
3. Upload `build/CloseAll-1.0.0.dmg` as an asset to the release.

## Build from source
Run the build script to generate a DMG:
```bash
./build.sh
```

## License
MIT
