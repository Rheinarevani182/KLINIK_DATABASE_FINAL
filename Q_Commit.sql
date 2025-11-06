BEGIN;

-- Tambah data pertama
INSERT INTO pembayaran (tanggal_pembayaran, id_pemeriksaan, id_resep, tarif_dokter, metode_pembayaran)
VALUES ('2025-11-04', 1, 1, 150000.00, 'Transfer');
SAVEPOINT tahap_1;

-- Tambah data kedua
INSERT INTO pembayaran (tanggal_pembayaran, id_pemeriksaan, id_resep, tarif_dokter, metode_pembayaran)
VALUES ('2025-11-04', 2, 2, 125000.00, 'QRIS');
SAVEPOINT tahap_2;

-- Tambah data ketiga
INSERT INTO pembayaran (tanggal_pembayaran, id_pemeriksaan, id_resep, tarif_dokter, metode_pembayaran)
VALUES ('2025-11-04', 3, 3, 200000.00, 'Tunai');
SAVEPOINT tahap_3;

-- Tambah data keempat
INSERT INTO pembayaran (tanggal_pembayaran, id_pemeriksaan, id_resep, tarif_dokter, metode_pembayaran)
VALUES ('2025-11-04', 4, 4, 175000.00, 'Kredit');
SAVEPOINT tahap_4;

SELECT * FROM pembayaran;

COMMIT;
