  CREATE DATABASE IF NOT EXISTS Hockey;
    USE Hockey;

    DROP TABLE IF EXISTS hockey_team;
    CREATE TABLE hockey_team(
        team_id			INT(6)			AUTO_INCREMENT,
        team_name		VARCHAR(50)		NOT NULL UNIQUE,
        PRIMARY KEY(team_id)
    );

    INSERT INTO hockey_team VALUES
        (1, 'Dabang Mumbai'),
        (2, 'Delhi Waveriders'),
        (3, 'Kalinga Lancers'),
        (4, 'Punjab Warriors'),
        (5, 'Ranchi Rays'),
        (6, 'Uttar Pradesh Wizards'),
        (7, 'Mumbai Magicians'),
        (8, 'Ranchi Rhinos');
        
    DROP TABLE IF EXISTS location;
    CREATE TABLE location(
        loc_id			INT(6)			AUTO_INCREMENT,
        loc_city		VARCHAR(50)		NOT NULL UNIQUE,
        loc_stadium             VARCHAR(50)             NOT NULL,
        PRIMARY KEY(loc_id)
    );

    INSERT INTO location VALUES
        (1,    'Mumbai',          'Mahindra Hockey Stadium'),
        (2,    'Delhi',           'Shivaji Hockey Stadium'),
        (3,    'Bhubaneswar',     'Kalinga Stadium'),
        (4,    'Chandigarh',      'Sector 42 Stadium'),
        (5,    'Ranchi',          'Birsa Munda Hockey Stadium'),
        (6,    'Lucknow',         'Dhyanchand Astroturf Stadium');
        
    DROP TABLE IF EXISTS hockey_players;
    CREATE TABLE hockey_players(
        players_id			INT(6)				AUTO_INCREMENT,
        players_name		        VARCHAR(50)			NOT NULL UNIQUE,
        team_id                         INT(6)				NOT NULL REFERENCES relation(team_id),
        loc_id				INT(6)				NOT NULL REFERENCES location(loc_id),
        PRIMARY KEY(players_id)
    );

    INSERT INTO hockey_players VALUES
        (1, 'Johan Bjorkman',1,1),
        (2, 'Mark Gleghorne',4,4),
        (3, 'Gurmail Singh',1,1),
        (4, 'Baljit Singh Boparai',4,4),
        (5, 'Manpreet Jr',1,1),
        (6, 'P.R.Aiappa',6,6),
        (7, 'Parvinder Singh',2,2),
        (8, 'Nicholas Spooner',6,6),
        (9, 'Justin Reid-Ross',2,2),
        (10, 'Ashley Jackson',5,5),
        (11, 'Vikas Dahiya',2,2),
        (12, 'Birendra Lakra',2,2),
        (13, 'Glenn Turner',3,3),
        (14, 'Imran Khan',8,5),
        (15, 'Amit Rohidas',3,3),
        (16, 'Akash Chitke',5,5);

        