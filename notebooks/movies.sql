.header on
.separator '\t'
.mode column
PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS actedIn;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;

CREATE TABLE movies(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL);

CREATE TABLE actors(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL);

CREATE TABLE actedIn(
    id INTEGER PRIMARY KEY,
    movieid INTEGER NOT NULL,
    actorid INTEGER NOT NULL,
    FOREIGN KEY(movieid) REFERENCES movies(id)
    FOREIGN KEY(actorid) REFERENCES actors(id));
    --FOREIGN KEY(movieid) REFERENCES movies(id) ON DELETE CASCADE ON UPDATE CASCADE,
    --FOREIGN KEY(actorid) REFERENCES actors(id) ON DELETE CASCADE ON UPDATE CASCADE);

-- add data
INSERT INTO movies(name) VALUES('Titanic');
INSERT INTO movies(name) VALUES('Armageddon');
INSERT INTO movies(name) VALUES('Avengers');
INSERT INTO actors(name) VALUES('Leonardo Da Vinci');
INSERT INTO actors(name) VALUES('Kate Winslet');
INSERT INTO actors(name) VALUES('Bruce Willis');
INSERT INTO actors(name) VALUES('Ben Affleck');
INSERT INTO actors(name) VALUES('Liv Tyler');
INSERT INTO actors(name) VALUES('Robert Downey Jr.');
INSERT INTO actedIn(movieid,actorid) VALUES(1,1);
INSERT INTO actedIn(movieid,actorid) VALUES(1,2);
INSERT INTO actedIn(movieid,actorid) VALUES(2,3);
INSERT INTO actedIn(movieid,actorid) VALUES(2,4);
INSERT INTO actedIn(movieid,actorid) VALUES(2,5);
INSERT INTO actedIn(movieid,actorid) VALUES(3,6);

-- try deleting or updating a row from movies

-- then create the table with ON DELETE CASCADE ON UPDATE CASCADE and then delete/update a row from movies
