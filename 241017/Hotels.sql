CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT, -- 호텔 id
    hotel_name VARCHAR(100) NOT NULL, -- 호텔 이름
    loc_id INT NOT NULL, -- 지역 
    star_rating INT CHECK (star_rating BETWEEN 1 AND 5), -- 호텔 성급
    price_per_night INT NOT NULL, -- 1박 가격
    room_count INT NOT NULL, -- 호텔 방 개수
    contact_number VARCHAR(15), -- 호텔 전화 번호
    homepage_url VARCHAR(255),  -- 호텔 홈페이지 URL
    address VARCHAR(255),       -- 호텔 주소
    image_url VARCHAR(255),     -- 호텔 이미지 URL
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

INSERT INTO Hotels (hotel_name, loc_id, star_rating, price_per_night, room_count, contact_number,homepage_url, address,image_url) VALUES 
('호텔 아트리움', 1, 3, 122686, 5, '02-767-9800', 'https://www.seanhotelgroup.com/hotels/atrium-jongno/ko ' , '서울특별시 종로구 창경궁로 106 '  ,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/395825319.jpg?k=ec6a238c2114d635115e504fde7d5c840082b0161eaee417854cbee151585d0c&o=&hp=1'),
('한옥 호텔 담 서울',1, 3, 86338, 5, '02-741-9906' , 'https://hotels.naver.com/hotels/KYK1071519995?adultCnt=2&includeTax=false&checkIn=2024-10-25&checkOut=2024-10-26 ' ,'서울특별시 종로구 율곡로 6길 '  ,'https://yaimg.yanolja.com/v5/2024/06/21/16/640/6675b13a723f68.67210886.jpg '),
('라마다 호텔 앤 스위트 남대문',1, 5, 210835, 5, '02-775-7177', 'https://www.seanhotelgroup.com/hotels/ramada-namdaemun/ko ' ,'서울특별시 중구 칠패로 27'  ,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/381738787.jpg?k=f85b131fb1e12cebeadbe2628d55d9269f1e9ae4d6b116416ab21bfbe0dd921e&o=&hp=1 '),
('엠디 호텔 독산',1, 4, 98607, 5, '02-2096-4000', 'https://mdhoteldoksan.com/ ' ,'서울특별시 금천구 시흥대로 315 '  ,'https://yaimg.yanolja.com/v5/2022/10/13/12/1280/6347ff3ef3d7c4.90975308.jpg '),
('신라스테이 광화문 명동',1, 4, 236518, 5, '02-6060-9000', 'https://m.shillastay.com/gwanghwamun/index.do?lang=ko ' ,'서울특별시 종로구 삼봉로 71'  ,'https://q-xx.bstatic.com/xdata/images/hotel/max500/58182143.jpg?k=2c52d8f6be8bcf29638a430af16f079ef1a2bb00a2493e9ad88d5109d62a1971&o= '),
('파라스파라 서울',1, 4, 351780, 5, '02-3408-5000', 'https://www.paraspara.co.kr/ ' ,'서울특별시 강북구 삼양로 689 '  ,' https://yaimg.yanolja.com/v5/2022/10/12/17/640/6346f86871c386.50433780.png'),
('호텔 안테룸 서울',1, 3, 333011, 5, '02-542-2300', 'https://www.anteroom-seoul.com/ ' ,'서울특별시 강남구 도산대로 153'  ,' https://yaimg.yanolja.com/v5/2022/09/07/22/1280/63191727c6ea37.54109214.jpg'),
('호텔 밀리오레 서울',1, 3, 151115, 5,'02-6936-6000', 'https://www.migliorehotel.co.kr/homepage/KOR/index/index ' ,'서울특별시 중구 퇴계로 115 '  ,' https://q-xx.bstatic.com/xdata/images/hotel/max500/331473161.jpg?k=3507e4c5a08c8dd9dc3af23d0339ad75dc14c3e4432537120c54c073157eace4&o='),
('덴바스타 호텔', 2, 4, 60530, 5, '051-819-5001', 'http://www.denbasta.com/', '부산광역시 북구 만덕고개길 72-3', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/550522723.jpg?k=729465b5d8c52a1e323ec5af8f7be1537f8f00b33f1ce8cbe4bb6dfb70374c5a&o=&hp=1'),
('아벤트리 호텔 부산', 2, 3, 119286, 5, '051-260-5001', 'http://aventreebusan.itrocks.kr/', '부산광역시 중구 광복로39번길 6', 'https://yaimg.yanolja.com/v5/2022/04/25/15/1280/6266c35a8f5a21.30330994.jpg'),
('코모도 호텔 부산', 2, 4, 86306, 5, '051-466-9101', 'https://www.commodore.co.kr/html/main/', '부산광역시 중구 중구로 151', 'https://www.commodore.co.kr/img/pop/sub02_img04_2_2.jpg'),
('크라운 하버 호텔 부산', 2, 4, 95000, 5, '051-678-1000', 'https://www.crownharborhotel.com/html/main.asp ' ,'부산광역시 중구 중앙대로 114'  ,'https://www.crownharborhotel.com/images/contents/sub_ac_03_01_img_1.jpg '),
('부산 파크하얏트',2, 5, 392000, 5 ,'051-990-1234', 'https://www.hyatt.com/ko-KR/hotel/south-korea/park-hyatt-busan/busph ' ,'부산광역시 해운대구 마린시티1로 51 '  ,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/187840181.jpg?k=d27b57dd5d2cee7f2798a901e0965e4ca722567bd7f517b13827e5d0d2a2081e&o=&hp=1 '),
('타워 힐 호텔', 2,3, 85500, 5 ,'051-250-6100', 'http://www.towerhill.co.kr/ ' ,'부산광역시 중구 백산길 20'  ,' https://lh6.googleusercontent.com/proxy/Jt4KcmXfboKvoxm0stBP6s8WySeGiu6VPvZo-TcolicG5cusCW6-11ae5LxmEvKCgJZA9z7nULi_SIsRgVhFY3k0QWgDjTVqm3ktjg4xfBT7NLoscPdUD0gTKsLrEK9JQor4EqWWUA'),
('이비스 앰버서더 부산 시티 센터', 2, 3, 165110, 5, '051-930-1100', 'https://www.ambatel.com/ibis/busan/ko/main.do ' ,'부산광역시 부산진구 중앙대로 777 '  ,'https://www.ahstatic.com/photos/7835_rodbc_00_p_1024x768.jpg '),
('홈 호텔',2, 3, 69578, 5 ,'051-808-6564', 'https://home.busan-hotel.com/ko/ ' ,'부산광역시 진구 동천로 85-10 '  ,'https://yaimg.yanolja.com/v5/2020/06/29/11/1280/5ef94d380a17d2.10327206.jpg '),
('한화리조트 제주',3, 3, 155730, 5, '064-725-9000', 'https://www.hanwharesort.co.kr/irsweb/resort3/resort/rs_intro.do?bp_cd=1101 ' ,'제주특별자치도 제주시 봉개동 명림로 575-107 '  ,'https://image.goodchoice.kr/affiliate/2016/05/19/573d26f521db3.jpg '),
('서귀포 칼 호텔',3, 5, 136015, 5 ,'064-733-2001', 'https://www.kalhotel.co.kr/ ' ,'제주특별자치도 서귀포시 칠십리로 242 '  ,'https://www.kalhotel.co.kr/theme/daontheme_pro07/html/image/standard_d1.jpg '),
('롯데시티호텔 제주',3, 4, 231381, 5, '064-730-1000', 'https://www.lottehotel.com/jeju-city/' ,'제주특별자치도 제주시 도령로 83 '  ,' https://cf.bstatic.com/xdata/images/hotel/max1024x768/211744681.jpg?k=6d8314def473c22e671e4d52544a66f576bb39e192ad766f1453997c417d7d92&o=&hp=1'),
('랜딩관 제주신화월드 호텔앤리조트',3, 5, 145935, 5 ,'064-908-8800', 'https://booking.naver.com/booking/3/bizes/167594' ,' 제주특별자치도 서귀포시 안덕면 신화역사로304-38'  ,'https://jeju-shinhwa-world-marriott-resort-seogwipo.booked.kr/data/Photos/OriginalPhoto/15883/1588328/1588328135/Landing-Jeju-Shinhwa-World-Hotel-Exterior.JPEG '),
('히든 클리프 호텔&네이처',3, 5, 177900, 5 ,'064-752-7777', 'https://www.hiddencliff.kr/ ' ,'제주특별자치도 서귀포시 예래해안로 542 '  ,'https://yaimg.yanolja.com/v5/2024/09/13/10/1280/66e41136b64a18.35706414.jpg '),
('금호 제주 리조트',3, 4, 127418, 5, '064-766-8000', 'https://www.kumhoresort.co.kr/resort/?khr=D1000 ' ,' 제주특별자치도 서귀포시 남원읍 태위로 522-12'  ,' https://yaimg.yanolja.com/v5/2023/02/01/13/1280/63da6cbc9060a9.01155961.jpg'),
('샤인빌 럭셔리 리조트',3, 5, 150847, 5, '064-780-7000', 'https://www.jeju.to/CS/DetailPopup/Lodge.aspx?cid=36 ' ,'제주특별자치도 서귀포시 표선면 일주동로'  ,'https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/93/6e/88ec6d9776783039bd1929cce2a233569985ff11f8f039adf2e4e266bff0.jpeg '),
('베이힐 풀&빌라',3, 5, 208637, 5, '064-810-9000', 'http://www.bayhill.co.kr/ ' ,'제주특별자치도 서귀포시 예래로 424 '  ,'https://yaimg.yanolja.com/v5/2022/08/19/12/1280/62ff7ec7acc7e8.09111345.jpg '),
('ACC 디자인 호텔',4, 3, 90000, 5 ,'062-234-8000', ' https://www.acchotel.kr/' ,'광주광역시 동구 금남로 2가 28 '  ,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/356621959.jpg?k=8d8569fcdbd5d586caf8ff5a6fdfa2f9be829ef9410030447c960d5b3842a776&o=&hp=1 '),
('두바이 호텔',4, 3, 86908, 5 ,'062-373-0700', 'https://dubaihotel.kr/' ,' 광주광역시 서구 상무번영로 47'  ,'https://dubai-hotel-gwangju.booked.kr/data/Photos/OriginalPhoto/7761/776144/776144035/Dubai-Hotel-Gwangju-Metropolitan-City-Exterior.JPEG '),
('홀리데이 인 광주',4, 4, 218405, 5 ,'062-610-7000', 'https://higwangju.com/index.php? ' ,'광주광역시 서구 치평동 상무누리로 55 '  ,'https://cf.bstatic.com/xdata/images/hotel/max1024x768/331491903.jpg?k=891a6fa819d9219154e5926b9b84ec559d63f33b46c158ac367bd2e7afeaa538&o=&hp=1 '),
('호텔 스테이 53',4, 2, 70001, 5, '062-371-0000', 'http://www.stay53.co.kr/' ,'광주광역시 서구 상무연하로 6 '  ,'https://images.trvl-media.com/lodging/16000000/15150000/15148200/15148128/33469574.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium '),
('비엔날레 호텔',4, 3, 65079, 5, '062-523-1909', 'http://www.biennalehotel.co.kr/ ' ,'광주광역시 북구 운암동 450-3 '  ,'https://image.goodchoice.kr/resize_1280x1024/adimg_new/55861/194047/51b854ce6a952e8b6674c6819988e9fe.jpg');


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


Amenities만 통합적으로 보는 쿼리문 

SELECT H.hotel_id, H.hotel_name, H.loc_id, H.star_rating, H.price_per_night, H.room_count, H.contact_number,
       GROUP_CONCAT(A.amenity_name SEPARATOR ', ') AS amenities
FROM Hotels H
JOIN HotelAmenities HA ON H.hotel_id = HA.hotel_id
JOIN Amenities A ON HA.amenity_id = A.amenity_id
GROUP BY H.hotel_id;

호텔 홈페이지,주소 ,이미지 url 

관광명소(테이블 따로)
이름,특징,주소,홈페이지












