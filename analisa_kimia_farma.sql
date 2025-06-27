CREATE OR REPLACE TABLE rakamin-kf-analytics-464206.kimia_farma.analisa_kimia_farma AS
SELECT
  trans.transaction_id,
  trans.date,
  trans.branch_id,
  cab.branch_name,
  cab.kota,
  cab.provinsi,
  cab.rating AS rating_cabang,
  trans.customer_name,
  trans.product_id,
  prod.product_name,
  trans.price AS actual_price,
  trans.discount_percentage,

  -- Persentase gross laba
  CASE
    WHEN trans.price <= 50000 THEN 0.10
    WHEN trans.price > 50000 AND trans.price <= 100000 THEN 0.15
    WHEN trans.price > 100000 AND trans.price <= 300000 THEN 0.20
    WHEN trans.price > 300000 AND trans.price <= 500000 THEN 0.25
    WHEN trans.price > 500000 THEN 0.30
    ELSE 0
  END AS persentase_gross_laba,

  -- Nett sales
  trans.price * (1 - trans.discount_percentage / 100.0) AS nett_sales,

  -- Nett profit
  trans.price * (1 - trans.discount_percentage / 100.0) *
    CASE
      WHEN trans.price <= 50000 THEN 0.10
      WHEN trans.price > 50000 AND trans.price <= 100000 THEN 0.15
      WHEN trans.price > 100000 AND trans.price <= 300000 THEN 0.20
      WHEN trans.price > 300000 AND trans.price <= 500000 THEN 0.25
      WHEN trans.price > 500000 THEN 0.30
      ELSE 0
    END AS nett_profit,

  trans.rating AS rating_transaksi

FROM
  `rakamin-kf-analytics-464206.kimia_farma.kf_final_transaction` AS trans
LEFT JOIN
  `rakamin-kf-analytics-464206.kimia_farma.kf_kantor_cabang` AS cab
  ON trans.branch_id = cab.branch_id
LEFT JOIN
  `rakamin-kf-analytics-464206.kimia_farma.kf_product` AS prod
  ON trans.product_id = prod.product_id;
