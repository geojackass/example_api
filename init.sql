DROP TABLE earth_observation_data;
CREATE TABLE earth_observation_data(
id serial NOT NULL,
observed_at DATE,
lat NUMERIC(7,3),
lon NUMERIC(7,3),
prc NUMERIC(7,3),
sst NUMERIC(7,3),
ssw NUMERIC(7,3),
smc NUMERIC(7,3),
snd NUMERIC(7,3),
sic NUMERIC(7,3),
observed_at_year INTEGER,
observed_at_month INTEGER,
observed_at_day INTEGER,
CONSTRAINT earth_observation_data_key PRIMARY KEY (id)
);
