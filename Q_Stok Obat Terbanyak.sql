SELECT
    nama_obat,
    satuan,
    stok_obat,
    'Rp ' || TO_CHAR(harga, 'FM999G999G999') AS harga_rp
FROM
    obat
WHERE
    stok_obat = (
        SELECT
            MAX(stok_obat)
        FROM
            obat
        WHERE
            stok_obat IS NOT NULL
    );
