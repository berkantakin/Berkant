---Çevrimiçi Eğitim Platformu---

---Üyeler (Members) TABLE

CREATE TABLE IF NOT EXISTS members (

	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50) UNIQUE NOT NULL,
	passwords VARCHAR(255)NOT NULL,
	namee VARCHAR(50) NOT NULL,
	surname VARCHAR(50) NOT NULL,
	e_mail VARCHAR(100) UNIQUE NOT NULL,
	age INT DEFAULT 18,
	start_date TIMESTAMP NOT NULL DEFAULT CURRENT_DATE
)


--- örnek veriler
--18 adet örnek veriler, hepsi tam bir şekilde veri eklendi 
INSERT INTO members (user_name,passwords,namee,surname,e_mail,age)
VALUES 
('Mcarlsen','A7dF2mL9','Magnus','Carlsen','magnuscarlsen@gmail.com','35'),
('Hnakamura','xB3kT9aQ','Hikaru','Nakamura','hikarunakamura@gmail.com','38'),
('Dgukesh','M1rV8eZ2','D','Gukesh','dgukesh@gmail.com','19'),
('Aerigaisi','pL4cY6mN','Arjun','Erigaisi','arjunerigaisi@gmail.com','22'),
('Fcaruana','J8sQ2bW5','Fabiano','Caruana','fabianocaruana@gmail.com','33'),
('Nabdusattorov','fR6nU3dG','Nodirbek','Abdusattorov','nodirbekabdusattorov@gmail.com','21'),
('Rpraggnanandhaa','T2mX9aL7','R','Praggnanandhaa','rpraggnanandhaa@gmail.com','20'),
('Ywei','wE1zC4kV','Yi','Wei','yiwei@gmail.com','26'),
('Inepomniachtchi','K9hD5rB8','Ian','Nepomniachtchi','ıannepomniachtchi@gmail.com','35'),
('Afirouzja','zT7eM2nQ','Alireza','Firouzja','alirezafirouzja@gmail.com','22'),
('Vanand','D4xW6pL3','Viswanathan','Anand','viswanathananand@gmail.com','56'),
('Rrapport','oG5cT8vM','Richard','Rapport','richardrapport@gmail.com','29'),
('Vkeymer','R3nY1zF6','Vincent','Keymer','vincentkeymer@gmail.com','21'),
('Dbelenkaya','uA9dB7mX','Dina','Belenkaya','dinabelenkaya@gmail.com','31'),
('Agoryachkina','C6kQ2tJ4','Aleksandra','Goryachkina','aleksandragoryachkina@gmail.com','27'),
('Amuzychuk','mV3xE8pN','Anna','Muzychuk','annamuzychuk@gmail.com','35'),
('Klagno','L1zF9wR7','Kateryna','Lagno','katerynalagno@gmail.com','36'),
('Mmuzychuk','qT5cM4dB','Mariya','Muzychuk','mariyamuzychuk@gmail.com','33');


--SELECT * FROM members 

 -- 3 adet örnek veriler, default değer kullanılarak veri eklendi
INSERT INTO members (user_name,passwords,namee,surname,e_mail)
VALUES 
('Bassaubayeva','N7bX2qL5','Bibisara','Assaubayeva','bibisaraassaubayeva@gmail.com'),
('Hdronavalli','aR4mK8zW','Harika','Dronavalli','harikadronavalli@gmail.com'),
('Mefroimski','T6cV1pD9','Marsel','Efroimski','marselefroimski@gmail.com');

--SELECT * FROM members
---Eğitimler (Courses)

CREATE TABLE IF NOT EXISTS courses (

	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(200) UNIQUE NOT NULL,
	course_explanation TEXT,
	course_start DATE,
	course_finish DATE,
	course_books TEXT,
	course_teacher VARCHAR(100) NOT NULL
	
)

--- 18 adet  örnek kurslar eklendi.

