CREATE INDEX IF NOT EXISTS idx_showid ON stream_acct(
    info.shows[].showId)
    WITH UNIQUE KEYS PER ROW
