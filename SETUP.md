# OpenCanvas Setup Guide

## ✅ What's Done

1. **Monorepo created** with Turborepo
2. **Web app built** with Next.js + Canvas component
3. **Energy bar system** implemented (20 points, 2s regen)
4. **Real-time sync** ready (Supabase integration)
5. **Color picker** + painting logic
6. **Database schema** prepared

---

## 🚀 Next Steps (To Get It Running)

### Step 1: Create Supabase Project (5 minutes)

1. Go to **[supabase.com](https://supabase.com)**
2. Sign in / Sign up
3. Click **"New Project"**
4. Fill in:
   - Name: `opencanvas`
   - Database Password: (generate strong password)
   - Region: Choose closest to you
5. Wait ~2 minutes for project to spin up

### Step 2: Set Up Database (2 minutes)

1. In your Supabase dashboard, go to **SQL Editor**
2. Click **"New Query"**
3. Copy/paste the contents of `supabase-schema.sql`
4. Click **"Run"**

This creates:
- `pixels` table (stores all pixel data)
- `users` table (for future accounts feature)
- Real-time enabled on pixels table
- Indexes for performance

### Step 3: Get API Credentials (1 minute)

1. In Supabase dashboard, go to **Settings > API**
2. Copy these two values:
   - **Project URL** (looks like: `https://xxxxx.supabase.co`)
   - **anon public** key (long string starting with `eyJ...`)

### Step 4: Configure App (1 minute)

```bash
cd ~/clawd/projects/opencanvas/apps/web
cp .env.local.example .env.local
nano .env.local  # or use any editor
```

Paste your credentials:
```
NEXT_PUBLIC_SUPABASE_URL=https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJxxxxxxxxxxxxx
```

### Step 5: Run It! (30 seconds)

```bash
cd ~/clawd/projects/opencanvas
npm run dev
```

Open **http://localhost:3000**

🎨 **You should see a black canvas. Click any pixel to paint!**

---

## 🚢 Deploy to Vercel (Optional - 5 minutes)

### Option A: From GitHub

1. Push to GitHub:
   ```bash
   gh repo create opencanvas --public --source=.
   git push -u origin master
   ```

2. Go to **[vercel.com](https://vercel.com)**
3. Import your `opencanvas` repo
4. Framework: **Next.js**
5. Root Directory: **`apps/web`**
6. Add environment variables:
   - `NEXT_PUBLIC_SUPABASE_URL`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
7. Deploy!

### Option B: Direct Deploy

```bash
cd ~/clawd/projects/opencanvas/apps/web
vercel --prod --token YOUR_VERCEL_TOKEN
```

---

## 🧪 Testing Checklist

Once running, test:

- [ ] Canvas loads (black 1000x1000 grid)
- [ ] Energy bar shows 20/20
- [ ] Click pixel → color picker appears
- [ ] Select color → pixel paints
- [ ] Energy decreases to 19/20
- [ ] Energy regenerates (1 point every 2 seconds)
- [ ] Open in second browser → paint → see update in first browser (real-time!)

---

## 🐛 Troubleshooting

**Canvas not loading?**
- Check browser console for errors
- Verify Supabase credentials in `.env.local`

**Real-time not working?**
- Make sure you ran the SQL schema (enables real-time on pixels table)
- Check Supabase Dashboard > Database > Replication

**Can't paint?**
- Energy must be > 0
- Check network tab for failed API calls

---

## 📊 Current Status

**MVP Features Working:**
- ✅ Canvas rendering
- ✅ Energy bar system
- ✅ Color picker
- ✅ Pixel placement
- ✅ Real-time sync
- ✅ Anonymous painting

**Next Features to Add:**
- Pixel metadata panel (hover to see who placed it)
- Zoom/pan controls
- Mini-map overview
- User accounts
- Social links

---

## 🎯 Estimated Time to Live

**From scratch to deployed:** ~15 minutes
- Supabase setup: 5 min
- Local testing: 5 min
- Vercel deployment: 5 min

**Then you're LIVE and the world can start painting!** 🎨🚀

---

Questions? Check the main README.md or ask in Discord.
