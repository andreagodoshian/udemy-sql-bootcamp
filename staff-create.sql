CREATE DATABASE company;
USE company;

CREATE TABLE staff
(
    name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(255),
    address VARCHAR(255),
    days_off INT
);

INSERT INTO staff
    (name, phone, email, address, days_off)
VALUES
    ('Andrew', '+1-202-555-0163', 'andrew@gmail.com', '63 Chestnut St. Altoona, PA 16601', 24),
    ('Tom', null, 'tom@gmail.com', '5, Quai des Belges 5929 MARSEILLE', 0),
    ('Ashley', '+1-613-555-0199', 'ashley@gmail.com', '40 10th Ave. Chilcotin, BC V0L 0V5', 15),
    ('Mark', null, null, '4 Church Drive Miami, FL', 0),
    ('Saanvi', null, null, null, 20);