CREATE TABLE Countries (
    Code INT(3) NOT NULL,
    Name VARCHAR(255) NOT NULL, 
    PRIMARY KEY (Code)
);

CREATE TABLE People (
    Mobile VARCHAR(50) NOT NULL,
    FacebookUID VARCHAR(50) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Gender VARCHAR(6),
    Live VARCHAR(255),
    Origin VARCHAR(255),
    Relation VARCHAR(255),
    Occupation VARCHAR(255),
    Country INT(3) NOT NULL,
    PRIMARY KEY (Mobile, Country),
    CONSTRAINT FK_Country FOREIGN KEY (Country)
    REFERENCES Countries(Code)
);

LOAD DATA INFILE '0.csv' into table people
fields terminated by ';'
lines terminated by '\n';