DROP TABLE IF EXISTS dokter;

CREATE TABLE dokter (
    id_dokter SERIAL PRIMARY KEY,
    nama_dokter VARCHAR(100),
    alamat_dokter TEXT,
    kontak_dokter VARCHAR(20),
    tarif_dokter VARCHAR(20),
    pekerjaan VARCHAR(50)
);


DROP TABLE IF EXISTS karyawan;

CREATE TABLE karyawan (
    id_karyawan SERIAL PRIMARY KEY,
    nama_karyawan VARCHAR(100),
    jabatan VARCHAR(50),
    alamat_karyawan TEXT,
    no_telp VARCHAR(20)
);


DROP TABLE IF EXISTS obat;

CREATE TABLE obat (
    id_obat SERIAL PRIMARY KEY,
    nama_obat VARCHAR(100),
    harga NUMERIC(15,2),
    satuan VARCHAR(20),
    stok_obat INT
);



DROP TABLE IF EXISTS pasien;

CREATE TABLE pasien (
    nik_pasien VARCHAR(16) PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tempat_tanggal_lahir TEXT,
    alamat_pasien TEXT,
    kontak_pasien VARCHAR(20)
);


DROP TABLE IF EXISTS pendaftaran;

CREATE TABLE pendaftaran (
    id_pendaftaran SERIAL PRIMARY KEY,
    tanggal_pendaftaran DATE NOT NULL,              
    jenis_pemeriksaan VARCHAR(50) NOT NULL,
    nik_pasien VARCHAR(16) NOT NULL,                
    id_karyawan INT NOT NULL,
    CONSTRAINT fk_pasien FOREIGN KEY (nik_pasien) REFERENCES pasien(nik_pasien),
    CONSTRAINT fk_karyawan FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
);


DROP TABLE IF EXISTS pemeriksaan;

CREATE TABLE pemeriksaan (
    id_pemeriksaan SERIAL PRIMARY KEY,
    tanggal_pemeriksaan DATE NOT NULL,  
    keluhan TEXT NOT NULL,
    diagnosa TEXT NOT NULL,
    id_dokter INT NOT NULL,
    id_perawat INT NOT NULL,
    id_pendaftaran INT NOT NULL,
    catatan_pemeriksaan TEXT,
    CONSTRAINT fk_dokter FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter),
    CONSTRAINT fk_perawat FOREIGN KEY (id_perawat) REFERENCES karyawan(id_karyawan),
    CONSTRAINT fk_pendaftaran FOREIGN KEY (id_pendaftaran) REFERENCES pendaftaran(id_pendaftaran)
);


DROP TABLE IF EXISTS resep_obat;

CREATE TABLE resep_obat (
    id_resep SERIAL PRIMARY KEY,
    id_pemeriksaan INT NOT NULL,
    id_obat INT NOT NULL,
    tanggal_pemeriksaan DATE,
    nama_obat VARCHAR(100),
    harga NUMERIC(12,2),
    satuan VARCHAR(50),
    jenis_obat VARCHAR(50) NOT NULL,
    CONSTRAINT fk_pemeriksaan FOREIGN KEY (id_pemeriksaan) REFERENCES pemeriksaan(id_pemeriksaan),
    CONSTRAINT fk_obat FOREIGN KEY (id_obat) REFERENCES obat(id_obat)
);


DROP TABLE IF EXISTS pembayaran;

CREATE TABLE pembayaran (
    id_pembayaran SERIAL PRIMARY KEY,
    tanggal_pembayaran DATE NOT NULL,
    id_pemeriksaan INT NOT NULL,
    id_resep INT NOT NULL,
    tarif_dokter NUMERIC(12,2) NOT NULL,
    metode_pembayaran VARCHAR(50) NOT NULL,
    CONSTRAINT fk_pemeriksaan FOREIGN KEY (id_pemeriksaan) REFERENCES pemeriksaan(id_pemeriksaan),
    CONSTRAINT fk_resep FOREIGN KEY (id_resep) REFERENCES resep_obat(id_resep)
);
