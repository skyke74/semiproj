CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    star_rating INT CHECK (star_rating BETWEEN 1 AND 5),
    price_per_night INT NOT NULL,
    room_count INT NOT NULL,
    contact_number VARCHAR(15)
);

CREATE TABLE Amenities (
    amenity_id INT PRIMARY KEY AUTO_INCREMENT,
    amenity_name VARCHAR(100) NOT NULL
);

CREATE TABLE HotelAmenities (
    hotel_id INT NOT NULL,
    amenity_id INT NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id),
    FOREIGN KEY (amenity_id) REFERENCES Amenities(amenity_id),
    PRIMARY KEY (hotel_id, amenity_id)
);


INSERT INTO Hotels (hotel_name, location, star_rating, price_per_night, room_count, contact_number) VALUES 
('덴바스타 호텔', 'Busan, South Korea', 4, 60530, 70, '051-819-5001'),
('아벤트리 호텔 부산', 'Busan, South Korea', 3, 119286, 80, '051-260-5001'),
('코모도 호텔 부산', 'Busan, South Korea', 4, 86306, 100, '051-466-9101'),
('크라운 하버 호텔 부산', 'Busan, South Korea', 4, 95000, 80, '051-678-1000'),
('부산 관광 호텔', 'Busan, South Korea', 3, 58610, 60, '051-241-4301'),
('타워 힐 호텔', 'Busan, South Korea', 3, 85500, 35, '051-250-6100'),
('이비스 앰버서더 부산 시티 센터', 'Busan, South Korea', 3, 165110, 45, '051-930-1100'),
('홈 호텔', 'Busan, South Korea', 3, 69578, 30, '051-808-6564'),
('호텔 아트리움', 'Seoul, South Korea', 3, 122686, 60, '02-767-9800'),
('한옥 호텔 담 서울', 'Seoul, South Korea', 3, 86338, 10, '02-741-9906'),
('라마다 호텔 앤 스위트 남대문', 'Seoul, South Korea', 4, 210835, 100, '02-775-7177'),
('엠디 호텔 독산', 'Seoul, South Korea', 4, 98607, 80, '02-2096-4000'),
('신라스테이 광화문 명동', 'Seoul, South Korea', 4, 236518, 120, '02-6060-9000'),
('파라스파라 서울', 'Seoul, South Korea', 4, 351780, 100, '02-3408-5000'),
('호텔 안테룸 서울', 'Seoul, South Korea', 3, 333011, 120, '02-542-2300'),
('호텔 밀리오레 서울', 'Seoul, South Korea', 3, 151115, 70, '02-6936-6000'),
('한화리조트 제주', 'Jeju, South Korea', 3, 155730, 140, '064-725-9000'),
('서귀포 칼 호텔', 'Jeju, South Korea', 5, 136015, 60, '064-733-2001'),
('롯데시티호텔 제주', 'Jeju, South Korea', 4, 231381, 45, '064-730-1000'),
('랜딩관 제주신화월드 호텔앤리조트', 'Jeju, South Korea', 5, 145935, 90, '064-908-8800'),
('히든 클리프 호텔&네이처', 'Jeju, South Korea', 5, 177900, 40, '064-752-7777'),
('금호 제주 리조트', 'Jeju, South Korea', 4, 127418, 50, '064-766-8000'),
('샤인빌 럭셔리 리조트', 'Jeju, South Korea', 5, 150847, 30, '064-780-7000'),
('베이힐 풀&빌라', 'Jeju, South Korea', 5, 208637, 15, '064-810-9000'),
('ACC 디자인 호텔', 'Gwangju, South Korea', 3, 90000, 30, '062-234-8000'),
('두바이 호텔', 'Gwangju, South Korea', 3, 86908, 60, '062-373-0700'),
('홀리데이 인 광주', 'Gwangju, South Korea', 4, 218405, 80, '062-610-7000'),
('호텔 스테이 53', 'Gwangju, South Korea', 2, 70001, 35, '062-371-0000'),
('비엔날레 호텔', 'Gwangju, South Korea', 3, 65079, 40, '062-523-1909');

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
-- 덴바스타 호텔
(1, 1),
(1, 2),
(1, 3),
-- 아벤트리 호텔 부산
(2, 1),
(2, 2),
(2, 3),
-- 코모도 호텔 부산
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
-- 크라운 하버 호텔 부산
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 6),
-- 부산 관광 호텔
(5, 1),
(5, 2),
(5, 3),
(5, 4),
-- 타워 힐 호텔
(6, 1),
(6, 2),
(6, 3),
-- 이비스 앰버서더 부산 시티 센터
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 6),
-- 홈 호텔
(8, 1),
(8, 3),
-- 호텔 아트리움
(9, 1),
(9, 7),
-- 한옥 호텔 담 서울
(10, 1),
(10, 7),
-- 라마다 호텔 앤 스위트 남대문
(11, 1),
(11, 7),
(11, 2),
-- 엠디 호텔 독산
(12, 1),
(12, 7),
(12, 2),
-- 신라스테이 광화문 명동
(13, 1),
(13, 7),
(13, 8),
-- 파라스파라 서울
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 6),
-- 호텔 안테룸 서울
(15, 1),
(15, 2),
(15, 3),
-- 호텔 밀리오레 서울
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
-- 비엔날레 호텔
(29, 1),
(29, 2),
(29, 3);













