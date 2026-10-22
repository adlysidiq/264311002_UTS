SELECT
  p.nama,
  COUNT(s.id_setoran) AS jumlah_setoran_selesai
FROM setoran s
JOIN pengguna p ON s.id_pengguna = p.id_pengguna
WHERE s.status_setoran = 'disetujui'
GROUP BY p.id_pengguna, p.nama;
