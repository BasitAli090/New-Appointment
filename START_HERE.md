# 🚀 Quick Start Guide

## Build APK and EXE Files

### 📱 For Android APK:

**Easiest Method (Windows):**
1. Double-click `build-android.bat`
2. Android Studio will open
3. Click: **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
4. Find APK in: `android/app/build/outputs/apk/release/app-release.apk`

**Manual Method:**
```bash
npm install
npx cap add android
npx cap sync android
npx cap open android
```
Then build in Android Studio.

**Prerequisites:** Android Studio must be installed first!

---

### 💻 For Windows EXE:

**Easiest Method:**
1. Double-click `build-windows.bat`
2. Wait for build to complete
3. Find EXE in: `dist/Al Farooq Appointment System Setup *.exe`

**Manual Method:**
```bash
npm install
npm run electron:build
```

**Prerequisites:** Node.js must be installed!

---

## 📚 Documentation

- **QUICK_BUILD.md** - Simplified build instructions
- **README_BUILD.md** - Complete detailed guide
- **BUILD.md** - Technical build documentation
- **ICONS.md** - How to add custom icons
- **DEPLOY.md** - Vercel deployment guide

---

## ⚡ Test Before Building

### Test Desktop App:
```bash
npm install
npm run electron
```

### Test Android:
Open in Android Studio and click "Run"

---

## 🎯 What You Get

- **APK File**: Install on Android devices
- **EXE File**: Install on Windows computers
- **Offline Support**: Works without internet
- **Data Storage**: Uses device storage (localStorage)

---

## ⚠️ First Time Setup

1. **Install Node.js**: https://nodejs.org (for EXE builds)
2. **Install Android Studio**: https://developer.android.com/studio (for APK builds)
3. **Run**: `npm install` in project folder

---

## 🆘 Need Help?

Check the documentation files listed above, or see troubleshooting sections in:
- `QUICK_BUILD.md`
- `README_BUILD.md`

