CREATE TABLE movies (
                        movie_id SERIAL PRIMARY KEY,
                        title VARCHAR(255) NOT NULL,
                        release_date DATE,
                        duration INT,
                        director VARCHAR(255)
);
insert into movies(title,release_date,duration,director)
values('Erte kelgen turnalar','1989-04-03',115,'Chyngyz Aitmatov'),
      ('Do+Fa','2008-06-04',90,'Ernist Abdyjaparov'),
      ('Kurut','2015-08-21',106,'Rysbek Jabirov');

create table actors(
                       id serial primary key,
                       full_name varchar (200) not null,
                       age int not null,
                       movie_id int references movies(movie_id));
insert into actors(full_name,age,movie_id)
values('Sultan Murat',25,1),('Samat Erkinbekov',34,2),('Kuba',33,3);


create table genres(
                       id serial primary key,
                       genres_name varchar (100)not null,
                       movie_id int references movies(movie_id),
                       actor_id int references actors(id));

insert into genres(genres_name,movie_id,actor_id)
values('Thriller',1,1),('Drama',2,2),('Comedy',3,3);

create table teams(
                      id serial primary key,
                      team_name varchar(50)not null unique,
                      coach_name varchar (100)not null,
                      contry varchar (100) not null);
insert into teams (team_name, coach_name, contry)
values
    ('Manchester United', 'Ole Gunnar Solskjaer', 'England'),
    ('Real Madrid', 'Carlo Ancelotti', 'Spain'),
    ('Bayern Munich', 'Julian Nagelsmann', 'Germany'),
    ('Paris Saint-Germain', 'Mauricio Pochettino', 'France');

create table players(
                        id serial primary key,
                        name_of_players varchar (100)not null,
                        age int not null,
                        nationality varchar (100)not null,
                        team_id int references teams(id));
insert into players (name_of_players, age, nationality, team_id)
values
    ('Marcus Rashford', 23, 'England', 1),
    ('Karim Benzema', 33, 'France', 2),
    ('Thomas Muller', 31, 'Germany', 3),
    ('Neymar Jr', 29, 'Brazil', 4);

create table musicInstruments(
                                 id serial primary key,
                                 name_ofMusicInstruments varchar (150)not null,
                                 origin varchar (200)not null,
                                 description text not null);
insert into musicInstruments (name_ofMusicInstruments, origin, description)
values
    ('Piano', 'Italy', 'A versatile musical instrument with a keyboard, widely used in classical and contemporary music.'),
    ('Guitar', 'Spain', 'A string instrument typically with six strings, popular in various genres of music.'),
    ('Drums', 'Various', 'A percussion instrument played by striking or hitting with sticks or hands.'),
    ('Violin', 'Italy', 'A bowed string instrument with four strings, widely used in classical music.'),
    ('Flute', 'Various', 'A wind instrument with a high-pitched sound produced by blowing air across a hole.') ;


create table genresMusics(
                             id serial primary key,
                             genres_name varchar (100) not null,
                             origin_genres varchar (160)not null,
                             musInstrument_id int references musicInstruments(id));
insert into genresMusics (genres_name, origin_genres, musInstrument_id)
values
    ('Rock', 'United States', 2),
    ('Classical', 'Various', 4),
    ('Pop', 'United States', 1),
    ('Jazz', 'United States', 3),
    ('Hip Hop', 'United States', 5);


create table singers(
                        id serial primary key,
                        singer_fullName varchar (100)not null,
                        nationality varchar (100)not null,
                        age int not null,
                        gender varchar (100)not null);

insert into singers (singer_fullName, nationality, age, gender)
values
    ('Freddie Mercury', 'British', 45, 'Male'),
    ('Beyoncé', 'American', 39, 'Female'),
    ('Andrea Bocelli', 'Italian', 63, 'Male'),
    ('Adele', 'British', 33, 'Female'),
    ('Elvis Presley', 'American', 42, 'Male');


create table musics(
                       id serial primary key,
                       music_name varchar (100) not null,
                       singer_id int references singers(id),
                       genresMusic_id int references genresMusics(id));
insert into musics (music_name, singer_id, genresMusic_id)
values
    ('Bohemian Rhapsody', 1, 1),
    ('Halo', 2, 3),
    ('Nessun Dorma', 3, 2),
    ('Rolling in the Deep', 4, 3),
    ('Can''t Help Falling in Love', 5, 1);

