-- 기차 예약 데이터베이스 생성
CREATE DATABASE train_reservation;
USE train_reservation;

-- 가격 테이블 생성
CREATE TABLE Cost (
	departure_station INT NOT NULL,
    arrival_station INT NOT NULL,
    amount INT NOT NULL
);

CREATE TABLE Train (
	train_number VARCHAR(10) PRIMARY KEY,
    departure_station VARCHAR(50) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_station VARCHAR(50) NOT NULL,
    arrival_time TIME NOT NULL,
    take_minute TIME NOT NULL,
    type VARCHAR(10) NOT NULL
);

CREATE TABLE Station (
	station_number INT AUTO_INCREMENT PRIMARY KEY,
    station_name VARCHAR(50) NOT NULL,
    address VARCHAR(500) NOT NULL UNIQUE,
    tel_number VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE Stop_Station (
	station_number INT NOT NULL,
    train_number VARCHAR(10) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL
);

CREATE TABLE Seat (
	seat_code VARCHAR(5) PRIMARY KEY,
	type VARCHAR(10) NOT NULL,
    seat_number VARCHAR(2) NOT NULL,
    train_type VARCHAR(10) NOT NULL
);

ALTER TABLE Cost
ADD CONSTRAINT cost_primary_key
PRIMARY KEY (departure_station, arrival_station);

ALTER TABLE Cost
ADD CONSTRAINT cost_foreign_key_1
FOREIGN KEY (departure_station)
REFERENCES Station (station_number);

ALTER TABLE Cost
ADD CONSTRAINT cost_foreign_key_2
FOREIGN KEY (arrival_station)
REFERENCES Station (station_number);

ALTER TABLE STOP_STATION
ADD CONSTRAINT stop_station_primary_key
PRIMARY KEY (station_number, train_number);

ALTER TABLE STOP_STATION
ADD CONSTRAINT stop_station_foreign_key_1
FOREIGN KEY (station_number)
REFERENCES STATION (station_number);

ALTER TABLE STOP_STATION
ADD CONSTRAINT stop_station_foreign_key_2
FOREIGN KEY (train_number)
REFERENCES TRAIN (train_number);

