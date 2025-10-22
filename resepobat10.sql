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

INSERT INTO resep_obat (id_pemeriksaan, tanggal_pemeriksaan, id_obat, nama_obat, harga, satuan, jenis_obat) VALUES
(5, '2024-11-30', 3, 'Obat 3', 181079, 'Kapsul', 'Vitamin'),
(8, '2024-09-09', 2, 'Obat 2', 7441, 'Sirup', 'Antiseptik'),
(10, '2024-02-01', 2, 'Obat 2', 145937, 'Tablet', 'Antiseptik'),
(5, '2024-03-05', 6, 'Obat 6', 23033, 'Tablet', 'Vitamin'),
(5, '2024-03-31', 8, 'Obat 8', 147401, 'Kapsul', 'Vitamin'),
(10, '2025-08-21', 9, 'Obat 9', 7050, 'Kapsul', 'Antiseptik'),
(5, '2025-08-31', 2, 'Obat 2', 40203, 'Sirup', 'Antibiotik'),
(2, '2025-05-10', 3, 'Obat 3', 76394, 'Sirup', 'Antiseptik'),
(4, '2024-10-07', 4, 'Obat 4', 185223, 'Kapsul', 'Vitamin'),
(9, '2025-03-05', 5, 'Obat 5', 18316, 'Tablet', 'Antiemetik');

SELECT* FROM resep_obat;