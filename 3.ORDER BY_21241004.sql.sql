-- menggunakan databases
use martbasicdqlab;


-- mengurutkan data menggunakan ORDER BY
-- ambil nama produk dan quantitiy dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty
select nama_produk, qty from tr_penjualan_dqlab order by qty; -- secara default diurutkan dari terkecil ke terbesar
select nama_produk, qty from tr_penjualan_dqlab order by nama_produk;

-- mengurutkan lebih dari 1 kolom menggunakan ORDER BY
-- ambil nama produk, dan quantity dari tabel tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama produk
select nama_produk, qty from tr_penjualan_dqlab order by qty, nama_produk;

-- contoh latihan
select * from tr_penjualan_dqlab order by qty, tgl_transaksi;
select * from ms_pelanggan_dqlab order by nama_pelanggan;
select * from ms_pelanggan_dqlab order by alamat;

-- ASC dan DESC mengurutkan dari besar ke kecil
-- ambil nama produk dan quantity dari tabel tr_penjualan_dqlab dan urutkan qty secara descending(terbesar ke terkecil)
select nama_produk, qty from tr_penjualan_dqlab order by qty desc;

-- mengurutkan 2 kolom dengan ascending dan descending
select nama_produk, qty from tr_penjualan_dqlab order by qty desc, nama_produk asc;

-- contoh latihan
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;
select * from ms_pelanggan_dqlab order by alamat desc;

-- ambuil nama_produk, qty, harga dan total beli, dari tr_penjualan_dqlab  urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab order by total_beli desc;

-- contoh latihan
-- cobalah pengurutan dengan ekspresi total harga mengguanakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk, qty, harga, (qty*harga)-diskon_persen/100 as total_harga from tr_penjualan_dqlab order by total_harga; 
