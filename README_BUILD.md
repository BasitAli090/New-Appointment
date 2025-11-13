# Complete Build Instructions

## 📱 Android APK Build

### Prerequisites:
1. **Android Studio** - Download from [developer.android.com/studio](https://developer.android.com/studio)
2. **Java JDK 11+** - Usually comes with Android Studio
3. **Node.js** - Download from [nodejs.org](https://nodejs.org)

### Steps:

1. **Install Dependencies:**
   ```bash
   npm install
   ```

2. **Add Android Platform:**
   ```bash
   npx cap add android
   ```

3. **Sync Files:**
   ```bash
   npx cap sync android
   ```

4. **Open in Android Studio:**
   ```bash
   npx cap open android
   ```

5. **Build APK in Android Studio:**
   - Go to: **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
   - Wait for build to complete
   - APK location: `android/app/build/outputs/apk/release/app-release.apk`

### Quick Build (Windows):
Double-click `build-android.bat`

---

## 💻 Windows EXE Build

### Prerequisites:
1. **Node.js** (v16 or higher) - Download from [nodejs.org](https://nodejs.org)

### Steps:

1. **Install Dependencies:**
   ```bash
   npm install
   ```

2. **Build EXE:**
   ```bash
   npm run electron:build
   ```

3. **Find EXE:**
   Location: `dist/Al Farooq Appointment System Setup x.x.x.exe`

### Quick Build (Windows):
Double-click `build-windows.bat`

### Test Before Building:
```bash
npm run electron
```

---

## 🎨 Adding Custom Icons

### Windows:
1. Create `assets/icon.ico` (256x256 or larger)
2. Rebuild: `npm run electron:build`

### Android:
1. Create `assets/icon.png` (1024x1024 recommended)
2. Android Studio will auto-generate all required sizes

See `ICONS.md` for detailed icon guide.

---

## 📦 File Structure After Build

```
project/
├── dist/                          # Windows EXE output
│   └── Al Farooq Appointment System Setup *.exe
├── android/
│   └── app/
│       └── build/
│           └── outputs/
│               └── apk/
│                   └── release/
│                       └── app-release.apk
└── ...
```

---

## 🚀 Distribution

### Windows:
- Share the `.exe` file from `dist` folder
- Users install by double-clicking
- No additional setup required

### Android:
- Share the `.apk` file
- Users need to enable "Install from Unknown Sources"
- For Google Play Store: Sign the APK (see BUILD.md)

---

## ⚠️ Troubleshooting

### "npm: command not found"
- Install Node.js from nodejs.org

### "Capacitor: command not found"
```bash
npm install -g @capacitor/cli
```

### Android build fails
- Ensure Android Studio is fully installed
- Check Android SDK is configured
- Verify Java JDK is installed

### Electron build fails
- Clear cache: `rm -rf node_modules dist && npm install`
- Check Node.js version: `node --version` (should be 16+)

### Build takes too long
- First build downloads Electron (~100MB) - this is normal
- Subsequent builds are faster

---

## 📝 Notes

- **First Build**: Takes longer (downloads Electron/Android SDK)
- **File Sizes**: EXE ~100-150MB, APK ~20-30MB
- **Offline Mode**: Apps work offline using localStorage
- **Database**: Desktop/mobile apps use localStorage (not API)

---

## 🆘 Need Help?

1. Check `QUICK_BUILD.md` for simplified instructions
2. Check `BUILD.md` for detailed technical guide
3. Check `ICONS.md` for icon setup

