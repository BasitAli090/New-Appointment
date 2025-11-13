# Quick Build Guide

## For Windows EXE (Easiest)

### Option 1: Using Batch File (Windows)
1. Double-click `build-windows.bat`
2. Wait for build to complete
3. Find EXE in `dist` folder

### Option 2: Using Command Line
```bash
npm install
npm run electron:build
```

The EXE will be in: `dist/Al Farooq Appointment System Setup x.x.x.exe`

---

## For Android APK

### Prerequisites First:
1. Install [Android Studio](https://developer.android.com/studio)
2. Open Android Studio and install Android SDK
3. Set up Java JDK

### Option 1: Using Batch File (Windows)
1. Double-click `build-android.bat`
2. Android Studio will open automatically
3. In Android Studio: **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
4. APK will be in: `android/app/build/outputs/apk/release/app-release.apk`

### Option 2: Using Command Line
```bash
npm install
npx cap add android
npx cap sync android
npx cap open android
```
Then build APK in Android Studio as above.

### Option 3: Command Line Build (Advanced)
```bash
cd android
./gradlew assembleRelease
```
APK: `android/app/build/outputs/apk/release/app-release.apk`

---

## Testing Before Building

### Test Desktop App:
```bash
npm run electron
```

### Test Android (in Android Studio):
Click the green "Run" button after opening the project.

---

## Troubleshooting

### "electron not found"
```bash
npm install
```

### "Capacitor not found"
```bash
npm install -g @capacitor/cli
npm install
```

### Android build fails
- Make sure Android Studio is installed
- Check that Android SDK is set up
- Verify Java JDK is installed

### Windows build fails
- Make sure Node.js is installed (v16+)
- Run `npm install` again
- Check Windows Defender isn't blocking

---

## File Sizes
- EXE: ~100-150 MB (includes Electron runtime)
- APK: ~20-30 MB

---

## Distribution

### Windows:
- Share the EXE file from `dist` folder
- Users can install by double-clicking

### Android:
- Share the APK file
- Users need to enable "Install from Unknown Sources" in Android settings
- For Google Play Store, you need a signed APK (see BUILD.md)

