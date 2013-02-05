/*Works*/

create table movies
  (
    id serial8 primary key,
    title varchar(50) not null,
    year int4,
    rated varchar(40),
    released varchar(40),
    runtime varchar(40),
    genre varchar(40),
    director varchar(40),
    writer varchar(40),
    actors varchar(90),
    plot varchar(1000),
    poster varchar(201),
    imdbRating varchar(111),
    imdbVotes varchar(222),
    imdbID varchar(333),
    response varchar(444)
);
/*
 ["Title",
 "Year",
 "Rated",
 "Released",
 "Runtime",
 "Genre",
 "Director",
 "Writer",
 "Actors",
 "Plot",
 "Poster",
 "imdbRating",
 "imdbVotes",
 "imdbID",
 "Response"]
 */