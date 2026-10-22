
-- 1. [CREATE] INSERT minimal 3 baris per tabel
-- Tabel induk 1: pengguna
INSERT INTO pengguna (nama, no_telepon, email, password, kota) VALUES
('Bambang Gulali', '081234567890', 'bambanggula1@gmail.com',  'bambangdiabetes',  'Madiun'),
('Anton Jo Ging',  '082345678901', 'antonmaraton@gmail.com',  'ladeshgimank',  'Ngawi selatan'),
('Asep Kancil',  '083456789012', 'kancilpintar@gmail.com',  'asepbijak',  'Ngawi');

-- Tabel induk 2: admin
INSERT INTO admin (nama, email, password) VALUES
('Admin Satu', 'admin1@olutra.id', '1admin!123'),
('Admin Dua',  'admin2@olutra.id', 'admin2!_123'),
('Admin Tiga', 'admin3@olutra.id', '3_123!admin');

-- Tabel transaksi: setoran
-- id_pengguna dan id_admin harus sudah ada di tabel induk
INSERT INTO setoran (id_pengguna, id_admin, tanggal_setoran, status_setoran, foto_bukti) VALUES
(1, 1, '2026-10-20 08:30:00', 'menunggu',  'bukti_001.jpg'),
(2, 2, '2026-10-21 10:15:00', 'diverifikasi', 'bukti_002.jpg'),
(3, 1, '2026-10-22 09:00:00', 'menunggu',  'bukti_003.jpg');



-- 2. [READ] Tampilkan seluruh isi salah satu tabel induk
SELECT * FROM pengguna;


-- 3. [UPDATE] Ubah status setoran
UPDATE setoran
SET status_setoran = 'diproses'
WHERE id_setoran = 1;


-- 4. [DELETE] Hapus satu baris setoran
DELETE FROM setoran
WHERE id_setoran = 3;
