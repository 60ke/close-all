# CloseAll

A simple Mac application to close all running applications with one click.

Inspired by [this Sspai article](https://sspai.com/post/26549).

## Features
- Quits all open applications except Finder.
- Prompts to save changes in open documents.

## How to use
1. Download the latest `CloseAll.dmg` from the [Releases](https://github.com/60ke/close-all/releases) page.
2. Open the DMG and drag `CloseAll.app` to your `Applications` folder.
3. (Optional) Drag it to your Dock for quick access.

## Troubleshooting

### "App is damaged" or "Unidentified Developer"
Since this app is not signed with a paid Apple Developer certificate, macOS might show a security warning. To open it for the first time:

1.  **Right-click** `CloseAll.app` in your Applications folder.
2.  Select **Open** from the menu.
3.  A dialog will appear saying "macOS cannot verify the developer...". Click **Open** again.
4.  The app will now run, and you won't see this warning again.

#### 常见问题（中文说明）
如果提示“已损坏”或“无法验证开发者”：
1. 在“应用程序”文件夹中，**右键点击** `CloseAll.app`。
2. 在菜单中选择 **打开**。
3. 弹出的对话框中会出现 **“打开”** 按钮，点击即可正常运行。

#### Advanced (Terminal fix)
If the above doesn't work, run this in Terminal:
```bash
sudo xattr -rd com.apple.quarantine /Applications/CloseAll.app
```

## Build from source
Run the build script to generate a DMG:
```bash
./build.sh
```

## License
MIT
