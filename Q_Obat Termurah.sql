SELECT
    nama_obat,
    satuan,
    stok_obat,
    harga
FROM
    obat
WHERE
    REPLACE(REPLACE(REPLACE(harga::text, 'Rp', ''), ' ', ''), '.', '')::NUMERIC = (
        SELECT
            MIN(REPLACE(REPLACE(REPLACE(harga::text, 'Rp', ''), ' ', ''), '.', '')::NUMERIC)
        FROM
            obat
    );
