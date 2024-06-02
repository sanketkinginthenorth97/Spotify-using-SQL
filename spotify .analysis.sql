use spotify;
show tables;


select * from spotify1;

#1 which track has highest number of streams?/
select * from spotify1
order by streams desc
 limit 5;
 
 
#2 which track has lowest number of streams?
select * from spotify1
order by streams asc
 limit 5;

 
#3which year maximum songs were released?
select sum(track_name), released_year from spotify1 
group by 2
 order by 1 desc;
 
 
#4which song is in maximum number of playlist
select * from spotify1 
order by in_spotify_playlists
 desc limit 5;


 #5Count of artists
 select track_name, artist(s)_name, count(artist_count) 
 from spotify1 
 group by 3;
 
 
 
 #6list the top 10 tracks with highest danceability
 select * from spotify1
 order by "danceability_%" desc 
 limit 10;
 
 
 #7list top track in Apple playlists
  select track_name , (in_apple_playlists) from spotify1
  order by (in_apple_playlists) desc
  limit 10 ;
  
  
  #8count number of songs
   select count(*) from spotify1;

  #9count the number of tracks in shazam_charts
  select max(in_shazam_charts) from spotify1; 

 #10count the tracks by mode
 select sum(track_name) , mode from spotify1
 group by 2;
 
 #give all the keys 
 select DISTINCT(artsits_name) from spotify1;