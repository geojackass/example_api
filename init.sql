DROP TABLE earth_observation_data;
CREATE TABLE earth_observation_data(
id serial NOT NULL,
observed_at DATE,
lat NUMERIC(6,3),
lon NUMERIC(6,3),
prc NUMERIC(6,3),
sst NUMERIC(5,3),
ssw NUMERIC(4,2),
smc NUMERIC(6,3),
snd NUMERIC(6,3),
sic NUMERIC(6,3),
CONSTRAINT earth_observation_data_key PRIMARY KEY (id)
);
