DROP TABLE IF EXISTS pasien;

CREATE TABLE pasien (
    nik_pasien VARCHAR(16) PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tempat_tanggal_lahir TEXT,
    alamat_pasien TEXT,
    kontak_pasien VARCHAR(20)
);

INSERT INTO pasien (nik_pasien, nama_pasien, tempat_tanggal_lahir, alamat_pasien, kontak_pasien) VALUES
('3200000000000001', 'Ayu Mulyono', 'Surabaya, 1965-09-08', 'Jl. Merdeka No. 41, Medan', '08740389325'),
('3200000000000002', 'Dewi Wijaya', 'Denpasar, 1990-02-01', 'Jl. Diponegoro No. 136, Semarang', '08694021782'),
('3200000000000003', 'Siti Pratama', 'Bandung, 2020-07-05', 'Jl. Merdeka No. 138, Semarang', '08925276600'),
('3200000000000004', 'Maya Santoso', 'Semarang, 1965-11-10', 'Jl. Kenanga No. 41, Palembang', '08103484630'),
('3200000000000005', 'Sari Hidayat', 'Semarang, 2020-06-01', 'Jl. Ahmad Yani No. 196, Surabaya', '08645119047'),
('3200000000000006', 'Rina Mulyono', 'Semarang, 2011-12-13', 'Jl. Merdeka No. 130, Denpasar', '08313579170'),
('3200000000000007', 'Wulan Santoso', 'Surabaya, 2024-04-04', 'Jl. Ahmad Yani No. 200, Makassar', '08100614068'),
('3200000000000008', 'Lukas Santoso', 'Jakarta, 1999-09-08', 'Jl. Mawar No. 93, Semarang', '08357109965'),
('3200000000000009', 'Ayu Prasetyo', 'Bandung, 2006-10-02', 'Jl. Mawar No. 188, Palembang', '08976198296'),
('3200000000000010', 'Dewi Sari', 'Surabaya, 2003-08-23', 'Jl. Sudirman No. 169, Palembang', '08690347116');

SELECT* FROM pasien;