--DATABASE(veriTabanı) Oluşturma
--Create database evren;

create database ogrenci;

--DDL - DATA DEFİNİTİON LANG
--CREATE - TABLO OLUŞTURMA
CREATE TABLE ogrenciler1
(
ogrenci_no char(7),
isim varchar (20),
soyisim varchar(25),
not_ort real,--ondalıklı sayılar için kullanılır
kayit_tarih date

);
--VAROLAN TABLODAN YENİ BİR TABLO OLUŞTURMA
CREATE TABLE ogrenci_notları
AS
SELECT isim,soyisim,not_ort FROM ogrenciler1;

--DML - DATA MANUPULATİON LANGUAGE
--İNSERT( DATABASE'e veri ekleme)
INSERT INTO ogrenciler1 VALUES ('123456','SAİD','İlhan',85.5,now());
INSERT INTO ogrenciler1 VALUES ('123456','SAİD','İlhan',85.5,'2020-12-11');

--bir tabloya parçalı veri eklemek istersek
INSERT INTO ogrenciler1(isim,soyisim) VALUES ('erol','evren');


--DQL - DATA QERRY LANG.
--SELECT

select * FROM ogrenciler1

