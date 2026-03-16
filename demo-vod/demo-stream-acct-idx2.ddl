CREATE INDEX IF NOT EXISTS idx_showid_minWatched ON stream_acct(
    info.shows[].showId ,
    info.shows[].seriesInfo[].episodes[].minWatched ,
    info.shows[].seriesInfo[].episodes[].episodeID )
    WITH UNIQUE KEYS PER ROW
