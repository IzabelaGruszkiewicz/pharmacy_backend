INSERT INTO pharmacy (name, location, opening_hour, closing_hour, phone_number)
VALUES ('Apteka Leśna', 'ul. Leśna 1', '08:00', '20:00', '123456789'),
       ('Apteka Słoneczna', 'ul. Słoneczna 5', '09:00', '21:00', '987654321'),
       ('Apteka Podlasie', 'ul. Podlaska 10', '07:30', '19:30', '111222333');

INSERT INTO category (name)
values ('leki'),
       ('suplementy'),
       ('drogeria');

INSERT INTO subcategory (name)
values ('przeciwbolowe'),
       ('alergia'),
       ('przeziebienie'),
       ('elektrolity'),
       ('mineraly'),
       ('witaminy'),
       ('twarz'),
       ('cialo'),
       ('wlosy');

INSERT INTO product (brand, name, photo_path, price, magazine_stock, description, category_id, subcategory_id)
VALUES ('Apap', 'Tabletki 12 sztuk', 'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg', 15.99,
        100, 'Lek przeciwgorączkowy i przeciwbólowy Apap 500 mg 12 tabletek przeznaczony jest dla dorosłych i młodzieży po 12 roku życia.
        Apap wskazany jest do stosowania w przypadku gorączki', 1, 1),
    ('Metafen', 'Tabletki rozkurczowe', 'https://static.gemini.pl/assets/produkty/9066392/min6/metafen-rozkurczowy-40-mg-20-tabletek-16631538091.jpg',
     13.20, 82, 'Metafen 40 mg to lek rozkurczowy zawierający substancję czynną, którą jest drotaweryna, pochodna papaweryny. Działa rozkurczowo na mięśnie gładkie, czyli wpływa na mięśniówkę gładką niezależnie od unerwienia.', 1, 1),
       ('Ibuprofen', 'Tabletki 12 sztuk', 'https://static.gemini.pl/assets/produkty/0019791/min6/ibuprofen-aflofarm-400-mg-20-tabletek-drazowanych-16898430381.jpg',
        19.99, 50, 'Opis produktu bla bla bla test', 1, 1),
       ('Pyraligina', 'Produkt leczniczy',
        'https://static.gemini.pl/assets/produkty/0062934/min6/pyralgina-500-mg-20-tabletek-16832715821.jpg', 9.49,
        32,
        'Pyralgina 500 mg to nieopioidowy lek o działaniu przeciwbólowym, przeciwgorączkowym i rozkurczowym na mięśnie gładkie. Produkt wskazany jest do stosowania w przypadku występowania bólu różnego pochodzenia o dużym nasileniu oraz gorączki.',
        1, 1),
       ('Ibum', 'Express Forte',
        'https://static.gemini.pl/assets/produkty/0042867/min6/ibum-express-forte-400-mg-24-kapsulki-miekkie-16766196621.png', 15.49,
        32, 'Ibum Express Forte to lek w postaci zielonych, łatwych do połknięcia kapsułek miękkich. Dzięki dawce ibuprofenu równiej 400 mg silnie działa na ból.',
        1, 1),
       ('Aspiryna', 'Tabletki',
        'https://cdn2.aptekapuls.pl/3251-large_default/aspirin-pro-500-mg-20-tabletek-powlekanych.jpg',
        8.50, 75, 'Aspirin Pro firmy Bayer to lek o działaniu przeciwbólowym, przeciwgorączkowym i przeciwzapalnym. Każda tabletka zawiera 500 mg kwasu acetylosalicylowego zamkniętego w tabletce powlekanej z musującym rdzeniem.', 1, 1),
       ('Paracetamol', 'Tabletki 10 sztuk', 'https://azcdn.doz.pl/image/d/product/902114ac-scale-350x350.jpg',
        12.99, 100, 'Paracetamol Biofarm 500 mg to lek w postaci tabletek dla dorosłych i dzieci powyżej 6 roku życia. Substancją czynną leku jest paracetamol - 500 mg w każdej tabletce. Działa przeciwbólowo i przeciwgorączkowo', 1, 1),
       ('Apap', 'Tabletki 18 sztuk', 'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg', 24.50,
        100, 'Lek przeciwgorączkowy i przeciwbólowy Apap 500 mg 18 tabletek przeznaczony jest dla dorosłych i młodzieży po 12 roku życia.
        Apap wskazany jest do stosowania w przypadku gorączki', 1, 1),
       ('Apap', 'Tabletki 26 sztuk', 'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg', 15.99,
        100, 'Lek przeciwgorączkowy i przeciwbólowy Apap 500 mg 26 tabletek przeznaczony jest dla dorosłych i młodzieży po 12 roku życia.
        Apap wskazany jest do stosowania w przypadku gorączki', 1, 1),
       ('Pyraligina', 'Produkt leczniczy',
        'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg', 9.49,
        32,
        'Pyralgina 500 mg to nieopioidowy lek o działaniu przeciwbólowym, przeciwgorączkowym i rozkurczowym na mięśnie gładkie. Produkt wskazany jest do stosowania w przypadku występowania bólu różnego pochodzenia o dużym nasileniu oraz gorączki.',
        1, 1),
       ('Ibuprofen', 'Tabletki 20 sztuk', 'https://static.gemini.pl/assets/produkty/0019791/min6/ibuprofen-aflofarm-400-mg-20-tabletek-drazowanych-16898430381.jpg',
        19.99, 50, 'Opis produktu bla bla bla test', 1, 1),
       ('Aspiryna', 'Tabletki',
        'https://cdn2.aptekapuls.pl/3251-large_default/aspirin-pro-500-mg-20-tabletek-powlekanych.jpg',
        8.50, 75, 'Aspirin Pro firmy Bayer to lek o działaniu przeciwbólowym, przeciwgorączkowym i przeciwzapalnym. Każda tabletka zawiera 500 mg kwasu acetylosalicylowego zamkniętego w tabletce powlekanej z musującym rdzeniem.', 1, 1),
       ('Paracetamol', 'Tabletki 10 sztuk', 'https://azcdn.doz.pl/image/d/product/902114ac-scale-350x350.jpg',
        12.99, 100, 'Paracetamol Biofarm 500 mg to lek w postaci tabletek dla dorosłych i dzieci powyżej 6 roku życia. Substancją czynną leku jest paracetamol - 500 mg w każdej tabletce. Działa przeciwbólowo i przeciwgorączkowo', 1, 1),
       ('Ostrovit', 'Colagen', 'https://ostrovit.com/hpeciai/674bfd63814b35ca553be68f85fa72e5/pol_pl_25495-25495_1.png',
        75.79, 43, 'Opis produktu bla bla bla test', 2, 6),
       ('Ostrovit', 'Elektrolity',
        'https://ostrovit.com/hpeciai/535bba8a7d14a2e5e6b1938945d2a94b/pol_pm_OstroVit-Vitargo-Elektrolity-Witaminy-1000-g-26542_1.png',
        89.50, 43, 'Opis produktu bla bla bla test', 2, 4),
       ('D-Vitum Forte', 'Kapsułki z witaminą D', 'https://azcdn.doz.pl/image/d/product/269ecb32-scale-350x350.jpg',
        21.99, 43, 'Opis produktu bla bla bla test', 2, 6),
       ('Oryal', 'Tabletki musujące', 'https://azcdn.doz.pl/image/d/product/3f1dc4cb-scale-350x350.jpg',
        11.50, 43, 'Opis produktu bla bla bla test', 2, 5),
       ('Cerave', 'Krem do twarzy', 'https://azcdn.doz.pl/image/d/product/b5d0715b-scale-350x350.jpg',
        45.99, 21, 'Opis produktu bla bla bla test', 3, 7),
       ('La Roche-Posay', 'Żel do twarzy', 'https://www.allecco.pl/la-roche-posay-lipikar-zel-myjacy-750-ml.1.jpg',
        59.99, 21, 'Opis produktu bla bla bla test', 3, 7),
       ('Dercos', 'Szampon do włosów',
        'https://media.superpharm.eu/media/catalog/product/cache/07e643f7e64afe5b94f277b4a7389b28/v/i/vichy_dercos_-_szampon_wzmacniaj_cy_do_w_os_w_z_aminexilem_200ml_1_.jpg',
        78.99, 21, 'Opis produktu bla bla bla test', 3, 9),
       ('Cetaphil', 'Balsam nawilżający', 'https://azcdn.doz.pl/image/d/product/ca9344ce-scale-350x350.jpg',
        62.99, 21, 'Opis produktu bla bla bla test', 3, 8);

INSERT INTO pharmacy_product (quantity, pharmacy_id, product_id)
VALUES (50, 1, 1),
       (25, 2, 2),
       (30, 3, 3);

INSERT INTO opinion (content, star, product_id)
VALUES ('Bardzo dobry', 5, 1),
       ('W porządku', 4, 2),
       ('Słabe', 2, 3);

INSERT INTO address (city, address, postal_code)
VALUES ('Warszawa', 'ul. Wiejska 10', '00-123'),
       ('Kraków', 'ul. Krakowska 5', '30-456'),
       ('Gdańsk', 'ul. Morska 8', '80-789');

INSERT INTO customer (name, surname, phone_number, email, address_id)
VALUES ('Jan', 'Kowalski', '555111222', 'jan.kowalski@mail.com', 1),
       ('Anna', 'Nowak', '666333444', 'anna.nowak@mail.com', 2),
       ('Piotr', 'Wiśniewski', '777444555', 'piotr.wisniewski@mail.com', 3);

INSERT INTO delivery (name, type, price)
VALUES ('DPD', 'Kurier', 10.00),
       ('Poczta Polska', 'Kurier', 15.00),
       ('InPost', 'Kurier', 9.00),
       ('InPost', 'Paczkomat', 9.00),
       ('Odbiór w aptece', 'Odbiór osobisty', 0.00);

INSERT INTO payment (name, type)
VALUES ('Gotówka', 'Płatność u kuriera'),
       ('Karta płatnicza', 'Płatność online'),
       ('Przelewy24', 'Płatność online'),
       ('BLIK', 'Płatność online');
