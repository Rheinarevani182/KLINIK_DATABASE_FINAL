DROP TABLE IF EXISTS obat;

CREATE TABLE obat (
    id_obat SERIAL PRIMARY KEY,
    nama_obat VARCHAR(100),
    harga NUMERIC(15,2),
    satuan VARCHAR(20),
    stok_obat INT
);

INSERT INTO obat (nama_obat, harga, satuan, stok_obat) VALUES
('Obat 1 B', 74483, 'Koyo', 446),
('Obat 2 Max', 115923, 'Botol', 475),
('Obat 3 Max', 196347, 'Botol', 365),
('Obat 4 C', 109593, 'Kapsul', 224),
('Obat 5 Max', 123354, 'Tablet', 126),
('Obat 6 B', 21784, 'Kapsul', 10),
('Obat 7 Max', 150207, 'Botol', 301),
('Obat 8 B', 6885, 'Tablet', 362),
('Obat 9 A', 65015, 'Tablet', 463),
('Obat 10 A', 91619, 'Tablet', 263);

SELECT* FROM obat;