SELECT
    diagnosa,
    COUNT(id_pemeriksaan) AS total_kasus
FROM
    pemeriksaan
GROUP BY
    diagnosa
ORDER BY
    total_kasus DESC;