INSERT INTO courses (course_name,course_explanation,course_start,course_finish,course_books, course_teacher)
VALUES 
('blockzincir 101','İsteğe bağlı','2024-08-08','2025-02-15','block zincir world','İlker KAYA'),
('yapayzeka 102','Zorunlu','2024-08-08','2025-02-15','the artifical','Gazihan ALANKUS'),
('siber_güvenlik 103','İsteğe bağlı','2024-08-08','2025-02-15','siber dünyası','Soner SEZGİN'),
('d3drawing 101','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Murat TÜRKAN'),
('d2drawing 102','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Berkant AKIN'),
('assembly 103','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Berkant UZUNBAYIR'),
('componets 101','Zorunlu','2024-08-08','2025-02-15','electrial components','Mehmet TÜRKAN'),
('circuits 102','Zorunlu','2024-08-08','2025-02-15','electrial fields','Mehmet TÜRKAN'),
('numerical_design 103','İsteğe bağlı','2024-08-08','2025-02-15','numeric analys','Mehmet TÜRKAN')

('blockzincir 201','İsteğe bağlı','2024-08-08','2025-02-15','block zincir world','İlker KAYA'),
('yapayzeka 202','Zorunlu','2024-08-08','2025-02-15','the artifical','Gazihan ALANKUS'),
('siber_güvenlik 203','İsteğe bağlı','2024-08-08','2025-02-15','siber dünyası','Soner SEZGİN'),
('d3drawing 201','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Murat TÜRKAN'),
('d2drawing 202','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Berkant AKIN'),
('assembly 203','Zorunlu','2024-08-08','2025-02-15','mechanical drawings','Berkant UZUNBAYIR'),
('componets 201','Zorunlu','2024-08-08','2025-02-15','electrial components','Mehmet TÜRKAN'),
('circuits 202','Zorunlu','2024-08-08','2025-02-15','electrial fields','Mehmet TÜRKAN'),
('numerical_design 203','İsteğe bağlı','2024-08-08','2025-02-15','numeric analys','Mehmet TÜRKAN')


--SELECT * FROM courses 

---Kategoriler (Categories)

CREATE TABLE IF NOT EXISTS categories (

	training_id SERIAL PRIMARY KEY,
    training_name VARCHAR(100) NOT NULL,
	course_id SMALLINT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)

)

INSERT INTO categories (training_name, course_id)
VALUES 

--- computer
('blokzincir',1),
('yapayzeka',2),
('siber_güvenlik',3),

--- mechanical
('d3drawing',4),
('d2drawing',5),
('assembly',6),

--- electrical
('componets',7),
('circuits',8),
('numerical_design',9);


--SELECT * FROM categories 

---Katılımlar (Enrollments)
CREATE TABLE IF NOT EXISTS Enrollments (

	enroll_id SERIAL PRIMARY KEY,
    user_id BIGINT,
	course_id BIGINT,
	count_enroll INT,
    FOREIGN KEY (user_id) REFERENCES members(user_id),
	FOREIGN KEY (course_id) REFERENCES courses(course_id)

)
--- her kullanıcı için örnek bir katılım listesi oluşturuldu.

INSERT INTO Enrollments (user_id, course_id,count_enroll)
VALUES 
('1','4','18'),
('2','10','20'),
('3','8','21'),
('4','18','10'),
('5','4','25'),
('6','12','25'),
('7','15','14'),
('8','12','25'),
('9','12','29'),
('10','2','32'),
('11','3','42'),
('12','3','38'),
('13','10','24'),
('14','16','26'),
('15','14','32'),
('16','15','32'),
('17','14','15'),
('18','3','2'),
('19','11','42'),
('20','8','42'),
('21','7','24')

--SELECT * FROM Enrollments 


---Sertifikalar (Certificates)

CREATE TABLE IF NOT EXISTS Certificates (

	certifiacte_id SERIAL PRIMARY KEY,
    certifiacte_code VARCHAR(12) UNIQUE NOT NULL,
	given_date  DATE,
	CHECK (char_length(certifiacte_code) = 12)
)

