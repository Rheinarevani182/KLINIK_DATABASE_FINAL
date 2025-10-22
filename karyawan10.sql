DROP TABLE IF EXISTS karyawan;

CREATE TABLE karyawan (
    id_karyawan SERIAL PRIMARY KEY,
    nama_karyawan VARCHAR(100),
    jabatan VARCHAR(50),
    alamat_karyawan TEXT,
    no_telp VARCHAR(20)
);

INSERT INTO karyawan (nama_karyawan, jabatan, alamat_karyawan, no_telp) VALUES
('Dewi Mulyono', 'Administrasi', 'Jl. Mawar No. 98, Semarang', '08586845604'),
('Maya Mulyono', 'Kasir', 'Jl. Sudirman No. 95, Malang', '08324956459'),
('Fitri Saputra', 'Perawat', 'Jl. Hasanudin No. 163, Surabaya', '08673528321'),
('Sari Prasetyo', 'Administrasi', 'Jl. Diponegoro No. 98, Semarang', '08787194506'),
('Hendra Nugroho', 'Administrasi', 'Jl. Merdeka No. 84, Jakarta', '08345938494'),
('Ayu Sari', 'Kasir', 'Jl. Kenanga No. 69, Bandung', '08326541099'),
('Putri Hidayat', 'Kasir', 'Jl. Thamrin No. 168, Palembang', '08524806516'),
('Maya Kusuma', 'Administrasi', 'Jl. Gatot Subroto No. 36, Yogyakarta', '08899925830'),
('Yuni Nugroho', 'Kasir', 'Jl. Hasanudin No. 110, Denpasar', '08528853029'),
('Rizky Prasetyo', 'Administrasi', 'Jl. Ahmad Yani No. 127, Bandung', '08911514914');

SELECT* FROM karyawan;