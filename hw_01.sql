--- Görevler
--------------------------------------------------------
-- a) Belirli Kolonları Seçme

--select FirstName, LastName, Salary from employees;
-- select from komutu arasına görmek istediğimiz sütün(column) adını yazarak istediğimiz bilgileri görütüleyebiliyiriz.
--------------------------------------------------------
-- b) Belirli Kolonları Seçme

--select distinct departmentname from departments;
-- distint komutu ile istediğimiz sütün içerisindeki tekrar eden verileri tekrarsız olacak şekilde 1 defa görütüleyebiliriz.
--------------------------------------------------------
-- c) Belirli Bir Departmana Ait Çalışanları Listeleme

--select * from departments where departmentname = 'IT' ;
-- WHERE komutu ile istediğimiz veriye ait bilgileri görütüleyebiliriz.
--------------------------------------------------------
-- d) Maaşa Göre Sıralama

--select * from employees order by salary;
--order by komutu ile istediğimiz verileri belirlenen sütuna göre küçükten büyüğe şeklinde görütüleyebiliriz.
--------------------------------------------------------
-- e) Kolonları Birleştirme (Concatenation)

--select firstname || ' ' || lastname as full_name from employees;
-- ||  komutu ile istediğimiz verilerdeki sütunları birleştirip görütüleyebiliriz. as ile ded sütuna anlamlı bir isim verebiliriz.
--------------------------------------------------------
