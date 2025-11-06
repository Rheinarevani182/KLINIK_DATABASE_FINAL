-- Mulai transaksi
BEGIN;

-- Buat tabel pembayaran
CREATE TABLE IF NOT EXISTS pembayaran (
    id_pembayaran SERIAL PRIMARY KEY,
    tanggal_pembayaran DATE NOT NULL,
    id_pemeriksaan INTEGER NOT NULL,
    id_resep INTEGER NOT NULL,
    tarif_dokter NUMERIC(12,2) NOT NULL,
    metode_pembayaran VARCHAR(50) NOT NULL
);

-- Masukkan data ke tabel pembayaran
INSERT INTO pembayaran (
    tanggal_pembayaran,
    id_pemeriksaan,
    id_resep,
    tarif_dokter,
    metode_pembayaran
)
VALUES
    ('2006-01-06', 6, 1, 125000.00, 'Kredit');

-- Selesaikan transaksi
COMMIT;

-- Cek hasil setelah commit
SELECT * FROM pembayaran;
