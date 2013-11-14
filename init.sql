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

CREATE TABLE gcom_w1_20120801_data (
  CHECK(observed_at >= DATE'2012-08-01' AND observed_at < DATE'2012-08-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120802_data (
  CHECK(observed_at >= DATE'2012-08-02' AND observed_at < DATE'2012-08-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120803_data (
  CHECK(observed_at >= DATE'2012-08-03' AND observed_at < DATE'2012-08-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120804_data (
  CHECK(observed_at >= DATE'2012-08-04' AND observed_at < DATE'2012-08-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120805_data (
  CHECK(observed_at >= DATE'2012-08-05' AND observed_at < DATE'2012-08-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120806_data (
  CHECK(observed_at >= DATE'2012-08-06' AND observed_at < DATE'2012-08-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120807_data (
  CHECK(observed_at >= DATE'2012-08-07' AND observed_at < DATE'2012-08-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120808_data (
  CHECK(observed_at >= DATE'2012-08-08' AND observed_at < DATE'2012-08-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120809_data (
  CHECK(observed_at >= DATE'2012-08-09' AND observed_at < DATE'2012-08-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120810_data (
  CHECK(observed_at >= DATE'2012-08-10' AND observed_at < DATE'2012-08-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120811_data (
  CHECK(observed_at >= DATE'2012-08-11' AND observed_at < DATE'2012-08-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120812_data (
  CHECK(observed_at >= DATE'2012-08-12' AND observed_at < DATE'2012-08-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120813_data (
  CHECK(observed_at >= DATE'2012-08-13' AND observed_at < DATE'2012-08-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120814_data (
  CHECK(observed_at >= DATE'2012-08-14' AND observed_at < DATE'2012-08-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120815_data (
  CHECK(observed_at >= DATE'2012-08-15' AND observed_at < DATE'2012-08-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120816_data (
  CHECK(observed_at >= DATE'2012-08-16' AND observed_at < DATE'2012-08-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120817_data (
  CHECK(observed_at >= DATE'2012-08-17' AND observed_at < DATE'2012-08-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120818_data (
  CHECK(observed_at >= DATE'2012-08-18' AND observed_at < DATE'2012-08-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120819_data (
  CHECK(observed_at >= DATE'2012-08-19' AND observed_at < DATE'2012-08-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120820_data (
  CHECK(observed_at >= DATE'2012-08-20' AND observed_at < DATE'2012-08-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120821_data (
  CHECK(observed_at >= DATE'2012-08-21' AND observed_at < DATE'2012-08-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120822_data (
  CHECK(observed_at >= DATE'2012-08-22' AND observed_at < DATE'2012-08-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120823_data (
  CHECK(observed_at >= DATE'2012-08-23' AND observed_at < DATE'2012-08-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120824_data (
  CHECK(observed_at >= DATE'2012-08-24' AND observed_at < DATE'2012-08-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120825_data (
  CHECK(observed_at >= DATE'2012-08-25' AND observed_at < DATE'2012-08-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120826_data (
  CHECK(observed_at >= DATE'2012-08-26' AND observed_at < DATE'2012-08-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120827_data (
  CHECK(observed_at >= DATE'2012-08-27' AND observed_at < DATE'2012-08-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120828_data (
  CHECK(observed_at >= DATE'2012-08-28' AND observed_at < DATE'2012-08-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120829_data (
  CHECK(observed_at >= DATE'2012-08-29' AND observed_at < DATE'2012-08-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120830_data (
  CHECK(observed_at >= DATE'2012-08-30' AND observed_at < DATE'2012-08-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120831_data (
  CHECK(observed_at >= DATE'2012-08-31' AND observed_at < DATE'2012-09-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120901_data (
  CHECK(observed_at >= DATE'2012-09-01' AND observed_at < DATE'2012-09-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120902_data (
  CHECK(observed_at >= DATE'2012-09-02' AND observed_at < DATE'2012-09-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120903_data (
  CHECK(observed_at >= DATE'2012-09-03' AND observed_at < DATE'2012-09-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120904_data (
  CHECK(observed_at >= DATE'2012-09-04' AND observed_at < DATE'2012-09-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120905_data (
  CHECK(observed_at >= DATE'2012-09-05' AND observed_at < DATE'2012-09-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120906_data (
  CHECK(observed_at >= DATE'2012-09-06' AND observed_at < DATE'2012-09-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120907_data (
  CHECK(observed_at >= DATE'2012-09-07' AND observed_at < DATE'2012-09-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120908_data (
  CHECK(observed_at >= DATE'2012-09-08' AND observed_at < DATE'2012-09-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120909_data (
  CHECK(observed_at >= DATE'2012-09-09' AND observed_at < DATE'2012-09-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120910_data (
  CHECK(observed_at >= DATE'2012-09-10' AND observed_at < DATE'2012-09-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120911_data (
  CHECK(observed_at >= DATE'2012-09-11' AND observed_at < DATE'2012-09-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120912_data (
  CHECK(observed_at >= DATE'2012-09-12' AND observed_at < DATE'2012-09-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120913_data (
  CHECK(observed_at >= DATE'2012-09-13' AND observed_at < DATE'2012-09-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120914_data (
  CHECK(observed_at >= DATE'2012-09-14' AND observed_at < DATE'2012-09-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120915_data (
  CHECK(observed_at >= DATE'2012-09-15' AND observed_at < DATE'2012-09-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120916_data (
  CHECK(observed_at >= DATE'2012-09-16' AND observed_at < DATE'2012-09-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120917_data (
  CHECK(observed_at >= DATE'2012-09-17' AND observed_at < DATE'2012-09-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120918_data (
  CHECK(observed_at >= DATE'2012-09-18' AND observed_at < DATE'2012-09-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120919_data (
  CHECK(observed_at >= DATE'2012-09-19' AND observed_at < DATE'2012-09-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120920_data (
  CHECK(observed_at >= DATE'2012-09-20' AND observed_at < DATE'2012-09-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120921_data (
  CHECK(observed_at >= DATE'2012-09-21' AND observed_at < DATE'2012-09-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120922_data (
  CHECK(observed_at >= DATE'2012-09-22' AND observed_at < DATE'2012-09-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120923_data (
  CHECK(observed_at >= DATE'2012-09-23' AND observed_at < DATE'2012-09-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120924_data (
  CHECK(observed_at >= DATE'2012-09-24' AND observed_at < DATE'2012-09-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120925_data (
  CHECK(observed_at >= DATE'2012-09-25' AND observed_at < DATE'2012-09-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120926_data (
  CHECK(observed_at >= DATE'2012-09-26' AND observed_at < DATE'2012-09-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120927_data (
  CHECK(observed_at >= DATE'2012-09-27' AND observed_at < DATE'2012-09-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120928_data (
  CHECK(observed_at >= DATE'2012-09-28' AND observed_at < DATE'2012-09-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120929_data (
  CHECK(observed_at >= DATE'2012-09-29' AND observed_at < DATE'2012-09-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20120930_data (
  CHECK(observed_at >= DATE'2012-09-30' AND observed_at < DATE'2012-10-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121001_data (
  CHECK(observed_at >= DATE'2012-10-01' AND observed_at < DATE'2012-10-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121002_data (
  CHECK(observed_at >= DATE'2012-10-02' AND observed_at < DATE'2012-10-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121003_data (
  CHECK(observed_at >= DATE'2012-10-03' AND observed_at < DATE'2012-10-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121004_data (
  CHECK(observed_at >= DATE'2012-10-04' AND observed_at < DATE'2012-10-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121005_data (
  CHECK(observed_at >= DATE'2012-10-05' AND observed_at < DATE'2012-10-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121006_data (
  CHECK(observed_at >= DATE'2012-10-06' AND observed_at < DATE'2012-10-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121007_data (
  CHECK(observed_at >= DATE'2012-10-07' AND observed_at < DATE'2012-10-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121008_data (
  CHECK(observed_at >= DATE'2012-10-08' AND observed_at < DATE'2012-10-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121009_data (
  CHECK(observed_at >= DATE'2012-10-09' AND observed_at < DATE'2012-10-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121010_data (
  CHECK(observed_at >= DATE'2012-10-10' AND observed_at < DATE'2012-10-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121011_data (
  CHECK(observed_at >= DATE'2012-10-11' AND observed_at < DATE'2012-10-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121012_data (
  CHECK(observed_at >= DATE'2012-10-12' AND observed_at < DATE'2012-10-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121013_data (
  CHECK(observed_at >= DATE'2012-10-13' AND observed_at < DATE'2012-10-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121014_data (
  CHECK(observed_at >= DATE'2012-10-14' AND observed_at < DATE'2012-10-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121015_data (
  CHECK(observed_at >= DATE'2012-10-15' AND observed_at < DATE'2012-10-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121016_data (
  CHECK(observed_at >= DATE'2012-10-16' AND observed_at < DATE'2012-10-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121017_data (
  CHECK(observed_at >= DATE'2012-10-17' AND observed_at < DATE'2012-10-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121018_data (
  CHECK(observed_at >= DATE'2012-10-18' AND observed_at < DATE'2012-10-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121019_data (
  CHECK(observed_at >= DATE'2012-10-19' AND observed_at < DATE'2012-10-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121020_data (
  CHECK(observed_at >= DATE'2012-10-20' AND observed_at < DATE'2012-10-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121021_data (
  CHECK(observed_at >= DATE'2012-10-21' AND observed_at < DATE'2012-10-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121022_data (
  CHECK(observed_at >= DATE'2012-10-22' AND observed_at < DATE'2012-10-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121023_data (
  CHECK(observed_at >= DATE'2012-10-23' AND observed_at < DATE'2012-10-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121024_data (
  CHECK(observed_at >= DATE'2012-10-24' AND observed_at < DATE'2012-10-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121025_data (
  CHECK(observed_at >= DATE'2012-10-25' AND observed_at < DATE'2012-10-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121026_data (
  CHECK(observed_at >= DATE'2012-10-26' AND observed_at < DATE'2012-10-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121027_data (
  CHECK(observed_at >= DATE'2012-10-27' AND observed_at < DATE'2012-10-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121028_data (
  CHECK(observed_at >= DATE'2012-10-28' AND observed_at < DATE'2012-10-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121029_data (
  CHECK(observed_at >= DATE'2012-10-29' AND observed_at < DATE'2012-10-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121030_data (
  CHECK(observed_at >= DATE'2012-10-30' AND observed_at < DATE'2012-10-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121031_data (
  CHECK(observed_at >= DATE'2012-10-31' AND observed_at < DATE'2012-11-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121101_data (
  CHECK(observed_at >= DATE'2012-11-01' AND observed_at < DATE'2012-11-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121102_data (
  CHECK(observed_at >= DATE'2012-11-02' AND observed_at < DATE'2012-11-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121103_data (
  CHECK(observed_at >= DATE'2012-11-03' AND observed_at < DATE'2012-11-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121104_data (
  CHECK(observed_at >= DATE'2012-11-04' AND observed_at < DATE'2012-11-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121105_data (
  CHECK(observed_at >= DATE'2012-11-05' AND observed_at < DATE'2012-11-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121106_data (
  CHECK(observed_at >= DATE'2012-11-06' AND observed_at < DATE'2012-11-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121107_data (
  CHECK(observed_at >= DATE'2012-11-07' AND observed_at < DATE'2012-11-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121108_data (
  CHECK(observed_at >= DATE'2012-11-08' AND observed_at < DATE'2012-11-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121109_data (
  CHECK(observed_at >= DATE'2012-11-09' AND observed_at < DATE'2012-11-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121110_data (
  CHECK(observed_at >= DATE'2012-11-10' AND observed_at < DATE'2012-11-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121111_data (
  CHECK(observed_at >= DATE'2012-11-11' AND observed_at < DATE'2012-11-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121112_data (
  CHECK(observed_at >= DATE'2012-11-12' AND observed_at < DATE'2012-11-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121113_data (
  CHECK(observed_at >= DATE'2012-11-13' AND observed_at < DATE'2012-11-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121114_data (
  CHECK(observed_at >= DATE'2012-11-14' AND observed_at < DATE'2012-11-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121115_data (
  CHECK(observed_at >= DATE'2012-11-15' AND observed_at < DATE'2012-11-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121116_data (
  CHECK(observed_at >= DATE'2012-11-16' AND observed_at < DATE'2012-11-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121117_data (
  CHECK(observed_at >= DATE'2012-11-17' AND observed_at < DATE'2012-11-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121118_data (
  CHECK(observed_at >= DATE'2012-11-18' AND observed_at < DATE'2012-11-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121119_data (
  CHECK(observed_at >= DATE'2012-11-19' AND observed_at < DATE'2012-11-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121120_data (
  CHECK(observed_at >= DATE'2012-11-20' AND observed_at < DATE'2012-11-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121121_data (
  CHECK(observed_at >= DATE'2012-11-21' AND observed_at < DATE'2012-11-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121122_data (
  CHECK(observed_at >= DATE'2012-11-22' AND observed_at < DATE'2012-11-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121123_data (
  CHECK(observed_at >= DATE'2012-11-23' AND observed_at < DATE'2012-11-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121124_data (
  CHECK(observed_at >= DATE'2012-11-24' AND observed_at < DATE'2012-11-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121125_data (
  CHECK(observed_at >= DATE'2012-11-25' AND observed_at < DATE'2012-11-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121126_data (
  CHECK(observed_at >= DATE'2012-11-26' AND observed_at < DATE'2012-11-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121127_data (
  CHECK(observed_at >= DATE'2012-11-27' AND observed_at < DATE'2012-11-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121128_data (
  CHECK(observed_at >= DATE'2012-11-28' AND observed_at < DATE'2012-11-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121129_data (
  CHECK(observed_at >= DATE'2012-11-29' AND observed_at < DATE'2012-11-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121130_data (
  CHECK(observed_at >= DATE'2012-11-30' AND observed_at < DATE'2012-12-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121201_data (
  CHECK(observed_at >= DATE'2012-12-01' AND observed_at < DATE'2012-12-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121202_data (
  CHECK(observed_at >= DATE'2012-12-02' AND observed_at < DATE'2012-12-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121203_data (
  CHECK(observed_at >= DATE'2012-12-03' AND observed_at < DATE'2012-12-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121204_data (
  CHECK(observed_at >= DATE'2012-12-04' AND observed_at < DATE'2012-12-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121205_data (
  CHECK(observed_at >= DATE'2012-12-05' AND observed_at < DATE'2012-12-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121206_data (
  CHECK(observed_at >= DATE'2012-12-06' AND observed_at < DATE'2012-12-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121207_data (
  CHECK(observed_at >= DATE'2012-12-07' AND observed_at < DATE'2012-12-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121208_data (
  CHECK(observed_at >= DATE'2012-12-08' AND observed_at < DATE'2012-12-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121209_data (
  CHECK(observed_at >= DATE'2012-12-09' AND observed_at < DATE'2012-12-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121210_data (
  CHECK(observed_at >= DATE'2012-12-10' AND observed_at < DATE'2012-12-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121211_data (
  CHECK(observed_at >= DATE'2012-12-11' AND observed_at < DATE'2012-12-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121212_data (
  CHECK(observed_at >= DATE'2012-12-12' AND observed_at < DATE'2012-12-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121213_data (
  CHECK(observed_at >= DATE'2012-12-13' AND observed_at < DATE'2012-12-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121214_data (
  CHECK(observed_at >= DATE'2012-12-14' AND observed_at < DATE'2012-12-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121215_data (
  CHECK(observed_at >= DATE'2012-12-15' AND observed_at < DATE'2012-12-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121216_data (
  CHECK(observed_at >= DATE'2012-12-16' AND observed_at < DATE'2012-12-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121217_data (
  CHECK(observed_at >= DATE'2012-12-17' AND observed_at < DATE'2012-12-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121218_data (
  CHECK(observed_at >= DATE'2012-12-18' AND observed_at < DATE'2012-12-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121219_data (
  CHECK(observed_at >= DATE'2012-12-19' AND observed_at < DATE'2012-12-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121220_data (
  CHECK(observed_at >= DATE'2012-12-20' AND observed_at < DATE'2012-12-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121221_data (
  CHECK(observed_at >= DATE'2012-12-21' AND observed_at < DATE'2012-12-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121222_data (
  CHECK(observed_at >= DATE'2012-12-22' AND observed_at < DATE'2012-12-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121223_data (
  CHECK(observed_at >= DATE'2012-12-23' AND observed_at < DATE'2012-12-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121224_data (
  CHECK(observed_at >= DATE'2012-12-24' AND observed_at < DATE'2012-12-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121225_data (
  CHECK(observed_at >= DATE'2012-12-25' AND observed_at < DATE'2012-12-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121226_data (
  CHECK(observed_at >= DATE'2012-12-26' AND observed_at < DATE'2012-12-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121227_data (
  CHECK(observed_at >= DATE'2012-12-27' AND observed_at < DATE'2012-12-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121228_data (
  CHECK(observed_at >= DATE'2012-12-28' AND observed_at < DATE'2012-12-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121229_data (
  CHECK(observed_at >= DATE'2012-12-29' AND observed_at < DATE'2012-12-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121230_data (
  CHECK(observed_at >= DATE'2012-12-30' AND observed_at < DATE'2012-12-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20121231_data (
  CHECK(observed_at >= DATE'2012-12-31' AND observed_at < DATE'2013-01-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130101_data (
  CHECK(observed_at >= DATE'2013-01-01' AND observed_at < DATE'2013-01-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130102_data (
  CHECK(observed_at >= DATE'2013-01-02' AND observed_at < DATE'2013-01-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130103_data (
  CHECK(observed_at >= DATE'2013-01-03' AND observed_at < DATE'2013-01-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130104_data (
  CHECK(observed_at >= DATE'2013-01-04' AND observed_at < DATE'2013-01-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130105_data (
  CHECK(observed_at >= DATE'2013-01-05' AND observed_at < DATE'2013-01-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130106_data (
  CHECK(observed_at >= DATE'2013-01-06' AND observed_at < DATE'2013-01-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130107_data (
  CHECK(observed_at >= DATE'2013-01-07' AND observed_at < DATE'2013-01-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130108_data (
  CHECK(observed_at >= DATE'2013-01-08' AND observed_at < DATE'2013-01-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130109_data (
  CHECK(observed_at >= DATE'2013-01-09' AND observed_at < DATE'2013-01-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130110_data (
  CHECK(observed_at >= DATE'2013-01-10' AND observed_at < DATE'2013-01-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130111_data (
  CHECK(observed_at >= DATE'2013-01-11' AND observed_at < DATE'2013-01-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130112_data (
  CHECK(observed_at >= DATE'2013-01-12' AND observed_at < DATE'2013-01-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130113_data (
  CHECK(observed_at >= DATE'2013-01-13' AND observed_at < DATE'2013-01-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130114_data (
  CHECK(observed_at >= DATE'2013-01-14' AND observed_at < DATE'2013-01-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130115_data (
  CHECK(observed_at >= DATE'2013-01-15' AND observed_at < DATE'2013-01-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130116_data (
  CHECK(observed_at >= DATE'2013-01-16' AND observed_at < DATE'2013-01-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130117_data (
  CHECK(observed_at >= DATE'2013-01-17' AND observed_at < DATE'2013-01-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130118_data (
  CHECK(observed_at >= DATE'2013-01-18' AND observed_at < DATE'2013-01-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130119_data (
  CHECK(observed_at >= DATE'2013-01-19' AND observed_at < DATE'2013-01-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130120_data (
  CHECK(observed_at >= DATE'2013-01-20' AND observed_at < DATE'2013-01-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130121_data (
  CHECK(observed_at >= DATE'2013-01-21' AND observed_at < DATE'2013-01-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130122_data (
  CHECK(observed_at >= DATE'2013-01-22' AND observed_at < DATE'2013-01-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130123_data (
  CHECK(observed_at >= DATE'2013-01-23' AND observed_at < DATE'2013-01-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130124_data (
  CHECK(observed_at >= DATE'2013-01-24' AND observed_at < DATE'2013-01-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130125_data (
  CHECK(observed_at >= DATE'2013-01-25' AND observed_at < DATE'2013-01-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130126_data (
  CHECK(observed_at >= DATE'2013-01-26' AND observed_at < DATE'2013-01-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130127_data (
  CHECK(observed_at >= DATE'2013-01-27' AND observed_at < DATE'2013-01-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130128_data (
  CHECK(observed_at >= DATE'2013-01-28' AND observed_at < DATE'2013-01-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130129_data (
  CHECK(observed_at >= DATE'2013-01-29' AND observed_at < DATE'2013-01-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130130_data (
  CHECK(observed_at >= DATE'2013-01-30' AND observed_at < DATE'2013-01-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130131_data (
  CHECK(observed_at >= DATE'2013-01-31' AND observed_at < DATE'2013-02-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130201_data (
  CHECK(observed_at >= DATE'2013-02-01' AND observed_at < DATE'2013-02-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130202_data (
  CHECK(observed_at >= DATE'2013-02-02' AND observed_at < DATE'2013-02-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130203_data (
  CHECK(observed_at >= DATE'2013-02-03' AND observed_at < DATE'2013-02-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130204_data (
  CHECK(observed_at >= DATE'2013-02-04' AND observed_at < DATE'2013-02-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130205_data (
  CHECK(observed_at >= DATE'2013-02-05' AND observed_at < DATE'2013-02-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130206_data (
  CHECK(observed_at >= DATE'2013-02-06' AND observed_at < DATE'2013-02-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130207_data (
  CHECK(observed_at >= DATE'2013-02-07' AND observed_at < DATE'2013-02-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130208_data (
  CHECK(observed_at >= DATE'2013-02-08' AND observed_at < DATE'2013-02-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130209_data (
  CHECK(observed_at >= DATE'2013-02-09' AND observed_at < DATE'2013-02-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130210_data (
  CHECK(observed_at >= DATE'2013-02-10' AND observed_at < DATE'2013-02-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130211_data (
  CHECK(observed_at >= DATE'2013-02-11' AND observed_at < DATE'2013-02-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130212_data (
  CHECK(observed_at >= DATE'2013-02-12' AND observed_at < DATE'2013-02-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130213_data (
  CHECK(observed_at >= DATE'2013-02-13' AND observed_at < DATE'2013-02-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130214_data (
  CHECK(observed_at >= DATE'2013-02-14' AND observed_at < DATE'2013-02-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130215_data (
  CHECK(observed_at >= DATE'2013-02-15' AND observed_at < DATE'2013-02-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130216_data (
  CHECK(observed_at >= DATE'2013-02-16' AND observed_at < DATE'2013-02-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130217_data (
  CHECK(observed_at >= DATE'2013-02-17' AND observed_at < DATE'2013-02-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130218_data (
  CHECK(observed_at >= DATE'2013-02-18' AND observed_at < DATE'2013-02-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130219_data (
  CHECK(observed_at >= DATE'2013-02-19' AND observed_at < DATE'2013-02-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130220_data (
  CHECK(observed_at >= DATE'2013-02-20' AND observed_at < DATE'2013-02-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130221_data (
  CHECK(observed_at >= DATE'2013-02-21' AND observed_at < DATE'2013-02-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130222_data (
  CHECK(observed_at >= DATE'2013-02-22' AND observed_at < DATE'2013-02-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130223_data (
  CHECK(observed_at >= DATE'2013-02-23' AND observed_at < DATE'2013-02-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130224_data (
  CHECK(observed_at >= DATE'2013-02-24' AND observed_at < DATE'2013-02-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130225_data (
  CHECK(observed_at >= DATE'2013-02-25' AND observed_at < DATE'2013-02-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130226_data (
  CHECK(observed_at >= DATE'2013-02-26' AND observed_at < DATE'2013-02-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130227_data (
  CHECK(observed_at >= DATE'2013-02-27' AND observed_at < DATE'2013-02-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130228_data (
  CHECK(observed_at >= DATE'2013-02-28' AND observed_at < DATE'2013-03-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130301_data (
  CHECK(observed_at >= DATE'2013-03-01' AND observed_at < DATE'2013-03-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130302_data (
  CHECK(observed_at >= DATE'2013-03-02' AND observed_at < DATE'2013-03-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130303_data (
  CHECK(observed_at >= DATE'2013-03-03' AND observed_at < DATE'2013-03-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130304_data (
  CHECK(observed_at >= DATE'2013-03-04' AND observed_at < DATE'2013-03-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130305_data (
  CHECK(observed_at >= DATE'2013-03-05' AND observed_at < DATE'2013-03-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130306_data (
  CHECK(observed_at >= DATE'2013-03-06' AND observed_at < DATE'2013-03-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130307_data (
  CHECK(observed_at >= DATE'2013-03-07' AND observed_at < DATE'2013-03-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130308_data (
  CHECK(observed_at >= DATE'2013-03-08' AND observed_at < DATE'2013-03-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130309_data (
  CHECK(observed_at >= DATE'2013-03-09' AND observed_at < DATE'2013-03-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130310_data (
  CHECK(observed_at >= DATE'2013-03-10' AND observed_at < DATE'2013-03-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130311_data (
  CHECK(observed_at >= DATE'2013-03-11' AND observed_at < DATE'2013-03-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130312_data (
  CHECK(observed_at >= DATE'2013-03-12' AND observed_at < DATE'2013-03-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130313_data (
  CHECK(observed_at >= DATE'2013-03-13' AND observed_at < DATE'2013-03-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130314_data (
  CHECK(observed_at >= DATE'2013-03-14' AND observed_at < DATE'2013-03-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130315_data (
  CHECK(observed_at >= DATE'2013-03-15' AND observed_at < DATE'2013-03-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130316_data (
  CHECK(observed_at >= DATE'2013-03-16' AND observed_at < DATE'2013-03-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130317_data (
  CHECK(observed_at >= DATE'2013-03-17' AND observed_at < DATE'2013-03-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130318_data (
  CHECK(observed_at >= DATE'2013-03-18' AND observed_at < DATE'2013-03-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130319_data (
  CHECK(observed_at >= DATE'2013-03-19' AND observed_at < DATE'2013-03-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130320_data (
  CHECK(observed_at >= DATE'2013-03-20' AND observed_at < DATE'2013-03-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130321_data (
  CHECK(observed_at >= DATE'2013-03-21' AND observed_at < DATE'2013-03-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130322_data (
  CHECK(observed_at >= DATE'2013-03-22' AND observed_at < DATE'2013-03-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130323_data (
  CHECK(observed_at >= DATE'2013-03-23' AND observed_at < DATE'2013-03-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130324_data (
  CHECK(observed_at >= DATE'2013-03-24' AND observed_at < DATE'2013-03-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130325_data (
  CHECK(observed_at >= DATE'2013-03-25' AND observed_at < DATE'2013-03-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130326_data (
  CHECK(observed_at >= DATE'2013-03-26' AND observed_at < DATE'2013-03-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130327_data (
  CHECK(observed_at >= DATE'2013-03-27' AND observed_at < DATE'2013-03-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130328_data (
  CHECK(observed_at >= DATE'2013-03-28' AND observed_at < DATE'2013-03-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130329_data (
  CHECK(observed_at >= DATE'2013-03-29' AND observed_at < DATE'2013-03-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130330_data (
  CHECK(observed_at >= DATE'2013-03-30' AND observed_at < DATE'2013-03-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130331_data (
  CHECK(observed_at >= DATE'2013-03-31' AND observed_at < DATE'2013-04-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130401_data (
  CHECK(observed_at >= DATE'2013-04-01' AND observed_at < DATE'2013-04-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130402_data (
  CHECK(observed_at >= DATE'2013-04-02' AND observed_at < DATE'2013-04-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130403_data (
  CHECK(observed_at >= DATE'2013-04-03' AND observed_at < DATE'2013-04-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130404_data (
  CHECK(observed_at >= DATE'2013-04-04' AND observed_at < DATE'2013-04-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130405_data (
  CHECK(observed_at >= DATE'2013-04-05' AND observed_at < DATE'2013-04-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130406_data (
  CHECK(observed_at >= DATE'2013-04-06' AND observed_at < DATE'2013-04-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130407_data (
  CHECK(observed_at >= DATE'2013-04-07' AND observed_at < DATE'2013-04-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130408_data (
  CHECK(observed_at >= DATE'2013-04-08' AND observed_at < DATE'2013-04-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130409_data (
  CHECK(observed_at >= DATE'2013-04-09' AND observed_at < DATE'2013-04-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130410_data (
  CHECK(observed_at >= DATE'2013-04-10' AND observed_at < DATE'2013-04-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130411_data (
  CHECK(observed_at >= DATE'2013-04-11' AND observed_at < DATE'2013-04-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130412_data (
  CHECK(observed_at >= DATE'2013-04-12' AND observed_at < DATE'2013-04-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130413_data (
  CHECK(observed_at >= DATE'2013-04-13' AND observed_at < DATE'2013-04-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130414_data (
  CHECK(observed_at >= DATE'2013-04-14' AND observed_at < DATE'2013-04-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130415_data (
  CHECK(observed_at >= DATE'2013-04-15' AND observed_at < DATE'2013-04-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130416_data (
  CHECK(observed_at >= DATE'2013-04-16' AND observed_at < DATE'2013-04-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130417_data (
  CHECK(observed_at >= DATE'2013-04-17' AND observed_at < DATE'2013-04-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130418_data (
  CHECK(observed_at >= DATE'2013-04-18' AND observed_at < DATE'2013-04-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130419_data (
  CHECK(observed_at >= DATE'2013-04-19' AND observed_at < DATE'2013-04-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130420_data (
  CHECK(observed_at >= DATE'2013-04-20' AND observed_at < DATE'2013-04-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130421_data (
  CHECK(observed_at >= DATE'2013-04-21' AND observed_at < DATE'2013-04-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130422_data (
  CHECK(observed_at >= DATE'2013-04-22' AND observed_at < DATE'2013-04-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130423_data (
  CHECK(observed_at >= DATE'2013-04-23' AND observed_at < DATE'2013-04-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130424_data (
  CHECK(observed_at >= DATE'2013-04-24' AND observed_at < DATE'2013-04-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130425_data (
  CHECK(observed_at >= DATE'2013-04-25' AND observed_at < DATE'2013-04-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130426_data (
  CHECK(observed_at >= DATE'2013-04-26' AND observed_at < DATE'2013-04-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130427_data (
  CHECK(observed_at >= DATE'2013-04-27' AND observed_at < DATE'2013-04-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130428_data (
  CHECK(observed_at >= DATE'2013-04-28' AND observed_at < DATE'2013-04-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130429_data (
  CHECK(observed_at >= DATE'2013-04-29' AND observed_at < DATE'2013-04-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130430_data (
  CHECK(observed_at >= DATE'2013-04-30' AND observed_at < DATE'2013-05-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130501_data (
  CHECK(observed_at >= DATE'2013-05-01' AND observed_at < DATE'2013-05-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130502_data (
  CHECK(observed_at >= DATE'2013-05-02' AND observed_at < DATE'2013-05-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130503_data (
  CHECK(observed_at >= DATE'2013-05-03' AND observed_at < DATE'2013-05-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130504_data (
  CHECK(observed_at >= DATE'2013-05-04' AND observed_at < DATE'2013-05-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130505_data (
  CHECK(observed_at >= DATE'2013-05-05' AND observed_at < DATE'2013-05-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130506_data (
  CHECK(observed_at >= DATE'2013-05-06' AND observed_at < DATE'2013-05-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130507_data (
  CHECK(observed_at >= DATE'2013-05-07' AND observed_at < DATE'2013-05-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130508_data (
  CHECK(observed_at >= DATE'2013-05-08' AND observed_at < DATE'2013-05-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130509_data (
  CHECK(observed_at >= DATE'2013-05-09' AND observed_at < DATE'2013-05-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130510_data (
  CHECK(observed_at >= DATE'2013-05-10' AND observed_at < DATE'2013-05-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130511_data (
  CHECK(observed_at >= DATE'2013-05-11' AND observed_at < DATE'2013-05-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130512_data (
  CHECK(observed_at >= DATE'2013-05-12' AND observed_at < DATE'2013-05-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130513_data (
  CHECK(observed_at >= DATE'2013-05-13' AND observed_at < DATE'2013-05-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130514_data (
  CHECK(observed_at >= DATE'2013-05-14' AND observed_at < DATE'2013-05-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130515_data (
  CHECK(observed_at >= DATE'2013-05-15' AND observed_at < DATE'2013-05-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130516_data (
  CHECK(observed_at >= DATE'2013-05-16' AND observed_at < DATE'2013-05-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130517_data (
  CHECK(observed_at >= DATE'2013-05-17' AND observed_at < DATE'2013-05-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130518_data (
  CHECK(observed_at >= DATE'2013-05-18' AND observed_at < DATE'2013-05-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130519_data (
  CHECK(observed_at >= DATE'2013-05-19' AND observed_at < DATE'2013-05-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130520_data (
  CHECK(observed_at >= DATE'2013-05-20' AND observed_at < DATE'2013-05-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130521_data (
  CHECK(observed_at >= DATE'2013-05-21' AND observed_at < DATE'2013-05-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130522_data (
  CHECK(observed_at >= DATE'2013-05-22' AND observed_at < DATE'2013-05-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130523_data (
  CHECK(observed_at >= DATE'2013-05-23' AND observed_at < DATE'2013-05-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130524_data (
  CHECK(observed_at >= DATE'2013-05-24' AND observed_at < DATE'2013-05-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130525_data (
  CHECK(observed_at >= DATE'2013-05-25' AND observed_at < DATE'2013-05-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130526_data (
  CHECK(observed_at >= DATE'2013-05-26' AND observed_at < DATE'2013-05-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130527_data (
  CHECK(observed_at >= DATE'2013-05-27' AND observed_at < DATE'2013-05-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130528_data (
  CHECK(observed_at >= DATE'2013-05-28' AND observed_at < DATE'2013-05-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130529_data (
  CHECK(observed_at >= DATE'2013-05-29' AND observed_at < DATE'2013-05-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130530_data (
  CHECK(observed_at >= DATE'2013-05-30' AND observed_at < DATE'2013-05-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130531_data (
  CHECK(observed_at >= DATE'2013-05-31' AND observed_at < DATE'2013-06-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130601_data (
  CHECK(observed_at >= DATE'2013-06-01' AND observed_at < DATE'2013-06-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130602_data (
  CHECK(observed_at >= DATE'2013-06-02' AND observed_at < DATE'2013-06-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130603_data (
  CHECK(observed_at >= DATE'2013-06-03' AND observed_at < DATE'2013-06-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130604_data (
  CHECK(observed_at >= DATE'2013-06-04' AND observed_at < DATE'2013-06-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130605_data (
  CHECK(observed_at >= DATE'2013-06-05' AND observed_at < DATE'2013-06-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130606_data (
  CHECK(observed_at >= DATE'2013-06-06' AND observed_at < DATE'2013-06-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130607_data (
  CHECK(observed_at >= DATE'2013-06-07' AND observed_at < DATE'2013-06-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130608_data (
  CHECK(observed_at >= DATE'2013-06-08' AND observed_at < DATE'2013-06-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130609_data (
  CHECK(observed_at >= DATE'2013-06-09' AND observed_at < DATE'2013-06-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130610_data (
  CHECK(observed_at >= DATE'2013-06-10' AND observed_at < DATE'2013-06-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130611_data (
  CHECK(observed_at >= DATE'2013-06-11' AND observed_at < DATE'2013-06-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130612_data (
  CHECK(observed_at >= DATE'2013-06-12' AND observed_at < DATE'2013-06-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130613_data (
  CHECK(observed_at >= DATE'2013-06-13' AND observed_at < DATE'2013-06-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130614_data (
  CHECK(observed_at >= DATE'2013-06-14' AND observed_at < DATE'2013-06-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130615_data (
  CHECK(observed_at >= DATE'2013-06-15' AND observed_at < DATE'2013-06-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130616_data (
  CHECK(observed_at >= DATE'2013-06-16' AND observed_at < DATE'2013-06-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130617_data (
  CHECK(observed_at >= DATE'2013-06-17' AND observed_at < DATE'2013-06-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130618_data (
  CHECK(observed_at >= DATE'2013-06-18' AND observed_at < DATE'2013-06-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130619_data (
  CHECK(observed_at >= DATE'2013-06-19' AND observed_at < DATE'2013-06-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130620_data (
  CHECK(observed_at >= DATE'2013-06-20' AND observed_at < DATE'2013-06-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130621_data (
  CHECK(observed_at >= DATE'2013-06-21' AND observed_at < DATE'2013-06-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130622_data (
  CHECK(observed_at >= DATE'2013-06-22' AND observed_at < DATE'2013-06-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130623_data (
  CHECK(observed_at >= DATE'2013-06-23' AND observed_at < DATE'2013-06-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130624_data (
  CHECK(observed_at >= DATE'2013-06-24' AND observed_at < DATE'2013-06-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130625_data (
  CHECK(observed_at >= DATE'2013-06-25' AND observed_at < DATE'2013-06-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130626_data (
  CHECK(observed_at >= DATE'2013-06-26' AND observed_at < DATE'2013-06-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130627_data (
  CHECK(observed_at >= DATE'2013-06-27' AND observed_at < DATE'2013-06-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130628_data (
  CHECK(observed_at >= DATE'2013-06-28' AND observed_at < DATE'2013-06-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130629_data (
  CHECK(observed_at >= DATE'2013-06-29' AND observed_at < DATE'2013-06-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130630_data (
  CHECK(observed_at >= DATE'2013-06-30' AND observed_at < DATE'2013-07-01')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130701_data (
  CHECK(observed_at >= DATE'2013-07-01' AND observed_at < DATE'2013-07-02')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130702_data (
  CHECK(observed_at >= DATE'2013-07-02' AND observed_at < DATE'2013-07-03')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130703_data (
  CHECK(observed_at >= DATE'2013-07-03' AND observed_at < DATE'2013-07-04')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130704_data (
  CHECK(observed_at >= DATE'2013-07-04' AND observed_at < DATE'2013-07-05')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130705_data (
  CHECK(observed_at >= DATE'2013-07-05' AND observed_at < DATE'2013-07-06')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130706_data (
  CHECK(observed_at >= DATE'2013-07-06' AND observed_at < DATE'2013-07-07')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130707_data (
  CHECK(observed_at >= DATE'2013-07-07' AND observed_at < DATE'2013-07-08')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130708_data (
  CHECK(observed_at >= DATE'2013-07-08' AND observed_at < DATE'2013-07-09')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130709_data (
  CHECK(observed_at >= DATE'2013-07-09' AND observed_at < DATE'2013-07-10')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130710_data (
  CHECK(observed_at >= DATE'2013-07-10' AND observed_at < DATE'2013-07-11')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130711_data (
  CHECK(observed_at >= DATE'2013-07-11' AND observed_at < DATE'2013-07-12')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130712_data (
  CHECK(observed_at >= DATE'2013-07-12' AND observed_at < DATE'2013-07-13')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130713_data (
  CHECK(observed_at >= DATE'2013-07-13' AND observed_at < DATE'2013-07-14')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130714_data (
  CHECK(observed_at >= DATE'2013-07-14' AND observed_at < DATE'2013-07-15')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130715_data (
  CHECK(observed_at >= DATE'2013-07-15' AND observed_at < DATE'2013-07-16')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130716_data (
  CHECK(observed_at >= DATE'2013-07-16' AND observed_at < DATE'2013-07-17')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130717_data (
  CHECK(observed_at >= DATE'2013-07-17' AND observed_at < DATE'2013-07-18')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130718_data (
  CHECK(observed_at >= DATE'2013-07-18' AND observed_at < DATE'2013-07-19')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130719_data (
  CHECK(observed_at >= DATE'2013-07-19' AND observed_at < DATE'2013-07-20')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130720_data (
  CHECK(observed_at >= DATE'2013-07-20' AND observed_at < DATE'2013-07-21')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130721_data (
  CHECK(observed_at >= DATE'2013-07-21' AND observed_at < DATE'2013-07-22')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130722_data (
  CHECK(observed_at >= DATE'2013-07-22' AND observed_at < DATE'2013-07-23')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130723_data (
  CHECK(observed_at >= DATE'2013-07-23' AND observed_at < DATE'2013-07-24')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130724_data (
  CHECK(observed_at >= DATE'2013-07-24' AND observed_at < DATE'2013-07-25')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130725_data (
  CHECK(observed_at >= DATE'2013-07-25' AND observed_at < DATE'2013-07-26')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130726_data (
  CHECK(observed_at >= DATE'2013-07-26' AND observed_at < DATE'2013-07-27')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130727_data (
  CHECK(observed_at >= DATE'2013-07-27' AND observed_at < DATE'2013-07-28')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130728_data (
  CHECK(observed_at >= DATE'2013-07-28' AND observed_at < DATE'2013-07-29')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130729_data (
  CHECK(observed_at >= DATE'2013-07-29' AND observed_at < DATE'2013-07-30')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130730_data (
  CHECK(observed_at >= DATE'2013-07-30' AND observed_at < DATE'2013-07-31')
) INHERITS(gcom_w1_data);
CREATE TABLE gcom_w1_20130731_data (
  CHECK(observed_at >= DATE'2013-07-31' AND observed_at < DATE'2013-08-01')
) INHERITS(gcom_w1_data);