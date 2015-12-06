drop table bookmarks;
create table bookmarks (
  id serial4 primary key,
  url text not null,
  name varchar(255) not null,
  genre varchar(255)
);

insert into bookmarks (url, name, genre) values ('www.starters.com','starters', 'genre-starters');
insert into bookmarks (url, name, genre) values ('www.mains.com', 'mains', 'genre-mains');
insert into bookmarks (url, name, genre) values ('www.desserts.com', 'desserts', 'genre-desserts');
