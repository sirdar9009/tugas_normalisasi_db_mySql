CREATE DATABASE phd_db;
USE phd_db;
CREATE TABLE tbl_merchant(
id_merchant INT PRIMARY KEY AUTO_INCREMENT,
nama_merchant VARCHAR(50),
alamat VARCHAR(100),
no_tlpn VARCHAR(15),
no_rek VARCHAR(25),
npwp VARCHAR(25),
logo_merchant BLOB,
link_lokasiMaps VARCHAR(200),
keterangan TEXT,
stat_us BOOLEAN
);

CREATE TABLE tbl_aset(
id_aset INT PRIMARY KEY AUTO_INCREMENT,
jenis VARCHAR(50),
keterangan TEXT,
stat_us BOOLEAN
);

CREATE TABLE tbl_jabatan(
id_jabatan INT PRIMARY KEY AUTO_INCREMENT,
nama_jabatan VARCHAR(30),
keterangan TEXT,
stat_us BOOLEAN
);

CREATE TABLE tbl_karyawan(
id_karyawan VARCHAR(10) PRIMARY KEY,
nama VARCHAR(50),
tgl_lahir DATE,
tgl_masuk DATE,
nik VARCHAR(25),
no_rek VARCHAR(25),
npwp VARCHAR (25),
jenis_kelamin VARCHAR (10),
alamat TEXT,
no_hp VARCHAR (15),
id_jabatan INT,
id_merchant INT,
keterangan TEXT,
stat_us BOOLEAN
);


CREATE TABLE tbl_kendaraan(
id_kendaraan INT PRIMARY KEY AUTO_INCREMENT,
jenis VARCHAR(10),
no_polisi VARCHAR(10),
tgl_pajak DATE,
harga_beli INT,
tahun_beli YEAR,
stat_us BOOLEAN,
id_karyawan VARCHAR(10),
id_aset INT
);

CREATE TABLE tbl_suplier(
id_suplier INT PRIMARY KEY,
nama_suplier VARCHAR(50),
no_rek VARCHAR(25),
npwp VARCHAR (25),
alamat TEXT,
link_lokasiMaps VARCHAR (200),
no_tlpn VARCHAR (15),
keterangan TEXT,
stat_us BOOLEAN
);

CREATE TABLE tbl_bank(
id_bank INT (5) PRIMARY KEY AUTO_INCREMENT,
nama_bank VARCHAR(30),
stat_us BOOLEAN
);

CREATE TABLE tbl_bahanbaku(
id_bahanbaku INT (5) PRIMARY KEY AUTO_INCREMENT,
nama VARCHAR(30),
tgl_kadaluarsa DATE,
harga INT,
qty INT (6),
id_suplier INT,
stat_us BOOLEAN,
id_rak VARCHAR(10)
);

CREATE TABLE tbl_rak(
id_rak VARCHAR (10) PRIMARY KEY,
volume_kapasitas INT,
stat_us BOOLEAN
);

CREATE TABLE tbl_pelanggan(
id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
nama VARCHAR (50),
alamat TEXT,
nik VARCHAR (25),
no_hp VARCHAR (15),
email VARCHAR (50),
link_lokasiMaps VARCHAR(200),
poin INT,
sta_tus BOOLEAN
);

CREATE TABLE tbl_menu(
id_menu INT PRIMARY KEY AUTO_INCREMENT,
nama_menu VARCHAR (50),
id_bahanbaku INT(5),
sta_tus BOOLEAN,
harga INT
);

CREATE TABLE tbl_promo(
id_promo INT PRIMARY KEY AUTO_INCREMENT,
jenis_promo VARCHAR (50),
nama_promo VARCHAR (50),
sta_tus BOOLEAN
);



