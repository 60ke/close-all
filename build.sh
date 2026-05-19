#!/bin/bash

# Configuration
APP_NAME="CloseAll"
VERSION="1.0.0"
DMG_NAME="${APP_NAME}-${VERSION}.dmg"
APP_PATH="${APP_NAME}.app"
STAGING_DIR="build/staging"

# Clean up previous builds
echo "Cleaning up..."
rm -rf build/
mkdir -p build/

# Strip extended attributes to prevent "damaged" errors
echo "Cleaning extended attributes..."
xattr -cr "${APP_PATH}"

# Re-sign the app ad-hoc to fix "damaged" error
echo "Re-signing the app ad-hoc..."
codesign --force --deep --sign - "${APP_PATH}"

# Create the DMG using create-dmg
echo "Creating professional DMG..."
create-dmg \
  --volname "${APP_NAME}" \
  --window-pos 200 120 \
  --window-size 600 400 \
  --icon-size 100 \
  --icon "${APP_NAME}.app" 175 190 \
  --hide-extension "${APP_NAME}.app" \
  --app-drop-link 425 190 \
  "build/${DMG_NAME}" \
  "${APP_PATH}"

echo "Build complete: build/${DMG_NAME}"
