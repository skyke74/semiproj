CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_name VARCHAR(100) NOT NULL,
    loc_id INT NOT NULL,
    star_rating INT CHECK (star_rating BETWEEN 1 AND 5),
    price_per_night INT NOT NULL,
    room_count INT NOT NULL,
    contact_number VARCHAR(15),
    amenity_id INT
);

CREATE TABLE Amenities (
    amenity_id INT PRIMARY KEY AUTO_INCREMENT,
    amenity_name VARCHAR(100) NOT NULL
);

CREATE TABLE Location(
	loc_id  INT PRIMARY KEY AUTO_INCREMENT,
	loc_name VARCHAR(10) NOT NULL
);

CREATE TABLE HotelAmenities (
    hotel_id INT NOT NULL,
    amenity_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id),
    FOREIGN KEY (amenity_id) REFERENCES Amenities(amenity_id),
    PRIMARY KEY (hotel_id, amenity_id)
);

INSERT INTO Location(loc_name)VALUES
--1~4
('서울'),
('부산'),
('제주'),
('광주');


INSERT INTO Hotels (hotel_name, loc_id, star_rating, price_per_night, room_count, contact_number) VALUES 
('호텔 아트리움', 1, 3, 122686, 5, '02-767-9800'),
('한옥 호텔 담 서울',1, 3, 86338, 5, '02-741-9906'),
('라마다 호텔 앤 스위트 남대문',1, 5, 210835, 5, '02-775-7177'),
('엠디 호텔 독산',1, 4, 98607, 5, '02-2096-4000'),
('신라스테이 광화문 명동',1, 4, 236518, 5, '02-6060-9000'),
('파라스파라 서울',1, 4, 351780, 5, '02-3408-5000'),
('호텔 안테룸 서울',1, 3, 333011, 5, '02-542-2300'),
('호텔 밀리오레 서울',1, 3, 151115, 5,'02-6936-6000'),
('덴바스타 호텔',2, 4, 60530, 5 ,'051-819-5001'),
('아벤트리 호텔 부산', 2, 3, 119286, 5, '051-260-5001'),
('코모도 호텔 부산',2, 4, 86306, 5 ,'051-466-9101'),
('크라운 하버 호텔 부산', 2, 4, 95000, 5, '051-678-1000'),
('부산 파크하얏트',2, 5, 392000, 5 ,'051-990-1234'),
('타워 힐 호텔', 2,3, 85500, 5 ,'051-250-6100'),
('이비스 앰버서더 부산 시티 센터', 2, 3, 165110, 5, '051-930-1100'),
('홈 호텔',2, 3, 69578, 5 ,'051-808-6564'),
('한화리조트 제주',3, 3, 155730, 5, '064-725-9000'),
('서귀포 칼 호텔',3, 5, 136015, 5 ,'064-733-2001'),
('롯데시티호텔 제주',3, 4, 231381, 5, '064-730-1000'),
('랜딩관 제주신화월드 호텔앤리조트',3, 5, 145935, 5 ,'064-908-8800'),
('히든 클리프 호텔&네이처',3, 5, 177900, 5 ,'064-752-7777'),
('금호 제주 리조트',3, 4, 127418, 5, '064-766-8000'),
('샤인빌 럭셔리 리조트',3, 5, 150847, 5, '064-780-7000'),
('베이힐 풀&빌라',3, 5, 208637, 5, '064-810-9000'),
('ACC 디자인 호텔',4, 3, 90000, 5 ,'062-234-8000'),
('두바이 호텔',4, 3, 86908, 5 ,'062-373-0700'),
('홀리데이 인 광주',4, 4, 218405, 5 ,'062-610-7000'),
('호텔 스테이 53',4, 2, 70001, 5, '062-371-0000'),
('비엔날레 호텔',4, 3, 65079, 5, '062-523-1909');

INSERT INTO Amenities (amenity_name) VALUES
-- 1~9
('무료 Wi-Fi'), 
('주차장'), 
('에어컨'), 
('수영장'), 
('레스토랑'), 
('호텔 바'), 
('조식'), 
('스파'),
('피트니스 센터');


INSERT INTO HotelAmenities (hotel_id, amenity_id) VALUES
-- 호텔 아트리움
(1, 1),
(1, 7),
-- 한옥 호텔 담 서울
(2, 1),
(2, 7),
-- 라마다 호텔 앤 스위트 남대문
(3, 1),
(3, 7),
(3, 2),
-- 엠디 호텔 독산
(4, 1),
(4, 2),
(4, 7),
-- 신라스테이 광화문 명동
(5, 1),
(5, 7),
(5, 8),
-- 파라스파라 서울
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 6),
-- 호텔 안테룸 서울
(7, 1),
(7, 2),
(7, 3),
-- 호텔 밀리오레 서울
(8, 1),
(8, 3),
-- 덴바스타 호텔
(9,1),
(9, 2),
(9, 3),
-- 아벤트리 호텔 부산
(10, 1),
(10, 2),
(10, 3),
-- 코모도 호텔 부산
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
-- 크라운 하버 호텔 부산
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 6),
-- 부산 관광 호텔
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13,6),
(13,7),
-- 타워 힐 호텔
(14, 1),
(14, 2),
(14, 3),
-- 이비스 앰버서더 부산 시티 센터
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 6),
-- 홈 호텔
(16, 1),
(16, 3),
-- 한화 리조트 제주
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 6),
-- 서귀포 칼 호텔
(18, 1),
(18, 2),
(18, 3),
(18, 4),
-- 롯데시티호텔 제주
(19, 1),
(19, 4),
(19, 2),
(19, 3),
(19, 6),
-- 랜딩관 제주신화월드 호텔앤리조트
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 6),
-- 히든 클리프 호텔&네이처
(21, 1),
(21, 2),
(21, 3),
(21, 4),
-- 금호 제주 리조트
(22, 1),
(22, 2),
(22, 3),
(22, 4),
-- 샤인빌 럭셔리 리조트
(23, 1),
(23, 2),
(23, 3),
(23, 4),
-- 베이힐 풀&빌라
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 6),
-- ACC 디자인 호텔
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 6),
-- 두바이 호텔
(26, 1),
(26, 2),
(26, 3),
-- 홀리데이 인 광주
(27, 1),
(27, 3),
(27, 4),
-- 호텔 스테이 53
(28, 1),
(28, 2),
(28, 3),
-- 비엔날렌 호텔
(29,1),
(29,2),
(29,3);



통합적으로 보는 쿼리문

SELECT H.hotel_id, H.hotel_name, L.loc_name, H.star_rating, H.price_per_night, H.room_count, H.contact_number,
       GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities
FROM Hotels H
JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id
JOIN Amenities A ON HA.amenity_id = A.amenity_id
JOIN Location L ON H.loc_id = L.loc_id
GROUP BY H.hotel_id, L.loc_name;













