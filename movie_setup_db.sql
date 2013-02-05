create table people
  (
    id serial8 primary key,
    first varchar(20) not null,
    last varchar(30) unique,
    dob date check (dob < '1/1/2000'),
    rel_status varchar(30) ,
    num_friends int2 default 0,
    city varchar(30)
    );