INSERT INTO Certificates (certifiacte_code,given_date)
VALUES
('395847328290','2024-01-01'),
('192847364291','2024-01-02'),
('284719365092','2024-01-03'),
('763829104857','2024-01-04'),
('192836547290','2024-01-05'),
('857192634718','2024-01-06'),
('374829105627','2024-01-07'),
('384751629083','2024-01-08'),
('192830764581','2024-01-09'),
('728394175029','2024-01-10'),
('463920587601','2024-01-11'),
('738192746503','2024-01-12'),
('929384750291','2024-01-13'),
('384759204857','2024-01-14'),
('293847561028','2024-01-15'),
('587192634107','2024-01-16'),
('283746195820','2024-01-17'),
('746392810562','2024-01-18'),
('592837461920','2024-01-19'),
('637492851092','2024-01-20'),
('839456102783','2024-01-21'),
('394817650829','2024-01-22'),
('394857612930','2024-01-23'),
('283746190582','2024-01-24'),
('758392647512','2024-01-25'),
('548291746503','2024-01-26'),
('947564812309','2024-01-27'),
('483726190582','2024-01-28'),
('938472651903','2024-01-29'),
('587194826037','2024-01-30'),
('920183647509','2024-01-31'),
('384759103820','2024-02-01'),
('738194651280','2024-02-02'),
('193847560291','2024-02-03'),
('284756103928','2024-02-04'),
('394857261032','2024-02-05'),
('582736491028','2024-02-06'),
('638291750921','2024-02-07'),
('873192640581','2024-02-08'),
('492837561098','2024-02-09'),
('193748260592','2024-02-10'),
('287394610582','2024-02-11'),
('638471259830','2024-02-12'),
('283746195825','2024-02-13'),
('928374561027','2024-02-14'),
('583746120938','2024-02-15'),
('384751290473','2024-02-16'),
('923847561029','2024-02-17'),
('384751209876','2024-02-18'),
('587194630573','2024-02-19')

--SELECT * FROM Certificates 

---Sertifika Atamaları (CertificateAssignments)
CREATE TABLE IF NOT EXISTS CertificateAssg (
	CertificateAssg_id SERIAL PRIMARY KEY,
    user_id BIGINT,
	course_id BIGINT,
	certifiacte_code VARCHAR(12) UNIQUE,
	FOREIGN KEY (certifiacte_code) REFERENCES Certificates(certifiacte_code),
	FOREIGN KEY (user_id) REFERENCES members(user_id),
	FOREIGN KEY (course_id) REFERENCES courses(course_id)

)

INSERT INTO CertificateAssg (user_id,course_id,certifiacte_code)
VALUES
(1,4,395847328290),
(2,10,192847364291),
(3,8,284719365092),
(4,18,763829104857),
(5,4,192836547290),
(6,12,857192634718),
(7,15,374829105627),
(8,12,384751629083),
(9,12,192830764581),
(10,2,728394175029),
(11,3,463920587601),
(12,3,738192746503),
(13,10,929384750291),
(14,16,384759204857),
(15,14,293847561028),
(16,15,587192634107),
(17,14,283746195820),
(18,3,746392810562),
(19,11,592837461920),
(20,8,637492851092),
(21,7,839456102783)

--SELECT * FROM CertificateAssg 



---Blog Gönderileri (BlogPosts)
CREATE TABLE IF NOT EXISTS BlogPosts (
	block_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	contetnt VARCHAR(100)  NOT NULL,
	relase_date TIMESTAMP NOT NULL DEFAULT CURRENT_DATE,
    user_id BIGINT,
	FOREIGN KEY (user_id) REFERENCES members(user_id)

)

INSERT INTO BlogPosts (title,contetnt,user_id)
VALUES 

('yapay zeka','yapay zeka hayatımızda önemli bir yere sahiptir',1),
('3 boyutlu tasarım','3 boyutlu tasarıma başlarken her şey çizgi ile başlar',5),
('elektrik devreleri','elektrik devresinin tarihsel gelişimi ',11),
('robotics','japon mühendislerin son yaptıkları çalışmada ....',20)

--SELECT * FROM BlogPosts 

/*
--- örnek sorgular


--- Bir eğitime kayıtlı tüm üyeler


SELECT 
    c.course_name AS CourseTitle,
    m.user_name AS UserName,
    m.namee AS Name,
    m.surname AS SurName
FROM 
    Enrollments e
JOIN members m ON e.user_id = m.user_id
JOIN courses c ON e.course_id = c.course_id
WHERE 
    c.course_id = 12 OR
	c.course_id = 4;

--- Alına sertifikalar
SELECT 
    m.user_name,
    m.namee,
    m.surname,
    c.certifiacte_code
FROM 
    CertificateAssg ca
JOIN members m ON ca.user_id = m.user_id
JOIN Certificates c ON ca.CertificateAssg_id = c.certifiacte_id;

*/
