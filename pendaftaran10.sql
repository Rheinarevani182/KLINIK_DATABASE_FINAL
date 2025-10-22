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

INSERT INTO pendaftaran (tanggal_pendaftaran, jenis_pemeriksaan, nik_pasien, id_karyawan) VALUES
('2024-06-21', 'Gigi', '3200000000000008', 4),
('2025-04-26', 'Umum', '3200000000000010', 10),
('2025-02-17', 'Umum', '3200000000000008', 7),
('2024-05-03', 'Umum', '3200000000000002', 7),
('2024-10-18', 'Gigi', '3200000000000007', 8),
('2023-12-16', 'Umum', '3200000000000001', 7),
('2024-10-03', 'Umum', '3200000000000004', 4),
('2024-05-03', 'Gigi', '3200000000000003', 7),
('2024-04-26', 'Gigi', '3200000000000008', 4),
('2024-01-07', 'Gigi', '3200000000000009', 2);

SELECT* FROM pendaftaran;