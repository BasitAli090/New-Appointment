# Deployment Guide for Vercel

## Quick Deploy

1. **Install Vercel CLI** (if not already installed):
```bash
npm install -g vercel
```

2. **Login to Vercel**:
```bash
vercel login
```

3. **Deploy to Vercel**:
```bash
vercel
```

4. **Deploy to Production**:
```bash
vercel --prod
```

## Using Vercel Dashboard

1. Go to [vercel.com](https://vercel.com)
2. Sign up/Login
3. Click "New Project"
4. Import your Git repository or upload the project folder
5. Vercel will automatically detect the configuration

## Database Options for Production

The current setup uses in-memory storage. For production, consider:

### Option 1: Vercel KV (Recommended)
```bash
vercel kv create
```

### Option 2: Supabase (Free tier available)
- Sign up at supabase.com
- Create a new project
- Get your API keys
- Update the API to use Supabase client

### Option 3: MongoDB Atlas (Free tier available)
- Sign up at mongodb.com/cloud/atlas
- Create a cluster
- Get connection string
- Update the API to use MongoDB

## Environment Variables

If using a database, add environment variables in Vercel dashboard:
- Settings → Environment Variables

## Project Structure

```
/
├── api/              # Serverless functions
│   ├── appointments.js
│   └── health.js
├── index.html        # Main dashboard
├── styles.css        # Styles
├── script.js         # Frontend logic
├── vercel.json       # Vercel configuration
└── package.json      # Dependencies
```

