SELECT *
FROM dokter
WHERE 
    REPLACE(REPLACE(REPLACE(tarif_dokter, 'Rp ', ''), '.', ''), ',', '.')::numeric = (
        SELECT MAX(
            REPLACE(REPLACE(REPLACE(tarif_dokter, 'Rp ', ''), '.', ''), ',', '.')::numeric
        )
        FROM dokter
    );
