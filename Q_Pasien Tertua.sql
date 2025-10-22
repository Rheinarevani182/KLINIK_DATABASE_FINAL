SELECT
    nama_pasien,
    tempat_tanggal_lahir,
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM CAST(SUBSTRING(tempat_tanggal_lahir, POSITION(', ' IN tempat_tanggal_lahir) + 2) AS DATE)) AS usia
FROM
    pasien
ORDER BY
    usia DESC
LIMIT 1;
