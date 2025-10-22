SELECT DISTINCT
    p.nama_pasien,
    p.tempat_tanggal_lahir,
    p.alamat_pasien,
    pm.diagnosa
FROM
    pasien p
JOIN
    pendaftaran pd ON p.nik_pasien = pd.nik_pasien
JOIN
    pemeriksaan pm ON pd.id_pendaftaran = pm.id_pendaftaran
WHERE
    pm.diagnosa = 'Karies gigi' 
ORDER BY
    p.nama_pasien;
	