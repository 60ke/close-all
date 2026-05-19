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
mkdir -p "${STAGING_DIR}"

# Copy App to staging
echo "Preparing staging directory..."
cp -R "${APP_PATH}" "${STAGING_DIR}/"

# Create DMG
echo "Creating DMG..."
hdiutil create -volname "${APP_NAME}" -srcfolder "${STAGING_DIR}" -ov -format UDZO "build/${DMG_NAME}"

echo "Build complete: build/${DMG_NAME}"
