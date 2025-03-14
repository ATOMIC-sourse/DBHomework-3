insert into music_album (name, date) values ('Fire', '1900-01-01'), ('Frost', '1978-04-12'),('Moon', '2019-12-31');

insert into music_genre (name) values ('pop'), ('blues'), ('metal');

insert into trek (name, length, album_name)
values ('Sun', '00:03:12', 'Fire'), ('Mountain', '00:05:43', 'Frost'),
('Astronaut', '00:01:45', 'Moon'), ('Fire inside', '00:01:01', 'Fire'),
('Cold between us', '00:04:05', 'Frost'), ('Emptiness', '00:06:00', 'Moon'),
('Glories', '00:02:19', 'Fire'), ('Ball', '00:02:03', 'Frost'),
('Saturn', '00:01:30', 'Moon'), ('My own story', '00:05:11', 'Moon');

insert into music_artist (name) values ('MC Sunfire'), ('Mr. Anderson'), ('Neo'), ('Empty grasp');

insert into collection (name, date) 
values ('Good ms', '2020-05-12'), ('Dk', '2000-01-26'), ('Music', '1999-06-15'), ('Fav', '2012-01-01');

insert into trekscollections (treks_id, collection_id) values (1, 1), (2, 1), (5,1), (3, 2),
(4, 2), (6, 3), (7, 3), (1, 3), (8, 4), (9, 4), (3, 4), (10, 1);

insert into artistsgenres (artist_id, genre_id) values (1, 1), (2, 2), (3, 1), (3, 2), (4, 1), (4, 3);

insert into artistalbums (artist_id, album_id) values (1, 1), (2, 1), (3, 1), (3, 3), (4, 3);