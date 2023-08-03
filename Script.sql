create table if not exists songs(
song_id serial integer primary key,
song_name text,
song_year integer
);
create table if not exists author(
author_id serial integer primary key,
author_name text,
author_nackname text
);
create table if not exists genre(
genre_id integer serial primary key,
genre_name text
);
create table if not exists album(
album_id integer serial primary key,
album_name text,
album_year integer
);
create table if not exists digest(
digest_id serial integer primary key,
digest_name text,
digest_yeart integer
);
create table if not exists genre_authors(
id serial integer primary key,
author_id integer references author(author_id),
genre_id integer references genre(genre_id)
);
create table if not exists album_author(
id serial integer primary key,
author_id integer references author(author_id),
album_id integer references album(album_id)
);
create table if not exists song_digest(
id serial integer primary key,
song_id integer references song(song_id)
digest_id integer references digest(digest_id)
);