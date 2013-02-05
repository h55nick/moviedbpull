/*Works*/

create table movies
  (
    id serial8 primary key,
    title varchar(20) not null,
    year int4,
    rated varchar(20),
    released varchar(20),
    runtime varchar(20),
    genre varchar(20),
    director varchar(20),
    writer varchar(20),
    actors varchar(20),
    plot varchar(30),
    poster varchar(20),
    imdbRating varchar(20),
    imdbVotes varchar(20),
    imdbID varchar(20),
    response varchar(20)
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