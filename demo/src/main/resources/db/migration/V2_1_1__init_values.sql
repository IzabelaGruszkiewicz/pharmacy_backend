INSERT INTO pharmacy (name, location, opening_hour, closing_hour, phone_number)
VALUES
    ('Apteka Leśna', 'ul. Leśna 1', '08:00', '20:00', '123456789'),
    ('Apteka Słoneczna', 'ul. Słoneczna 5', '09:00', '21:00', '987654321'),
    ('Apteka Podlasie', 'ul. Podlaska 10', '07:30', '19:30', '111222333');

INSERT INTO product (name, price, magazine_stock)
VALUES
    ('Paracetamol', 12.99, 100),
    ('Ibuprofen', 19.99, 50),
    ('Aspiryna', 8.50, 75);

INSERT INTO pharmacy_product (quantity, pharmacy_id, product_id)
VALUES
    (50, 1, 1),
    (25, 2, 2),
    (30, 3, 3);

INSERT INTO opinion (content, star, product_id)
VALUES
    ('Bardzo dobry', 5, 1),
    ('W porządku', 4, 2),
    ('Słabe', 2, 3);

INSERT INTO address (city, address, postal_code)
VALUES
    ('Warszawa', 'ul. Wiejska 10', '00-123'),
    ('Kraków', 'ul. Krakowska 5', '30-456'),
    ('Gdańsk', 'ul. Morska 8', '80-789');

INSERT INTO customer (name, surname, phone_number, email, address_id)
VALUES
    ('Jan', 'Kowalski', '555111222', 'jan.kowalski@mail.com', 1),
    ('Anna', 'Nowak', '666333444', 'anna.nowak@mail.com', 2),
    ('Piotr', 'Wiśniewski', '777444555', 'piotr.wisniewski@mail.com', 3);

INSERT INTO delivery (name, type, price)
VALUES
    ('DPD', 'Kurier', 10.00),
    ('Poczta Polska', 'Kurier', 15.00),
    ('InPost', 'Kurier', 9.00),
    ('InPost', 'Paczkomat', 9.00),
    ('Odbiór w aptece', 'Odbiór osobisty', 0.00);

INSERT INTO payment (name, type)
VALUES
    ('Gotówka', 'Płatność u kuriera'),
    ('Karta płatnicza', 'Płatność online'),
    ('Przelewy24', 'Płatność online'),
    ('BLIK', 'Płatność online');
