SELECT
    nama_obat,
    satuan,
    stok_obat,
    'Rp ' || harga AS harga_rp
FROM
    obat
WHERE
    stok_obat = (
        SELECT
            MAX(stok_obat)
        FROM
            obat
    );
