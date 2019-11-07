# Joins winter_songs with song_analysis
SELECT position, winter_songs.track_name, artist, streams, danceability, energy, loudness, valence, tempo, song_analysis.mode FROM winter_songs
INNER JOIN song_analysis
ON song_analysis.track_name = winter_songs.track_name;

# Joins summer_songs with song_analysis
SELECT position, summer_songs.track_name, artist, streams, danceability, energy, loudness, valence, tempo, song_analysis.mode FROM summer_songs
INNER JOIN song_analysis
ON song_analysis.track_name = summer_songs.track_name;

# Select averages from winter songs
SELECT AVG(danceability), AVG(energy), AVG(loudness), AVG(valence), AVG(tempo), SUM(song_analysis.mode)/COUNT(winter_songs.track_name) FROM winter_songs
INNER JOIN song_analysis
ON song_analysis.track_name = winter_songs.track_name;

# Select averages from summer songs
SELECT AVG(danceability), AVG(energy), AVG(loudness), AVG(valence), AVG(tempo), SUM(song_analysis.mode)/COUNT(summer_songs.track_name) FROM summer_songs
INNER JOIN song_analysis
ON song_analysis.track_name = summer_songs.track_name;


select * from song_analysis;
select * from winter_songs;