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

INSERT INTO pemeriksaan (tanggal_pemeriksaan, keluhan, diagnosa, id_dokter, id_perawat, id_pendaftaran, catatan_pemeriksaan) VALUES
('2023-12-12', 'Luka ringan sejak 9 hari', 'Infeksi ringan', 2, 4, 3, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2024-12-11', 'Batuk sejak 8 hari', 'Karies gigi', 7, 1, 3, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2024-11-13', 'Demam sejak 7 hari', 'Gastroenteritis', 8, 5, 7, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2025-10-04', 'Luka ringan sejak 13 hari', 'Flu', 8, 3, 4, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2024-08-20', 'Sakit kepala sejak 1 hari', 'Flu', 9, 1, 6, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2023-12-19', 'Demam sejak 10 hari', 'Migraine', 9, 9, 3, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2023-12-19', 'Nyeri perut sejak 2 hari', 'Karies gigi', 2, 10, 2, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2025-09-12', 'Pusing sejak 4 hari', 'Migraine', 2, 10, 4, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2025-06-05', 'Nyeri perut sejak 1 hari', 'Flu', 2, 7, 10, 'Observasi, tindak lanjut dalam 1 minggu.'),
('2025-05-22', 'Nyeri perut sejak 6 hari', 'Gastroenteritis', 4, 6, 4, 'Observasi, tindak lanjut dalam 1 minggu.');

SELECT* FROM pemeriksaan;