-- menggunakan SELECT statement untuk 1 nilai literal
select 77 as literalinteger; -- literal untuk bilangan bulat
select 'mataram' as kota; -- literal untuk char
select '2023/05/20' as date; -- literal untuk date/tanggal
select 77 < 3 as booleanLiteral; -- literal boolean

	-- menggunakan SELECT statement untuk 2 atau lebih literal
    select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;
    
    -- menggunakan SELECT untuk NULL
	select null as kosong;
    
    -- menggunakan SELELCT statement untuk operator matematika
    select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_inti;
    
    -- contoh latihan
    select 4*2 as jawab1, (4*8)%7 as jawab2, (4*8) mod 7 as jawab3;
    
    -- expresi matematika untuk menghasilkan total beli (qty * harga) pada tabel tr_penjualan
    use dqlabmartbasic;
    select nama_produk, qty*harga as total_beli from tr_penjualan_dqlab;
    select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab;
    
    -- operator perbandingan
    select 5=5, 5<>5, 5<>4, 5!=5, 5>4;
    
    -- contoh latihan
    select 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;
    select nama_produk, qty, qty >=3 from tr_penjualan_dqlab;
    
    -- penggunaan fungsi dengan nilai literal
    select pow(3,2), round(3.14), round(3.54), round(3.155, 1), round(3.155, 2), floor(4.28), floor(4.78), ceiling(4.39), ceiling(4.55);
    select now(), year('2023-05-20'), datediff('2023-05-20', '2023-05-1'), day(now());
    
    -- contoh latihan
    select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi) from tr_penjualan_dqlab;
    
    -- klausal untuk filtering atau penyaringan
    -- ambil nama produk, dan qty dari tabel tr_penjualan yang qty lebih dari 2
    select nama_produk, qty
    from tr_penjualan_dqlab
    where qty > 2;
    
    select * from tr_penjualan_dqlab;
    select tgl_transaksi, nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab where kode_pelanggan = 'dqlabcust07' and qty >1;
    
    -- penggunaan LIKE pada statement SELECT
    -- cari nama produk yang namanya diawali huruf 'f'
    select nama_produk from tr_penjualan_dqlab where nama_produk like 'f%';
    
    
    