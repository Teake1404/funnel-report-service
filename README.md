# GA4 Funnel Report Service

**Standalone deployment** - Completely independent service for GA4 Funnel Analysis reports.

## 🚀 Deploy to Railway

1. **Push this repository to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Funnel Report Service"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/funnel-report-service.git
   git push -u origin main
   ```

2. **In Railway:**
   - Go to https://railway.app
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose THIS repository (funnel-report-service)
   - Railway will auto-detect Dockerfile and deploy!

## ✅ What This Service Provides

- Beautiful HTML funnel analysis report with:
  - 4 KPI cards (View→Cart, Cart→Purchase, Overall, Outliers)
  - 6 interactive Chart.js visualizations with baseline red dashed lines
  - Critical Issues section
  - Growth Opportunities section
  - "See How It Works" link to https://bit.ly/17k_hidden_profit

## 📋 Endpoints

- `GET /` - Main funnel report (HTML)
- `GET /api/health` - Health check

## 🔧 Environment Variables (Optional)

- `LOG_LEVEL` - Set to `INFO` or `DEBUG` (default: `INFO`)
- `PORT` - Railway sets this automatically

No GA4 credentials needed - uses realistic mock data for demo purposes.

## 🎯 Features

- ✅ Completely standalone (no dependencies on other services)
- ✅ Ready for client sharing
- ✅ Beautiful, responsive design
- ✅ Interactive charts with baseline indicators
- ✅ Production-ready with Gunicorn

---

**Deploy and share the URL with clients!** 🎯
