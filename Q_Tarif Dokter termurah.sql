SELECT
    *
FROM
    dokter
WHERE
    REPLACE(REPLACE(REPLACE(tarif_dokter, 'Rp ', ''), '.', ''), ',', '.')::NUMERIC = (
        SELECT
            MIN(
                REPLACE(REPLACE(REPLACE(tarif_dokter, 'Rp ', ''), '.', ''), ',', '.')::NUMERIC
            )
        FROM
            dokter
    );
