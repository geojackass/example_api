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
CREATE INDEX earth_observation_data_lat_index ON earth_observation_data(lat);
CREATE INDEX earth_observation_data_lon_index ON earth_observation_data(lon);
CREATE INDEX earth_observation_data_observed_at_year_index ON earth_observation_data(observed_at_year);
CREATE INDEX earth_observation_data_observed_at_month_index ON earth_observation_data(observed_at_month);
CREATE INDEX earth_observation_data_observed_at_day_index ON earth_observation_data(observed_at_day);
