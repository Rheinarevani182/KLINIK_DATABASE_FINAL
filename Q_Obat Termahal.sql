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
            MAX(REPLACE(REPLACE(REPLACE(harga::text, 'Rp', ''), ' ', ''), '.', '')::NUMERIC)
        FROM
            obat
    );
