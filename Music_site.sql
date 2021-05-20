create table if not exists Songwriter (
	id serial primary key, 
	name varchar(100) not null unique
);

create table if not exists Alias_Songwriter (
	id serial primary key,
	alias varchar(100) not null,
	id_sa integer references Songwriter(id)

);
create table if not exists Songwriters_Albums (
	id serial primary key,
	name_Album varchar(100) not null,
	released date,
	id_sw integer references Songwriter(id)
);
create table if not exists Tracks (
	id serial primary key,
	track_name varchar(100),
	duration time,
	id_Album integer references Songwriters_Albums(id)
	
);