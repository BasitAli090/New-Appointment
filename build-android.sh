#!/bin/bash

echo "Building Android APK..."
echo ""

echo "Step 1: Installing dependencies..."
npm install

echo ""
echo "Step 2: Adding Android platform..."
npx cap add android

echo ""
echo "Step 3: Syncing files..."
npx cap sync android

echo ""
echo "Step 4: Opening Android Studio..."
echo "Please build the APK in Android Studio:"
echo "1. Go to Build > Build Bundle(s) / APK(s) > Build APK(s)"
echo "2. Wait for build to complete"
echo "3. APK will be in: android/app/build/outputs/apk/release/app-release.apk"
echo ""

npx cap open android

