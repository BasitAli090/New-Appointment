# Building APK and EXE Files

## Prerequisites

### For Android APK:
1. Install [Android Studio](https://developer.android.com/studio)
2. Install Java JDK 11 or higher
3. Set up Android SDK (via Android Studio)

### For Windows EXE:
1. Install Node.js (v16 or higher)
2. Install npm

## Installation

1. Install dependencies:
```bash
npm install
```

2. Install Capacitor CLI globally (for Android):
```bash
npm install -g @capacitor/cli
```

## Building Android APK

### Step 1: Add Android Platform
```bash
npx cap add android
```

### Step 2: Sync Files
```bash
npm run android:sync
```

### Step 3: Open in Android Studio
```bash
npm run android:open
```

### Step 4: Build APK in Android Studio
1. In Android Studio, go to **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
2. Wait for the build to complete
3. The APK will be in: `android/app/build/outputs/apk/release/app-release.apk`

### Alternative: Build from Command Line
```bash
cd android
./gradlew assembleRelease
```
The APK will be in: `android/app/build/outputs/apk/release/app-release.apk`

### Signing APK (for Play Store)
1. Generate a keystore:
```bash
keytool -genkey -v -keystore appointment-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias appointment
```

2. Configure signing in `android/app/build.gradle` (see Android Studio documentation)

## Building Windows EXE

### Step 1: Build EXE
```bash
npm run electron:build
```

### Step 2: Find the EXE
The EXE file will be in: `dist/Al Farooq Appointment System Setup x.x.x.exe`

### Development Mode (Testing)
To test the desktop app without building:
```bash
npm run electron
```

## Creating Icons

### For Windows:
- Create `assets/icon.ico` (256x256 or larger)
- Use an online converter to convert PNG to ICO

### For Android:
- Create `assets/icon.png` (1024x1024 recommended)
- Android Studio will generate all required sizes automatically

## Troubleshooting

### Android Build Issues:
- Make sure Android SDK is properly installed
- Check that JAVA_HOME is set correctly
- Ensure Gradle is working: `cd android && ./gradlew --version`

### Electron Build Issues:
- Make sure all dependencies are installed: `npm install`
- Check Node.js version: `node --version` (should be 16+)
- Clear cache: `rm -rf node_modules dist && npm install`

## File Locations

After building:
- **APK**: `android/app/build/outputs/apk/release/app-release.apk`
- **EXE**: `dist/Al Farooq Appointment System Setup x.x.x.exe`

