# OpenCanvas 🎨

> **"You're just a pixel. Together, you're unstoppable."**

A collaborative, infinite pixel art canvas where anyone can paint, anyone can overwrite, and nothing lasts forever.

---

## Philosophy

OpenCanvas is a social experiment in collaboration and impermanence:

- **No ownership** - Any pixel can be overwritten by anyone
- **Energy system** - 20 energy points, regenerate 1 every 2 seconds
- **Pure chaos** - Watch art emerge from coordinated communities
- **Nothing lasts forever** - Like Tibetan sand mandalas

---

## Features

### MVP (Phase 1) ✅
- [x] 1000x1000 pixel canvas
- [x] Energy bar system (20 points, 2s regen)
- [x] Full color picker (16.7M colors)
- [x] Real-time collaboration
- [x] Anonymous painting

### Phase 2 (Coming Soon)
- [ ] Pixel metadata (hover to see who placed it)
- [ ] Zoom/pan controls
- [ ] Mini-map overview
- [ ] User accounts (optional)
- [ ] Social links on pixels
- [ ] Pixel history/time-travel

### Phase 3 (Mobile)
- [ ] React Native app
- [ ] Touch gestures
- [ ] Haptic feedback
- [ ] Shared codebase via monorepo

---

## Tech Stack

**Monorepo:** Turborepo  
**Web App:** Next.js 15 + TypeScript + Tailwind  
**Mobile App:** React Native (Phase 3)  
**Database:** Supabase (PostgreSQL + Real-time)  
**Deployment:** Vercel

---

## Setup

### 1. Install Dependencies

```bash
npm install
```

### 2. Create Supabase Project

1. Go to [supabase.com](https://supabase.com)
2. Create a new project
3. Copy your project URL and anon key

### 3. Set Up Database

Run the schema in `supabase-schema.sql` in your Supabase SQL editor:

```sql
-- Creates pixels table with real-time enabled
```

### 4. Configure Environment

```bash
cd apps/web
cp .env.local.example .env.local
# Edit .env.local with your Supabase credentials
```

### 5. Run Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)

---

## Monorepo Structure

```
opencanvas/
├── apps/
│   ├── web/              # Next.js web app
│   └── mobile/           # React Native (coming soon)
├── packages/
│   ├── ui/               # Shared components
│   ├── canvas-engine/    # Core pixel logic (coming soon)
│   ├── api/              # API client
│   └── types/            # TypeScript types
└── supabase-schema.sql   # Database schema
```

---

## Philosophy & Inspiration

### The Pawn Metaphor

Like a pawn on a chessboard:
- You have limited power (1 pixel every 2 seconds)
- You can be overwritten
- You seem insignificant alone
- **But coordinated pawns build kingdoms**

### Inspirations

- **r/place** (Reddit) - Collaborative pixel art at scale
- **Million Dollar Homepage** - Grid ownership concept
- **Tibetan Sand Mandalas** - Art that doesn't last
- **Chess** - Strategic coordination, limited moves

---

## Roadmap

**Week 1:** MVP launch (canvas + energy + real-time)  
**Week 2:** User accounts + pixel metadata + socials  
**Week 3:** Mobile app + cross-platform sync  
**Month 2:** Time-lapse videos, leaderboards, achievements  
**Month 3:** Premium features, API access

---

## Contributing

This is an open experiment. Ideas welcome!

1. Fork the repo
2. Create a feature branch
3. Submit a PR

---

## License

MIT

---

## Tagline

**"What happens when you give the internet a canvas and no rules?"**

**OpenCanvas: A social experiment in collaboration.**

---

Built with ⚡ by JUFU
