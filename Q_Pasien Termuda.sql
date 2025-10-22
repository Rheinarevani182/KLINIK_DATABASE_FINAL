SELECT
    nama_pasien,
    tempat_tanggal_lahir,
    AGE(
        CAST(SUBSTRING(tempat_tanggal_lahir, POSITION(', ' IN tempat_tanggal_lahir) + 2) AS DATE)
    ) AS umur_lengkap
FROM
    pasien
WHERE
    CAST(SUBSTRING(tempat_tanggal_lahir, POSITION(', ' IN tempat_tanggal_lahir) + 2) AS DATE) = (
        SELECT
            MAX(CAST(SUBSTRING(tempat_tanggal_lahir, POSITION(', ' IN tempat_tanggal_lahir) + 2) AS DATE))
        FROM
            pasien
    );
