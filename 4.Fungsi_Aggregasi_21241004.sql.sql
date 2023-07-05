use dqlabpraktek2;
-- fungsi AGREGASI
-- menghitung penjumlahan qty seluruh row PADA TABEL Penjualan 
select sum(qty) from tr_penjualan_dqlab;
select sum(nama_produk) from tr_penjualan_dqlab; -- bisa tapi akan menghasilkan nilai 0

-- menghitung jumlah seluruh row  pada tabel penjualan
select count(*) from tr_penjualan_dqlab;

-- menghitung penjumlahan nilai qty dan jumlah seluruh row di tabel penjualan
select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;

-- menghitung jumlah nilai unik dari nama_produk pada tabel penjualan 
select count(distinct nama_produk) from tr_penjualan_dqlab; 
select count(*), count(distinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY 
-- Mengambil grouping nilai dari kolom nama_produk dari tabel tr_penjualan
select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil nilai grouping dari kolom nama_produk dan qty pada tabel penjualan
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk,qty order by qty desc;

-- mengambil jumlah qty dari grouping nama_poduk terhadap seluruh row di tabel penjualan 
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk;

-- HAVING
-- Mengambil jumlah qty diatas 2 dari grouping nama produk terhadap seluruh row pada tabel penjualan 
select nama_produk,sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) > 2;

-- Latihan
select nama_produk, sum(qty) 
from tr_penjualan_dqlab 
group by nama_produk having sum(qty) > 4;

select nama_produk, sum(qty) from tr_penjualan_dqlab 
group by nama_produk 
having sum(qty) = 9;

select nama_produk, (harga * sum(qty) - diskon_persen) As total_nilai_penjualan 
from tr_penjualan_dqlab order by total_nilai_penjualan desc;



