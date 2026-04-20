# BLM4522 Proje 5 - Veri Temizleme ve ETL Süreçleri Tasarımı

Bu repo, BLM4522 dersi kapsamında hazırlanan **Proje 5: Veri Temizleme ve ETL Süreçleri Tasarımı** çalışmasını içermektedir.

## Projenin Amacı

Bu projenin amacı, ham CSV veri setlerinin Microsoft SQL Server ortamına aktarılması, veri kalitesi problemlerinin incelenmesi, gerekli veri temizleme ve dönüştürme işlemlerinin uygulanması ve temiz verilerin ayrı tablolarda saklanmasıdır.

Proje kapsamında müşteri, ürün ve lead verileri üzerinde çalışılmıştır. Ham veri tabloları oluşturulmuş, temiz veri tabloları hazırlanmış ve ETL süreci SQL sorguları ile uygulanmıştır.

## Kullanılan Araçlar

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- CSV veri dosyaları
- GitHub

## Kullanılan Veri Setleri

Projede aşağıdaki CSV dosyaları kullanılmıştır:

- `customers_dirty.csv`
- `products_dirty.csv`
- `leads_dirty.csv`

Bu veri setlerinde veri temizleme sürecini gösterebilmek için boş alanlar, gereksiz boşluklar, büyük-küçük harf uyumsuzlukları, geçersiz tarih ve sayısal değerler gibi örnek veri kalitesi problemleri bulunmaktadır.

## Veritabanı Yapısı

Projede kullanılan veritabanı:

- `21291001_ETL`

Oluşturulan ham tablolar:

- `raw_customers_dirty`
- `raw_products_dirty`
- `raw_leads_dirty`

Oluşturulan temiz tablolar:

- `clean_customers_dirty`
- `clean_products_dirty`
- `clean_leads_dirty`

## Uygulanan İşlemler

Proje sürecinde aşağıdaki adımlar uygulanmıştır:

1. CSV dosyalarının SQL Server ortamına aktarılması  
2. Ham veri tablolarının incelenmesi  
3. Veri kalitesi problemlerinin tespit edilmesi  
4. Temiz veri tablolarının oluşturulması  
5. Veri temizleme ve dönüştürme işlemlerinin uygulanması  
6. Ham ve temiz veri tablolarının karşılaştırılması  
7. Veri kalitesi raporunun hazırlanması  

## SQL Dosyaları

`sql/` klasörü içinde proje boyunca kullanılan SQL sorguları yer almaktadır.

Örnek dosyalar:

- `01_create_clean_tables.sql`
- `02_clean_customers.sql`
- `03_clean_products.sql`
- `04_clean_leads.sql`
- `05_quality_report.sql`

## Ekran Görüntüleri

`screenshots/` klasörü içinde proje adımlarına ait ekran görüntüleri bulunmaktadır.

## Rapor

Proje raporu repo içinde yer almaktadır:

- `report.docx`
- `report.pdf`

## Video

Proje anlatım videosu bağlantısı:

[Proje Videosunu İzlemek İçin Tıklayın](https://youtu.be/Q8hXmIhZ2uw)

## Sonuç

Bu projede ETL süreci uygulamalı olarak gerçekleştirilmiş, ham veriler temizlenmiş, dönüştürülmüş ve daha güvenilir clean tablolara aktarılmıştır. Sonuç olarak analiz ve raporlama için daha uygun bir veri yapısı elde edilmiştir.# sql5
