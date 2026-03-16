CREATE INDEX idx_country_genre ON stream_acct(
    info.country ,
    info.shows[].genres[] )
