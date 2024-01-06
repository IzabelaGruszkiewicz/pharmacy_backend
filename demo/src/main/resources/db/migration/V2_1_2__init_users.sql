insert into pharmacy_user (user_id, user_name, email, password, name, active)
values (1, 'admin', 'admin@pharmacy.pl',
        '$2a$12$ExJ0e5U2ACPbrgy8fhRss.8CVIv6O1F3Ltg1CxJCbS6LnvyrBvJgG', 'Admin', true);

insert into pharmacy_user (user_id, user_name, email, password, name, active)
values (2, 'user1', 'user1@pharmacy.pl',
        '$2a$12$Kb79b.Uw8/Q28okfEo/dIeF7L5ayQnEZgLDxSj.S/.mYZ.4YlHQoq', 'User1', true);

insert into pharmacy_role (role_id, role)
values (1, 'ADMIN'),
       (2, 'USER');

insert into pharmacy_user_role (user_id, role_id)
values (1, 1),
       (1, 2);
insert into pharmacy_user_role (user_id, role_id)
values (2, 2);

INSERT INTO product (brand, name, photo_path, price, magazine_stock, description, category_id, subcategory_id)
VALUES ('Vichy', 'Dercos Anti Dandruff DS',
        'https://static.gemini.pl/assets/produkty/0040813/min6/vichy-dercos-anti-dandruff-ds-szampon-przeciwlupiezowy-wlosy-normalne-i-przetluszczajace-sie-390-ml-16692948261.jpg',
        75.99,
        10,
        'Vichy Dercos Anti Dandruff DS to szampon przeciwłupieżowy przeznaczony do włosów normalnych i przetłuszczających się.',
        3, 9),
       ('Vichy', 'Dercos Energy+',
        'https://static.gemini.pl/assets/produkty/0016259/min6/vichy-dercos-energy-szampon-do-wlosow-wzmacniajacy-400-ml-16984008701.jpg',
        84.69,
        75,
        'Vichy Dercos Energy+ to unikalny produkt z linii Vichy, posiadający intensywnie działająca formułę wzbogaconą w laboratoriach Vichy Aminexilem.',
        3, 9),
       ('Vichy', 'Dercos Ultra Soothing',
        'https://static.gemini.pl/assets/produkty/9057417/min6/vichy-dercos-szampon-ultrakojacy-do-wlosow-normalnych-i-przetluszczajacych-sie-200-ml-16031007081.jpg',
        69.19,
        75,
        'Szampon z zawartością Pantenolu, kompleksem Sensirine i witaminą CG, które łagodzą podrażnienia i świąd.',
        3, 9),
       ('Vichy', 'Dercos Neogenic',
        'https://static.gemini.pl/assets/produkty/0035734/min6/vichy-dercos-neogenic-szampon-przywracajacy-gestosc-wlosow-400ml-15925085491.jpg',
        91.59,
        75,
        'Vichy Dercos Neogenic to szampon przywracający gęstość włosów przeznaczony dla mężczyzn i kobiet. ',
        3, 9),
       ('Biovax', 'Trychologic Łupież',
        'https://static.gemini.pl/assets/produkty/9074768/min6/biovax-trychologic-lupiez-szampon-do-wlosow-i-skory-glowy-200-ml-16893342621.png',
        25.49,
        75,
        'Biovax Trychologic Łupież to zaawansowany szampon do włosów i skóry głowy, zaprojektowany specjalnie w celu skutecznego zwalczania problemu łupieżu.',
        3, 9),
       ('Biovax', 'Trychologic Przesuszenie i Łamliwość',
        'https://static.gemini.pl/assets/produkty/9074855/min6/biovax-trychologic-przesuszenie-i-lamliwosc-szampon-do-wlosow-i-skory-glowy-200-ml-16893351631.png',
        24.99,
        75,
        'Szampon do włosów i skóry głowy Biovax Trychologic Przesuszenie i Łamliwość to innowacyjny produkt, który skutecznie zadba o kondycję Twoich włosów i skóry głowy.',
        3, 9),
       ('Phyto', 'Purple',
        'https://static.gemini.pl/assets/produkty/9074649/min6/phyto-purple-szampon-no-yellow-250-ml-16957107711.png',
        15.99,
        75,
        'Szampon Phyto Purple No Yellow delikatnie oczyszcza zniszczone koloryzacją włosy oraz podkreśla ich chłodny odcień już od pierwszego użycia.',
        3, 9),
       ('Oillan Baby', 'Ultradelikatny szampon',
        'https://static.gemini.pl/assets/produkty/9074200/min6/oillan-baby-ultradelikatny-szampon-od-1-dnia-zycia-200-ml-16819917621.png',
        25.99,
        75,
        'Ultradelikatny szampon Oillan Baby łagodnie myje włosy oraz skórę głowy. Nie szczypie w oczy, dzięki czemu doskonale sprawdzi się jako pierwszy produkt dla niemowląt i małych dzieci.',
        3, 9),
       ('Ziaja', 'Jeju',
        'https://static.gemini.pl/assets/produkty/9055363/min6/ziaja-jeju-szampon-do-wlosow-i-skory-glowy-300-ml-16641744091.jpg',
        10.39,
        75,
        'Szampon Ziaja Jeju do włosów i skóry głowy nawilża i oczyszcza. Zawarty w szamponie wyciąg z czystka zapobiega przetłuszczaniu się włosów.',
        3, 9),
       ('HiPP', 'Babysanft Sensitive',
        'https://static.gemini.pl/assets/produkty/0104117/min6/hipp-babysanft-sensitive-plyn-do-kapieli-od-1-dnia-zycia-350-ml-17000424711.png',
        22.59,
        75,
        'Pielęgnacyjny płyn do kąpieli HiPP Babysanft Sensitive może być stosowany u dzieci i niemowląt od dnia narodzin.',
        3, 8),
       ('Ziaja', 'Ziajka',
        'https://static.gemini.pl/assets/produkty/0014225/min6/ziajka-magiczny-plyn-do-kapieli-dla-dzieci-hokus-pokus-kolorowa-kapiel-od-12-miesiaca-400-ml-16805047191.png',
        14.19,
        75,
        'Magiczny płyn zmienia barwę w wodzie. Delikatnie, ale skutecznie myje skórę. Nie narusza warstwy ochronnej naskórka. ',
        3, 8),
       ('Luksja', 'Silk Care',
        'https://static.gemini.pl/assets/produkty/0104229/min6/luksja-silk-care-kremowy-plyn-do-kapieli-smakowita-jagodowa-babeczka-900-ml-16913952771.png',
        11.99,
        75,
        'Kremowy płyn do kąpieli Luksja Silk Care o zapachu jagodowej babeczki rozpieści Twoje ciało i zmysły pozostawiając po sobie miękką i gładką skórę.',
        3, 8),
       ('Ziaja', 'Kozie Mleko',
        'https://static.gemini.pl/assets/produkty/0070294/min6/ziaja-kozie-mleko-plyn-do-kapieli-mlecznej-500-ml-16802649621.png',
        12.59,
        75,
        'Mleczny płyn do kąpieli bez siarczanów i zasadowego mydła posiada neutralne pH dla skóry.',
        3, 8),
       ('On Line', 'Kremowy płyn i żel',
        'https://static.gemini.pl/assets/produkty/0087982/min6/on-line-kremowy-plyn-i-zel-do-kapieli-2w1-freshness-980-ml-16865662491.jpg',
        13.69,
        75,
        'Kremowy płyn i żel do kąpieli On Line Freshness 2w1 delikatnie oczyszcza skórę, a także dostarcza niezbędnych składników odżywczych i doskonale ją chroni.',
        3, 8),
       ('La Roche-Posay', 'Lipikar AP+',
        'https://static.gemini.pl/assets/produkty/9054428/min6/la-roche-posay-lipikar-ap-olejek-myjacy-uzupelniajacy-poziom-lipidow-przeciw-podraznieniom-skory-750-ml-16837947961.png',
        77.19,
        75,
        'Olejek myjący, uzupełniający poziom lipidów Lipikar Oil AP+ przeznaczony jest do codziennego stosowania pod prysznic i do kąpieli.',
        3, 8),
       ('Allerco', 'Baby Emolienty',
        'https://static.gemini.pl/assets/produkty/0094210/min6/allerco-baby-emolienty-lagodzaca-emulsja-do-kapieli-400-ml-16522536141.png',
        25.49,
        75,
        'Łagodząca emulsja do kąpieli Allerco Baby Emolienty zapewnia delikatnej i wrażliwej skórze dzieci i niemowląt wyraźne nawilżenie oraz dba o jej komfort i równowagę podczas kąpieli.',
        3, 8),
       ('Eloderm', 'Emulsja do kąpieli',
        'https://static.gemini.pl/assets/produkty/0081225/min6/eloderm-emulsja-do-kapieli-od-urodzenia-400-ml-17025582621.png',
        15.99,
        75,
        'Emulsja do kąpieli o podwójnym działaniu: jednocześnie myje i pielęgnuje skórę. Posiada bogatą formułę stworzoną na bazie emolientów i olejów. Likwiduje napięcie, szorstkość i suchość skóry.',
        3, 8),
       ('CeraVe', 'Krem do twarzy SPF 30',
        'https://static.gemini.pl/assets/produkty/0103809/min6/cerave-nawilzajacy-krem-do-twarzy-spf-30-52-ml-16913919621.png',
        59.39,
        75,
        'Krem nawilżający do twarzy Cerave do doskonały kosmetyk wspierający odbudowę naturalnej bariery ochronnej skóry.',
        3, 7),
       ('CeraVe', 'Żel do twarzy przeciw niedoskonałościom',
        'https://static.gemini.pl/assets/produkty/0095939/min6/cerave-zel-do-twarzy-przeciw-niedoskonalosciom-40-ml-16615185101.jpg',
        55.19,
        75,
        'CeraVe to żel do pielęgnacji skóry twarzy przeciw niedoskonałościom. Kosmetyk niweluje przebarwienia skórne i powstałe wypryski, odblokowuje pory oraz łagodzi podrażnienia skórne.',
        3, 7),
       ('CeraVe', 'Balsam nawilżający do twarzy i ciała',
        'https://static.gemini.pl/assets/produkty/0073523/min6/cerave-balsam-nawilzajacy-do-twarzy-i-ciala-z-ceramidami-skora-sucha-i-bardzo-sucha-454-g-16494072131.jpg',
        66.99,
        75,
        'Balsam nawilżający do twarzy i ciała z ceramidami CeraVe został stworzony z myślą o skórze suchej i bardzo suchej.',
        3, 7),
       ('CeraVe', 'Nawilżający krem-pianka',
        'https://static.gemini.pl/assets/produkty/9059432/min6/cerave-nawilzajacy-krem-pianka-do-mycia-twarzy-skora-normalna-i-sucha-236-ml-16189896151.jpg',
        44.09,
        75,
        'Nawilżający krem-pianka do mycia twarzy od CeraVe został opracowany z udziałem dermatologów z myślą o pielęgnacji skóry suchej i normalnej.',
        3, 7),
       ('CeraVe', 'Krem odbudowujący pod oczy',
        'https://static.gemini.pl/assets/produkty/0070968/min6/cerave-krem-odbudowujacy-pod-oczy-skora-normalna-i-sucha-14ml-15925035401.jpg',
        44.09,
        75,
        'Krem odbudowujący pod oczy do skóry normalnej i suchej marki CeraVe to produkt, który może być stosowany na każdy typ skóry.',
        3, 7),
       ('La Roche-Posay', 'Lipikar Baume AP+M',
        'https://static.gemini.pl/assets/produkty/0083572/min6/la-roche-posay-lipikar-baume-ap-m-balsam-do-ciala-skora-sucha-i-atopowa-od-urodzenia-400-ml-16656636081.jpg',
        15.99,
        75,
        'La Roche-Posay Lipikar Baume AP+M to regenerujący balsam do ciała i twarzy stworzony z myślą o pielęgnacji skóry wrażliwej, podrażnionej, suchej i skrajnie suchej, z tendencją do swędzenia.',
        3, 7),
       ('La Roche-Posay', 'Cicaplast Baume B5+',
        'https://static.gemini.pl/assets/produkty/0095933/min6/la-roche-posay-cicaplast-baume-b5-kojacy-balsam-regenerujacy-100-ml-16698006511.jpg',
        56.19,
        75,
        'La Roche-Posay Cicaplast Baume B5+ to silnie regenerujący balsam kojący do twarzy i ciała, przeznaczony dla niemowląt, dzieci i dorosłych.',
        3, 7),
       ('La Roche-Posay', 'Toleriane Sensitive Riche',
        'https://static.gemini.pl/assets/produkty/9051470/min6/la-roche-posay-toleriane-sensitive-riche-nawilzajaca-pielegnacja-dla-skory-wrazliwej-40ml-15925045191.jpg',
        57.49,
        75,
        'Nawilżająca pielęgnacja prebiotyczna kojąca skórę oraz wzmacniająca jej funkcje ochronne. Gliceryna pomaga nawilżyć skórę nawet do 48 godzin.',
        3, 7),
       ('La Roche-Posay', 'Toleriane Dermallergo',
        'https://static.gemini.pl/assets/produkty/9068381/min6/la-roche-posay-toleriane-dermallergo-krem-do-twarzy-na-noc-regenerujaca-pielegnacja-nawilzajaca-40-ml-16499259161.jpg',
        92.19,
        75,
        'Krem do twarzy na noc La Roche-Posay Toleriane Dermallergo to regenerująca pielęgnacja nawilżająca na noc dla skóry skłonnej do alergii i wyjątkowo wrażliwej.',
        3, 7)

