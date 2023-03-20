create table if not exists genre (
	id serial primary key,
	genre_name varchar(50) not null unique
);
create table if not exists singer (
	id serial primary key,
	singer_name varchar(50) not null	
);
create table if not exists genre_singer (
    genre_id integer references genre(id),
    singer_id integer references singer(id),
    constraint genre_singer_pk primary key (genre_id, singer_id)
);
create table if not exists album (
	id serial primary key,
	album_name varchar(50) not null,
	year_of_release integer not null
);
create table if not exists singer_album (
    singer_id integer references singer(id),
    album_id integer references album(id),
    constraint singer_album_pk primary key (singer_id, album_id)
);
create table if not exists track (
	id serial primary key,
	track_name varchar(100) not null unique,
	duration integer not null,
	album_id integer references album(id)
);
create table if not exists collection (
    id serial primary key,
    collection_name varchar(50) not null unique,
    year_of_release integer not null
);
create table if not exists track_collection (
    track_id integer references track(id),
    collection_id integer references collection(id),
    constraint track_collection_pk primary key (track_id, collection_id)
);
