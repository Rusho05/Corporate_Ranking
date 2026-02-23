-- Create the follow_ups table
CREATE TABLE IF NOT EXISTS follow_ups (
  "id" text PRIMARY KEY,
  "name" text NOT NULL,
  "company" text NOT NULL,
  "countryCode" text NOT NULL,
  "phone" text NOT NULL,
  "website" text,
  "followUpTime" timestamp with time zone NOT NULL,
  "timeZone" text NOT NULL,
  "comments" text,
  "isCompleted" boolean DEFAULT false,
  "createdAt" timestamp with time zone DEFAULT now(),
  "updatedAt" timestamp with time zone
);

-- Turn on Row Level Security
ALTER TABLE follow_ups ENABLE ROW LEVEL SECURITY;

-- Allow anonymous access for the demo (or modify to your auth needs)
CREATE POLICY "Allow anonymous read access"
ON follow_ups FOR SELECT
TO anon
USING (true);

CREATE POLICY "Allow anonymous insert access"
ON follow_ups FOR INSERT
TO anon
WITH CHECK (true);

CREATE POLICY "Allow anonymous update access"
ON follow_ups FOR UPDATE
TO anon
USING (true)
WITH CHECK (true);

CREATE POLICY "Allow anonymous delete access"
ON follow_ups FOR DELETE
TO anon
USING (true);
