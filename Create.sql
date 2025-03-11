create table if not exists Music_genre (
		id serial primary key,
		name varchar(40) not NULL
);
create table if not exists Music_artist (
		id serial primary key,
		name varchar(40) not NULL
);
create table if not exists Music_album (
		id serial primary key,
		name varchar(40) unique not null,
		date date not NULL
);
create table if not exists Trek (
		id serial primary key,
		name varchar(40) not NULL,
		length time not NULL,
		album_name varchar(40) not NULL references Music_album(name)
);
create table if not exists Collection (
		id serial primary key,
		name varchar(40) not NULL,
		date date not null
);
create table if not exists ArtistAlbums (
		artist_id integer references Music_artist(id),
		album_id integer references Music_album(id),
		constraint pk primary key (artist_id, album_id)
);
create table if not exists ArtistsGenres (
		artist_id integer references Music_artist(id),
		genre_id integer references Music_genre(id),
		constraint pk2 primary key (artist_id, genre_id)
);
create table if not exists TreksCollections (
		treks_id integer references Trek(id),
		collection_id integer references Collection(id),
		constraint pk3 primary key (treks_id, collection_id)
);