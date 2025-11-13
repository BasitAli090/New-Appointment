// Preload script for Electron
// This runs in the renderer process before the page loads
const { contextBridge } = require('electron');

// Expose a flag to indicate we're running in Electron
contextBridge.exposeInMainWorld('electronAPI', {
    isElectron: true,
    platform: process.platform
});

