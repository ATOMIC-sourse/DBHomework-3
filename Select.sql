2.
select max(length) from trek;
select name from trek
where length >= '00:03:30';
select name from collection
where date between '2018-01-01' and '2020-12-31';
select max(name) from music_artist;
select name from trek
where name like '%My%' or name like '%мой%';
3.
select mg.name as genre_name, count(ma.id) as artist_count
from music_genre mg
left join artistsgenres ag on ag.genre_id = mg.id
left join music_artist ma on ma.id = ag.artist_id
group by mg.id, mg.name

select count(t.id) as trek_count
from trek as t
left join music_album as ma on ma.name = t.album_name
where ma.date >= '2019-01-01' and ma.date <= '2020-12-31';

SELECT a.name AS album_name, AVG(t.length) AS average_length
FROM Music_album a
LEFT JOIN trek t ON a.name = t.album_name
GROUP BY a.id, a.name
ORDER BY a.name;

SELECT a.name AS artist_name
FROM music_artist a
WHERE a.id NOT IN (
       SELECT 
           DISTINCT id
       FROM 
           Music_album
       WHERE 
           EXTRACT(YEAR FROM date) = 2020
    )
ORDER BY a.name;

SELECT DISTINCT c.name AS collection_name
FROM 
    collection c
JOIN 
    trekscollections tc ON c.id = tc.collection_id
JOIN
	trek t ON t.id = tc.treks_id
JOIN 
	Music_album al ON al.name = t.album_name
JOIN 
    artistalbums aa ON aa.album_id = al.id
JOIN 
    Music_artist a ON a.id = aa.artist_id
WHERE 
    a.name = 'Neo'
ORDER BY 
    c.name;