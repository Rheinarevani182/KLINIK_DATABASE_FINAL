SELECT DISTINCT
    nama_karyawan,
    jabatan
FROM
    karyawan
WHERE
    jabatan = 'Kasir'
ORDER BY
    nama_karyawan;
