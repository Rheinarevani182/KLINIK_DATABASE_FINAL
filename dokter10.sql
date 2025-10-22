DROP TABLE IF EXISTS dokter;

CREATE TABLE dokter (
    id_dokter SERIAL PRIMARY KEY,
    nama_dokter VARCHAR(100),
    alamat_dokter TEXT,
    kontak_dokter VARCHAR(20),
    tarif_dokter VARCHAR(20),
    pekerjaan VARCHAR(50)
);

INSERT INTO dokter (nama_dokter, alamat_dokter, kontak_dokter, tarif_dokter, pekerjaan) VALUES
('drg. Maya Lestari', 'Jl. Melati No. 190, Semarang', '08362950628', 100000, 'Dokter Gigi'),
('dr. Wulan Wibowo', 'Jl. Mawar No. 174, Makassar', '08193349856', 175000, 'Dokter Umum'),
('drg. Fajar Rahmawati', 'Jl. Melati No. 24, Yogyakarta', '08349817734', 175000, 'Dokter Gigi'),
('dr. Lukas Rahmawati', 'Jl. Ahmad Yani No. 51, Makassar', '08550455977', 100000, 'Dokter Umum'),
('drg. Rani Halim', 'Jl. Gatot Subroto No. 2, Surabaya', '08849621470', 150000, 'Dokter Gigi'),
('dr. Wahyu Saputra', 'Jl. Sudirman No. 56, Malang', '08209747451', 75000, 'Dokter Umum'),
('drg. Dian Lestari', 'Jl. Mangga No. 89, Denpasar', '08384027113', 75000, 'Dokter Gigi'),
('dr. Sari Kusuma', 'Jl. Ahmad Yani No. 32, Medan', '08184611066', 175000, 'Dokter Umum'),
('drg. Rian Mulyono', 'Jl. Merdeka No. 159, Malang', '08719927151', 100000, 'Dokter Gigi'),
('dr. Hendra Lestari', 'Jl. Melati No. 170, Yogyakarta', '08930075810', 125000, 'Dokter Umum');

SELECT* FROM dokter;