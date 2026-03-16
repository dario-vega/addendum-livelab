CREATE INDEX idx_country_showid_date ON stream_acct(
    info.country ,
    info.shows[].showId ,
    info.shows[].seriesInfo[].episodes[].date )
