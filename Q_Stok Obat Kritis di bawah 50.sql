SELECT
    nama_obat,
    satuan,
    stok_obat
FROM
    obat
WHERE
    stok_obat < 50
ORDER BY
    stok_obat ASC; 