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

INSERT INTO pembayaran (tanggal_pembayaran, id_pemeriksaan, id_resep, tarif_dokter, metode_pembayaran) VALUES
('2024-12-28', 5, 1, 50000, 'QRIS'),
('2024-03-03', 5, 3, 125000, 'Kredit'),
('2025-10-13', 7, 9, 50000, 'Tunai'),
('2024-01-07', 3, 9, 50000, 'QRIS'),
('2025-06-09', 9, 3, 125000, 'Transfer'),
('2023-12-03', 5, 6, 50000, 'QRIS'),
('2024-05-24', 4, 2, 100000, 'Kredit'),
('2024-12-11', 10, 3, 75000, 'Transfer'),
('2024-04-20', 7, 1, 75000, 'QRIS'),
('2024-12-16', 4, 5, 75000, 'Tunai');

SELECT* FROM pembayaran;