--“USA” ülkesine ait, 2009 yılı içerisinde oluşturulmuş tüm faturaların (Invoice) toplamını listeleyen bir sorgu yazınız.

SELECT concat('Toplam : ', COUNT(invoice_id),' yer mevcut ve toplam maliyet'), SUM(total) FROM invoice
WHERE billing_country = 'USA'
AND DATE_PART('year',invoice_date) = 2009;

-- where komutuyla istenilen koşulu sağladık sum fonksiyonu ile toplam maliyeti hesapladık

-------------------------------------------------------------------------------------------------------------------

--Tüm parça (track) bilgilerini, bu parçaların ait olduğu playlisttrack ve playlist tablolarıyla birleştirerekn(JOIN) listeleyen bir sorgu yazınız.

SELECT * 
FROM track t
LEFT JOIN playlisttrack pt ON t.track_id = pt.track_id
LEFT JOIN playlist p ON pt.playlist_id = p.playlist_id;


-- left join ile hepsini birleştirdik

-------------------------------------------------------------------------------------------------------------------

--"Let There Be Rock" adlı albüme ait tüm parçaları (Track) listeleyen, sanatçı (Artist) bilgisini
--de içeren bir sorgu yazınız. Ayrıca, sonuçları parça süresi (milliseconds) büyükten küçüğe
--sıralayınız.

SELECT * 
FROM track t
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist a ON al.artist_id = a.artist_id
WHERE al.title = 'Let There Be Rock'
ORDER BY t.Milliseconds DESC;

-- inner join komutu ile ortak veriyi tek sorgu ile topladık
