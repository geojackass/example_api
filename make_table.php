<?php
make_init_sql();
make_index_sql();

function make_init_sql(){
	$fp = fopen("init.sql", "w");

	$sql = <<< EOS
CREATE TABLE gcom_w1_data(
  id serial NOT NULL,
  observed_at DATE,
  lat REAL,
  lon REAL,
  prc REAL,
  sst REAL,
  ssw REAL,
  smc REAL,
  snd REAL,
  sic REAL,
  CONSTRAINT gcom_w1_data_key PRIMARY KEY (id)
);

CREATE TABLE tokens(
  token varchar(11),
  CONSTRAINT tokens_key PRIMARY KEY (token)
);

EOS;

	fwrite($fp, $sql);

	for($i = 0; $i < 365; $i++){
		$date = date('Ymd', strtotime("2012-08-01 +$i days"));
		$from = date('Y-m-d', strtotime("2012-08-01 +$i days"));
		$to = date('Y-m-d', strtotime('2012-08-01 +'.($i+1).' days'));
		$sql = <<< EOS

CREATE TABLE gcom_w1_{$date}_data (
  CHECK(observed_at = '{$from}'::date)
) INHERITS(gcom_w1_data);
EOS;
		fwrite($fp, $sql);
	}

	fclose($fp);
}

function make_index_sql(){
	$fp = fopen("create_index.sql", "w");

	for($i = 0; $i < 365; $i++){
		$date = date('Ymd', strtotime("2012-08-01 +$i days"));
		$from = date('Y-m-d', strtotime("2012-08-01 +$i days"));
		$to = date('Y-m-d', strtotime('2012-08-01 +'.($i+1).' days'));
		$sql = <<< EOS

ALTER TABLE gcom_w1_{$date}_data ADD PRIMARY KEY(id);
CREATE INDEX gcom_w1_{$date}_data_lat_lon_index ON gcom_w1_{$date}_data(lat, lon);
EOS;
		fwrite($fp, $sql);
	}

	fclose($fp);
}

?>