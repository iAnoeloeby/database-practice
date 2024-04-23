`akademik_pertemuan_7``akademik_pertemuan_7`#Filtering Data Columns 
SELECT * FROM `datamhs` WHERE LEFT (nim, 1) = '1' AND LEFT (sex, 1) = 'P';
SELECT * FROM `datamhs` WHERE LEFT (nim, 1) = '3' AND LEFT (sex, 1) = 'W';

# Adding Character 0 to Columns akademik_pertemuan_7.prodi When Length <4
SELECT * FROM prodi WHERE LENGTH(kode)='3';
UPDATE prodi SET kode=CONCAT('0', kode) WHERE LENGTH(kode)='3';

#Filtering Angkatan
SELECT * FROM `datamhs` WHERE SUBSTRING(nim, 2, 2) = '16';

#Filtering Informatika Pagi
SELECT * FROM prodi WHERE keterangan LIKE '%Informatika%' AND keterangan LIKE '%Pagi%';
SELECT * FROM `datamhs` WHERE SUBSTRING(nim, 4, 4) = '0421';

#Filtering Teknik Informatika Angkatan 16
SELECT * FROM `datamhs` WHERE SUBSTRING(nim, 2, 2) = '16' AND SUBSTRING(nim, 4, 4) = '0411';

#Menghitung jumlah keseluruhan dengan filtering Teknik Informatika Angkatan 16
SELECT COUNT(nim) AS jumlah_mahasiswa FROM `datamhs` WHERE SUBSTRING(nim, 2, 2) = '16' AND SUBSTRING(nim, 4, 4) = '0411';

#Menambahkan sebuah kolom fakultas pada tabel datamhs
SELECT * FROM `datamhs` a, `fakultas` c WHERE c.kode=LEFT(a.nim, 1);

#Menambahkan sebuah kolom fakultas pada tabel datamhs, namun data pilihan yang ditampilkan
SELECT a.nim, a.nama, a.sex, c.`nama` AS fakultas FROM `datamhs` a, `fakultas` c WHERE c.kode = LEFT(a.nim, 1);

#Menambahkan sebuah kolom fakultas dan prodi pada tabel datamhs, namun data pilihan yang ditampilkan
SELECT a.nim, a.nama, a.sex, b.`nama` AS fakultas, c.prodi FROM `datamhs` a, `fakultas` b, `prodi` c WHERE b.kode = LEFT(a.nim, 1) AND c.kode = SUBSTRING(a.nim, 4, 4);

#Menampilkan Prodi data
SELECT a.nim, a.nama, a.sex, b.keterangan FROM `datamhs` a, `prodi` b WHERE b.kode = SUBSTRING(a.nim, 4, 4);

#Menampilkan Prodi Salah satu data
SELECT a.nim, a.nama, a.sex, b.keterangan FROM `datamhs` a, `prodi` b WHERE SUBSTRING(a.nim, 1) = '3160111146' AND SUBSTRING(a.nim, 4, 4) = b.kode;

# Menampilkan jumlah keseluruhan Mahasiswa masing-masing Prodi
SELECT a.keterangan AS nama_prodi, (SELECT COUNT(b.nim) FROM `datamhs` b WHERE SUBSTRING(b.nim, 4, 4) = a.kode) AS jumlah_mahasiswa FROM `prodi` a;
#opt
SELECT a.keterangan AS nama_prodi, COUNT(b.nim) AS jumlah_mahasiswa FROM `prodi` a, `datamhs` b WHERE SUBSTRING(b.nim, 4, 4) = a.kode GROUP BY a.keterangan;

# Menampilkan jumlah keseluruhan Mahasiswa masing-masing Prodi sesuai tahun angkatan
SELECT a.keterangan AS nama_prodi,
(SELECT COUNT(b.nim) FROM `datamhs` b WHERE SUBSTRING(b.nim, 4, 4) = a.kode AND SUBSTRING(b.nim, 2, 2) = '16' ) AS '2016',
(SELECT COUNT(b.nim) FROM `datamhs` b WHERE SUBSTRING(b.nim, 2, 2) = '17' AND SUBSTRING(b.nim, 4, 4) = a.kode) AS '2017'
FROM `prodi` a;