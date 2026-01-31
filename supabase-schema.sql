-- Create pixels table
CREATE TABLE IF NOT EXISTS pixels (
  x INTEGER NOT NULL,
  y INTEGER NOT NULL,
  color TEXT NOT NULL,
  placed_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  user_id UUID,
  username TEXT,
  PRIMARY KEY (x, y)
);

-- Enable real-time
ALTER PUBLICATION supabase_realtime ADD TABLE pixels;

-- Create index for faster queries
CREATE INDEX IF NOT EXISTS idx_pixels_placed_at ON pixels(placed_at DESC);

-- Create users table (for future use)
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  username TEXT UNIQUE NOT NULL,
  twitter TEXT,
  instagram TEXT,
  website TEXT,
  display_socials BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
