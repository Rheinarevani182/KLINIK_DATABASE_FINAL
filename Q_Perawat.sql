SELECT DISTINCT
    nama_karyawan,
    jabatan
FROM
    karyawan
WHERE
    jabatan = 'Perawat'
ORDER BY
    nama_karyawan;
