-- 1. Invoice tablosunda, tüm değerleri NULL olan kayıtların sayısını bulmanız isteniyor.
-- eğer herhangi bir değerin NULL olduğu ve toplamı isteniyorsa bu şekilde 
Select count(*) From Invoice 
Where 
billing_state IS NULL OR
invoice_id IS NULL OR
customer_id IS NULL OR
invoice_date IS NULL OR
billing_address IS NULL OR
billing_city IS NULL OR
billing_country IS NULL OR
billingpostal_code IS NULL OR
total IS NULL;
--SONUCU 1 SATIRLIK VE 209 DEĞER

-- eğer tüm satını NULL olduğu ve toplamı isteniyorsa bu şekilde 
Select count(*) From Invoice 
Where 
billing_state IS NULL AND
invoice_id IS NULL AND
customer_id IS NULL AND
invoice_date IS NULL AND
billing_address IS NULL AND
billing_city IS NULL AND
billing_country IS NULL AND
billingpostal_code IS NULL AND
total IS NULL;
--SONUCU 1 SATIRLIK VE 0(YOK) DEĞER

-- eğer herhangibir satırdaki NULL değerler isteniyorsa

Select count(*) From Invoice 
Where billing_state IS NULL;
--SONUCU 1 SATIRLIK VE 202 DEĞER

-------------------------------------------------------------------------------------------------------------------
-- 2. Koordinasyondaki kişiler, Total değerlerinde bir hata olduğunu belirtiyorlar.
-- Bu değerlerin iki katını görmek ve eski versiyonlarıyla birlikte karşılaştırmak için bir
-- sorgu yazmanız isteniyor. Ayrıca, verilerin daha rahat takip edilebilmesi için,
-- tablonun yeni versiyonuna ait kolona göre büyükten küçüğe sıralama yapılması isteniyor.

Select customer_id, total as old_total, total*2 as new_total 
from Invoice
order by new_total DESC;
-- 2 katını aldığımız değere new_total adı vererek ona göre büyükten küçüğe sıralandı.

-------------------------------------------------------------------------------------------------------------------
-- 3. Adres kolonundaki verileri, soldan 3 karakter ve sağdan 4 karakter alarak
-- birleştirmeniz ve "Açık Adres"=open_adress olarak yazmanız isteniyor. Ayrıca, bu yeni açık adresi
-- 2013 yılı ve 8. ay’a göre filtrelemeniz gerekiyor.


Select invoice_date,DATE_PART('year',invoice_date) as yearr, DATE_PART('month',invoice_date) as monthh, 
CONCAT(LEFT(billing_address, 3), RIGHT(billing_address, 4)) AS open_adress
From Invoice
Where
DATE_PART('year',invoice_date)= 2013 AND
DATE_PART('month',invoice_date) = 8;

-- DATE_PART, LEFT, RUGHT ve CONCAT fonksiyonlaro ile adresi ve tarihi parçalayarak istenilini elde ettik.