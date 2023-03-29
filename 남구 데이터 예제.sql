-- Namgu 테이블에서 전체 필드 검색
SELECT * FROM hotel.namgu;

-- Namgu 테이블에서 구분, 세대수, 면적 필드 검색
SELECT 구분, 세대수, 면적 FROM Namgu;

-- Namgu 테이블에서 구분, 세대수, 면적 필드 중 중복을 제거하여 검색
SELECT DISTINCT 면적, 구분, 세대수 FROM Namgu;

-- Namgu 테이블에서
-- 구성이 '문현2동 '인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 구분 = '문현2동 ';
-- Namgu 테이블에서
-- 구성비가 3인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 구성비 = 3;

-- Namgu 테이블에서
-- 구분이 '문현'으로 시작하는 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 구분 LIKE '문현%';
-- Namgu 테이블에서
-- 구분에 '문현'을 포함하는 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 구분 LIKE '%문현%';

-- Namgu 테이블에서
-- 세대수가 10000 이상인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 세대수 >= 10000;
-- Namgu 테이블에서
-- 세대수가 5000 이하인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 세대수 <= 5000;

-- Namgu 테이블에서
-- 세대수가 5000과 10000 사이인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 세대수 <= 10000 AND 세대수 >= 5000;
SELECT * FROM Namgu WHERE 세대수 BETWEEN 5000 AND 10000; -- 방법 2개

-- Namgu 테이블에서
-- 통이 21, 22, 23 중 하나라도 해당하는 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 통 IN (21, 22, 23);
-- Namgu 테이블에서
-- 통이 21, 22, 23 중 하나라도 해당하지 않는 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu WHERE 통 NOT IN (21, 22, 23);

-- Namgu 테이블에서 
-- 인구수가 10000명 이상이면서 18세 이상 인구수가 12000명 이하인 레코드 중
-- 전체 필드 검색
SELECT * FROM Namgu
WHERE 인구수 >= 10000 AND 18세이상인구수 <= 12000;
 
 -- Namgu 테이블에서
 -- 통이 20 이상이거나 반이 100 이하인 레코드 중
 -- 구분, 세대수, 인구, 통, 반 필드 검색
SELECT 구분, 세대수, 인구수, 통, 반 FROM Namgu
WHERE 통 >= 20 OR 반 <= 100;

-- Namgu 테이블에서 
-- 인구수가 10000명 이상인 레코드 중
-- 18세 이상 인구수가 12000명 이하이거나 반이 100 이상인 
-- 레코드의 전체 필드 검색 (AND OR 연산 같이 들어갈 경우 정확히 표현해줘야 함)
SELECT * FROM Namgu
WHERE 인구수 >= 10000
AND (18세이상인구수 <= 12000 OR 반 >= 100);

-- Namgu 테이블에서 
-- 인구수가 10000명 이상이면서 18세이상인구수가 12000명 이하이고
-- 반이 100 이상인 레코드의
-- 전체 필드 검색
SELECT * FROM Namgu
WHERE 인구수 >= 10000 AND 18세이상인구수 <= 12000 OR 반 >= 100;





