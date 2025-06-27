# Kimia Farma BigQuery Analysis (2020–2023)

Repository ini berisi syntax SQL dan dokumentasi analisis data untuk project *Kimia Farma Big Data Analyst Internship Challenge* periode 2020–2023.

# Tujuan Proyek

Mengevaluasi kinerja bisnis Kimia Farma menggunakan data transaksi, produk, cabang, dan inventori dari tahun 2020 hingga 2023. Data dianalisis dengan BigQuery dan divisualisasikan melalui Google Looker Studio.

---

## 🗂️ Dataset yang Digunakan

1. `kf_final_transaction.csv`  
   ➤ berisi data transaksi
2. `kf_inventory.csv`  
   ➤ berisi data stok produk per cabang
3. `kf_kantor_cabang.csv`  
   ➤ berisi informasi cabang (lokasi dan rating)
4. `kf_product.csv`  
   ➤ berisi informasi produk (nama dan harga)

---

## 🧮 Tabel Analisa

Tabel hasil penggabungan dan agregasi keempat dataset di atas memiliki kolom-kolom berikut:

| Kolom                 | Deskripsi                                               |
|----------------------|----------------------------------------------------------|
| `transaction_id`     | ID transaksi                                             |
| `date`               | Tanggal transaksi                                        |
| `branch_id`          | ID cabang                                                |
| `branch_name`        | Nama cabang                                              |
| `kota`               | Kota lokasi cabang                                       |
| `provinsi`           | Provinsi lokasi cabang                                   |
| `rating_cabang`      | Rating cabang dari customer                              |
| `customer_name`      | Nama customer                                            |
| `product_id`         | ID produk                                                |
| `product_name`       | Nama produk                                              |
| `actual_price`       | Harga asli obat                                          |
| `discount_percentage`| Diskon yang diberikan                                    |
| `persentase_gross_laba` | Persentase margin sesuai ketentuan harga              |
| `nett_sales`         | Harga setelah diskon                                     |
| `nett_profit`        | Keuntungan bersih berdasarkan margin                     |
| `rating_transaksi`   | Rating untuk transaksi tersebut  
