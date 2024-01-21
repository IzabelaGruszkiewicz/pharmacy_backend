INSERT INTO pharmacy (name, location, opening_hour, closing_hour, phone_number, x, y)
VALUES ('Apteka Leśna', 'Leśna 1', '08:00', '20:00', '123456789', 50.059563, 19.9439067),
       ('Apteka Słoneczna', 'Słoneczna 5', '09:00', '21:00', '987654321', 50.0582656,19.9321151),
       ('Apteka Podlasie', 'Podlaska 10', '07:30', '19:30', '111222333', 50.0673436,19.9233421);

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
VALUES ('Apap', 'Tabletki 12 sztuk',
        'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg',
        15.99,
        100, 'Lek przeciwgorączkowy i przeciwbólowy Apap 500 mg 12 tabletek przeznaczony jest dla dorosłych i młodzieży po 12 roku życia.
        Apap wskazany jest do stosowania w przypadku gorączki', 1, 1),
       ('Metafen', 'Tabletki rozkurczowe',
        'https://static.gemini.pl/assets/produkty/9066392/min6/metafen-rozkurczowy-40-mg-20-tabletek-16631538091.jpg',
        13.20, 82,
        'Metafen 40 mg to lek rozkurczowy zawierający substancję czynną, którą jest drotaweryna, pochodna papaweryny. Działa rozkurczowo na mięśnie gładkie, czyli wpływa na mięśniówkę gładką niezależnie od unerwienia.',
        1, 1),
       ('Nurofen', '12 tabletek powlekalnych',
        'https://static.gemini.pl/assets/produkty/0012421/min6/nurofen-200-mg-12-tabletek-powlekanych-16565859111.jpg',
        9.60, 12,
        'Nurofen 200 mg 4 to lek wskazany do doraźnego stosowania w bólu o nasileniu słabym do umiarkowanego oraz w gorączce. Tabletki powlekane z ibuprofenem są odpowiednie do podawania dorosłym oraz dzieciom już od 6 roku życia.',
        1, 1),
       ('Pyraligina', 'Produkt leczniczy',
        'https://static.gemini.pl/assets/produkty/0062934/min6/pyralgina-500-mg-20-tabletek-16832715821.jpg', 9.49,
        32,
        'Pyralgina 500 mg to nieopioidowy lek o działaniu przeciwbólowym, przeciwgorączkowym i rozkurczowym na mięśnie gładkie. Produkt wskazany jest do stosowania w przypadku występowania bólu różnego pochodzenia o dużym nasileniu oraz gorączki.',
        1, 1),
       ('Ibum', 'Express Forte',
        'https://static.gemini.pl/assets/produkty/0042867/min6/ibum-express-forte-400-mg-24-kapsulki-miekkie-16766196621.png',
        15.49,
        32,
        'Ibum Express Forte to lek w postaci zielonych, łatwych do połknięcia kapsułek miękkich. Dzięki dawce ibuprofenu równiej 400 mg silnie działa na ból.',
        1, 1),
       ('Aspiryna', 'Tabletki',
        'https://cdn2.aptekapuls.pl/3251-large_default/aspirin-pro-500-mg-20-tabletek-powlekanych.jpg',
        8.50, 75,
        'Aspirin Pro firmy Bayer to lek o działaniu przeciwbólowym, przeciwgorączkowym i przeciwzapalnym. Każda tabletka zawiera 500 mg kwasu acetylosalicylowego zamkniętego w tabletce powlekanej z musującym rdzeniem.',
        1, 1),
       ('Paracetamol', 'Tabletki 10 sztuk', 'https://azcdn.doz.pl/image/d/product/902114ac-scale-350x350.jpg',
        12.99, 100,
        'Paracetamol Biofarm 500 mg to lek w postaci tabletek dla dorosłych i dzieci powyżej 6 roku życia. Substancją czynną leku jest paracetamol - 500 mg w każdej tabletce. Działa przeciwbólowo i przeciwgorączkowo',
        1, 1),
       ('Pyraligina', 'Produkt leczniczy',
        'https://static.gemini.pl/assets/produkty/0000132/min6/apap-500-mg-24-tabletki-powlekane-16569186271.jpg', 9.49,
        32,
        'Pyralgina 500 mg to nieopioidowy lek o działaniu przeciwbólowym, przeciwgorączkowym i rozkurczowym na mięśnie gładkie. Produkt wskazany jest do stosowania w przypadku występowania bólu różnego pochodzenia o dużym nasileniu oraz gorączki.',
        1, 1),
       ('Ibuprofen', 'Tabletki 20 sztuk',
        'https://static.gemini.pl/assets/produkty/0019791/min6/ibuprofen-aflofarm-400-mg-20-tabletek-drazowanych-16898430381.jpg',
        19.99, 50, 'Opis produktu bla bla bla test', 1, 1),
       ('Aspiryna', 'Tabletki',
        'https://cdn2.aptekapuls.pl/3251-large_default/aspirin-pro-500-mg-20-tabletek-powlekanych.jpg',
        8.50, 75,
        'Aspirin Pro firmy Bayer to lek o działaniu przeciwbólowym, przeciwgorączkowym i przeciwzapalnym. Każda tabletka zawiera 500 mg kwasu acetylosalicylowego zamkniętego w tabletce powlekanej z musującym rdzeniem.',
        1, 1),
       ('Paracetamol', 'Tabletki 10 sztuk', 'https://azcdn.doz.pl/image/d/product/902114ac-scale-350x350.jpg',
        12.99, 100,
        'Paracetamol Biofarm 500 mg to lek w postaci tabletek dla dorosłych i dzieci powyżej 6 roku życia. Substancją czynną leku jest paracetamol - 500 mg w każdej tabletce. Działa przeciwbólowo i przeciwgorączkowo',
        1, 1),
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
       ('Cetaphil', 'Balsam nawilżający', 'https://azcdn.doz.pl/image/d/product/ca9344ce-scale-350x350.jpg',
        62.99, 21, 'Opis produktu bla bla bla test', 3, 8),
       ('Orofar Max', 'smak miętowy, 30 pastylek twardych',
        'https://static.gemini.pl/assets/produkty/0013489/min6/orofar-max-2-mg-1-mg-smak-mietowy-30-pastylek-twardych-16381770171.jpg',
        19.00, 42,
        'Orofar Max to lek bez recepty w postaci twardych pastylek do ssania o miętowym smaku. Preparat wskazany jest do stosowania w leczeniu bólu gardła i infekcji jamy ustnej.',
        1, 3),
       ('Vicks AntiGrip Max', 'Granulat do sporządzania roztworu doustnego',
        'https://static.gemini.pl/assets/produkty/0035681/min6/vicks-antigrip-max-1000-mg-16-mg-4-mg-granulat-do-sporzadzania-roztworu-doustnego-10-saszetek-16484691141.jpg',
        18.90, 32, 'Vicks AntiGrip Max jest lekiem w postaci granulatu do sporządzania roztworu doustnego. ',
        1, 3),
       ('Coldrex MaxGrip', 'Smak cytrynowy, 14 saszetek',
        'https://static.gemini.pl/assets/produkty/9071113/min6/coldrex-maxgrip-1000-mg-10-mg-40-mg-smak-cytrynowy-14-saszetek-16686774271.jpg',
        25.90, 32,
        'Coldrex MaxGrip to lek o działąniu przeciwbólowym, przeciwgorączkowym oraz obkurczającym naczynia krwionośne błony śluzowej nosa i zmniejszającym przekrwienie, w efekcie prowadząc do udrożnienia nosa i zatok',
        1, 3),
       ('Herbapect', 'Syrop',
        'https://static.gemini.pl/assets/produkty/0018469/min6/herbapect-498mg-348mg-87mg-5ml-syrop-240g-15925102731.jpg',
        12.34, 98,
        'Syrop Herbapect to lek polecany w zwalczaniu ostrych i przewlekłych chorób górnych dróg oddechowych.',
        1, 3),
       ('Theraflu', 'Extra Grip',
        'https://static.gemini.pl/assets/produkty/0016349/min6/theraflu-extra-grip-650-mg-10-mg-20-mg-proszek-do-sporzadzania-roztworu-doustnego-14-saszetek-16910476481.png',
        31.00, 76,
        'Theraflu ExtraGrip 14 saszetek to lek stosowany w leczeniu objawów przeziębienia i grypy u dorosłych i dzieci powyżej 12 roku życia. Posiada postać proszku przeznaczonego do sporządzania roztworu doustnego o cytrynowym aromacie.',
        1, 3),
       ('Supremin', 'Syrop o działaniu przeciwkaszlowym',
        'https://static.gemini.pl/assets/produkty/0002016/min6/supremin-4-mg-5-ml-syrop-o-dzialaniu-przeciwkaszlowym-200-ml-17024604631.png',
        18.90, 41,
        'Supremin jest to produkt leczniczy przeciwkaszlowy, wskazany do stosowania w ostrym, suchym kaszlu.',
        1, 3),
       ('Strepsils', '36 pastylek twardych',
        'https://static.gemini.pl/assets/produkty/0016885/min6/strepsils-z-miodem-i-cytryna-1-2-mg-0-6-mg-36-pastylek-twardych-16941690651.jpg',
        24.20, 12,
        'Lek Strepsils z miodem i cytryną nawilża podrażnioną błonę śluzową, przynosząc szybką ulgę w bólu gardła. Lek stosowany w stanach zapalnych gardła i jamy ustnej działa przeciwbakteryjnie i przeciwwirusowo.',
        1, 3),
       ('Fiorda', '30 pastylek do ssania',
        'https://static.gemini.pl/assets/produkty/0070704/min6/fiorda-smak-malinowy-30-pastylek-do-ssania-16645398081.jpg',
        12.99, 4,
        'Fiorda o smaku malinowym to suplement diety, którego formuła opiera się na składnikach roślinnych – wyciągach z porostu islandzkiego, dzikiej róży i malwy czarnej.',
        1, 3),
       ('Chlorchinaldin', '20 tabletek do ssania',
        'https://static.gemini.pl/assets/produkty/0000402/min6/chlorchinaldin-vp-2-mg-20-tabletek-do-ssania-16569261091.jpg',
        13.00, 21,
        'Chlorchinaldin VP to lek antyseptyczny na infekcje jamy ustnej i gardła. Wskazany jest w zakażeniach bakteryjnych i grzybiczych w obrębie dziąseł, jamy ustnej i gardła, w tym także w grzybicy poantybiotykowej.',
        1, 3),
       ('Allegra', '10 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/0016072/min6/allegra-120-mg-10-tabletek-powlekanych-16795781651.jpg',
        12.90, 32,
        'Allegra to nowoczesny lek antyhistaminowy w formie tabletek na alergię, który znosi wszystkie uciążliwe objawy zarówno ze strony nosa, jak i oczu.',
        1, 2),
       ('Dasergin', '10 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/9068283/min6/dasergin-5-mg-10-tabletek-powlekanych-16802421761.png',
        4.50, 21,
        'Dasergin to produkt leczniczy w formie tabletek powlekanych zawierających desloratadynę. Związek ten jest lekiem przeciwhistaminowym nowej generacji, który nie wywołuje senności.',
        1, 2),
       ('Recotin', 'Żel, po ukąszeniach owadów',
        'https://static.gemini.pl/assets/produkty/0086149-KD/min6/recotin-zel-po-ukaszeniach-owadow-20-ml-krotka-data-16766201241.png',
        5.90, 44,
        'Recotin żel przeznaczony jest do stosowania miejscowego w celu złagodzenia podrażnień występujących po ukąszeniach owadów.',
        1, 2),
       ('Allertec Effect', '10 tabletek',
        'https://static.gemini.pl/assets/produkty/9072604/min6/allertec-effect-20-mg-10-tabletek-16835331701.jpg',
        18.90, 11,
        'Allertec Effect 20 mg to lek przeznaczony dla osób dorosłych oraz młodzieży powyżej 12. roku życia do stosowania w objawowym leczeniu sezonowego i całorocznego alergicznego zapalenia błony śluzowej nosa i spojówek, a także pokrzywki. ',
        1, 2),
       ('Fenistil ', 'Żel',
        'https://static.gemini.pl/assets/produkty/0001329/min6/fenistil-1-mg-g-zel-30-g-16903567001.png',
        22.50, 2,
        'Fenistil żel jest lekiem w postaci żelu do stosowania na skórę. Jego substancją czynną jest dimetyndenu maleinian, który hamuje działanie histaminy.',
        1, 2),
       ('Maxicortan', 'Krem',
        'https://static.gemini.pl/assets/produkty/0078358/min6/maxicortan-10-mg-g-krem-15-g-16812037061.png',
        16.00, 35,
        'Lek w postaci kremu jest przeznaczony do stosowania miejscowego na skórę. Krem zawiera substancję czynną (octan hydrokortyzonu).',
        1, 2),
       ('Lirra Gem', '7 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/0020525/min6/lirra-gem-5-mg-7-tabletek-powlekanych-15961782101.jpg',
        7.99, 32,
        'Lirra Gem to lek przeciwalergiczny w postaci tabletek powlekanych, który stosuje się w leczeniu objawów związanych z alergicznym zapaleniem błony śluzowej nosa oraz pokrzywką.',
        1, 2),
       ('Plusssz', 'Elektrolity ',
        'https://static.gemini.pl/assets/produkty/9058463/min6/plusssz-elektrolity-100-multiwitamina-smak-ananas-mango-24-tabletki-musujace-16135560121.jpg',
        11.50, 12,
        'Plusssz Elektrolity + 100% Multiwitamina to suplement diety zawierający specjalny zestaw składników mineralnych (sód, potas, magnez, wapń i chlor).',
        2, 4),
       ('Elektrolity', '7 saszetek',
        'https://static.gemini.pl/assets/produkty/0065292/min6/elektrolity-smak-pomaranczowy-7-saszetek-16910509971.png',
        14.50, 34,
        'Rekomendowane przez Stoperan Elektrolity w proszku o smaku pomarańczowym to żywność specjalnego przeznaczenia medycznego do postepowania dietetycznego w biegunce oraz stanach odwodnienia organizmu.',
        2, 4),
       ('Plusssz', 'Elektrolity Senior ',
        'https://static.gemini.pl/assets/produkty/9062485/min6/plusssz-elektrolity-senior-100-complex-smak-malinowo-cytrynowy-24-tabletki-musujace-16251414121.jpg',
        11.39, 12,
        'Plusssz Elektrolity Senior to suplement diety w postaci tabletek musujących opracowany z myślą o odpowiednim nawodnieniu osób w podeszłym wieku.',
        2, 4),
       ('Plusssz', 'Elektrolity + 100% Multiwitamina',
        'https://static.gemini.pl/assets/produkty/0101078/min6/plusssz-elektrolity-100-multiwitamina-24-tabletki-musujace-100-magnez-forte-b-complex-20-tabletek-musujacych-16843029621.png',
        11.99, 41,
        'Plusssz Elektrolity + 100% Multiwitamina to suplement diety zawierający specjalny zestaw składników mineralnych.',
        2, 4),
       ('Zdrovit Litorsal', '24 tabletki musujące',
        'https://static.gemini.pl/assets/produkty/0098241/min6/zdrovit-litorsal-senior-smak-pomaranczowy-24-tabletki-musujace-16756812121.png',
        13.50, 21,
        'Zdrovit Litorsal Senior+ to suplement diety w postaci tabletek musujących przeznaczony dla zdrowych osób dorosłych do 75. roku życia.',
        2, 4),
       ('Elektrolity', '7 saszetek',
        'https://static.gemini.pl/assets/produkty/0065291/min6/elektrolity-smak-truskawkowy-7-saszetek-16910509671.png',
        12.65, 4,
        'Elektrolity rekomendowane przez Stoperan to żywność przeznaczenia medycznego do postępowania dietetycznego w biegunce, której może towarzyszyć odwodnienie',
        2, 4),
       ('K2-Vitum Forte', '60 kapsułek',
        'https://static.gemini.pl/assets/produkty/0051585/min6/k2-vitum-forte-60-kapsulek-15925020531.jpg',
        35.50, 37, 'Witamina K pomaga w utrzymaniu zdrowych kości. ', 2, 6),
       ('Swanson D3', 'Witamina D 4000 IU',
        'https://static.gemini.pl/assets/produkty/9068216/min6/swanson-d3-witamina-d-4000-iu-90-kapsulek-zelowych-16787016621.png',
        18.90, 5,
        'Swanson D3 to suplement diety o wysokiej zawartości witaminy D zamkniętej w kapsułkach z żelatynową otoczką.',
        2, 6),
       ('SEMA Lab Witamina D3', '60 kapsułek miękkich',
        'https://static.gemini.pl/assets/produkty/0092392/min6/sema-lab-witamina-d3-2000-j-m-60-kapsulek-miekkich-16768755621.png',
        9.99, 71,
        'SEMA Lab Witamina D3 2000 j.m. to suplement diety o wysokiej zawartości witaminy D w postaci cholekalcyferolu.',
        2, 6),
       ('Vitaminum B2 Teva', '50 tabletek drażowanych',
        'https://static.gemini.pl/assets/produkty/0014880/min6/vitaminum-b2-teva-3-mg-50-tabletek-drazowanych-17029752621.png',
        10.00, 6, 'Vitaminum B2 Teva 3 mg to produkt leczniczy w formie tabletek powlekanych.', 2, 6),
       ('Vitaminum A Hasco', '50 kapsułek',
        'https://static.gemini.pl/assets/produkty/0014766/min6/vitaminum-a-hasco-2500j-m-50-kapsulek-15925064061.jpg',
        7.49, 12, 'Witamina A odgrywa ważną rolę w prawidłowym funkcjonowaniu nabłonków, skóry i błon śluzowych', 2, 6),
       ('Swanson A', 'Witamina A 10000 IU',
        'https://static.gemini.pl/assets/produkty/0045742/min6/swanson-a-witamina-a-10000-iu-250-kapsulek-zelowych-16934689251.png',
        32.30, 51, 'Swanson A to suplement diety o wysokiej zawartości witaminy A przeznaczony dla osób dorosłych.', 2,
        6),
       ('MyVita Silver', 'Witamina B1 Forte',
        'https://static.gemini.pl/assets/produkty/0083117/min6/myvita-silver-witamina-b1-forte-120-kapsulek-15925049431.jpg',
        55.50, 12,
        'Suplement diety Witamina B1 forte zawiera w jednej dawce 50mg witaminy B1 w opatentowanej formule Quali-B. ',
        2, 6),
       ('Magne B6 Forte', '100 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/0094123/min6/magne-b6-forte-100-mg-10-mg-100-tabletek-powlekanych-16999461641.png',
        31.10, 21, 'Magne B6® Forte to lek w postaci tabletek powlekanych do stosowania w niedoborach magnezu.', 2, 5),
       ('Olimp Potas', '60 tabletek',
        'https://static.gemini.pl/assets/produkty/0018545/min6/olimp-potas-60-tabletek-15925009381.jpg',
        12.60, 3,
        'Suplement diety zawierający potas. Ten makroelement korzystnie wpływa na pracę mięśni - w tym mięśnia sercowego, pomaga utrzymać prawidłowe ciśnienie krwi, a także wpływa na prawidłowe funkcjonowanie układu nerwowego.',
        2, 5),
       ('Katelin + SR', '100 kapsułek o przedłużonym uwalnianiu',
        'https://static.gemini.pl/assets/produkty/0019641/min6/katelin-sr-100-kapsulek-o-przedluzonym-uwalnianiu-15952422171.jpg',
        22.20, 9, 'Potas zawarty w suplemencie diety Katelin + SR pomaga w utrzymaniu prawidłowego ciśnienia krwi.', 2,
        5),
       ('Ascofer', '50 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/0000159/min6/ascofer-200-mg-50-tabletek-powlekanych-16853478801.jpg',
        12.60, 3,
        'Ascofer to lek bez recepty zawierający w 1 tabletce dawkę 200mg żelaza (II) glukonianu, co odpowiada 23,2mg jonów żelaza (II).',
        2, 5),
       ('SEMA Lab Cynk organiczny', '30 tabletek powlekanych',
        'https://static.gemini.pl/assets/produkty/0090911/min6/sema-lab-cynk-organiczny-30-tabletek-powlekanych-16693668291.png',
        7.11, 12, 'SEMA Lab Cynk Organiczny to suplement diety o wysokiej zawartości cynku w postaci cytrynianu.', 2,
        5),
       ('Selen + cynk z witaminami', '30 tabletek',
        'https://static.gemini.pl/assets/produkty/9039422/min6/selen-cynk-z-witaminami-30-tabletek-musujacych-16026579071.jpg',
        12.60, 3, 'Selen + cynk z witaminami to suplement diety, przeznaczony dla osób dorosłych.', 2, 5),
       ('Calperos', '100 kapsułek twardych',
        'https://static.gemini.pl/assets/produkty/0000374/min6/calperos-1000-400-mg-100-kapsulek-twardych-16728330381.jpg',
        49.99, 2, 'Calperos 1000 to lek w postaci kapsułek twardych odpowiedni dla dorosłych.', 2, 5),
       ('Naturell Witamina B Complex Forte', '40 tabletek',
        'https://static.gemini.pl/assets/produkty/0061524/min6/naturell-witamina-b-complex-forte-40-tabletek-16497486151.jpg',
        15.60, 21,
        'Naturell Witamina B Complex Forte to suplement diety w postaci tabletek o wysokiej zawartości witamin z grupy B',
        2, 5),
       ('Actiferol Fe Start', '30 saszetek',
        'https://static.gemini.pl/assets/produkty/9052797/min6/actiferol-fe-start-dla-niemowlat-dzieci-i-doroslych-30-saszetek-17019484001.jpg',
        30.49, 12, 'Actifrol Fe zawiera formę żelaza poddaną mikronizacji i emulgacji.', 2, 5),
       ('Vichy', 'Dercos Anti Dandruff DS',
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
        3, 7);


INSERT INTO pharmacy_product (quantity, pharmacy_id, product_id)
VALUES (50, 1, 1),
       (25, 2, 2),
       (30, 3, 3);

INSERT INTO opinion (content, star, product_id)
VALUES ('Bardzo dobry', 5, 1),
       ('W porządku', 4, 2),
       ('Słabe', 2, 3);


INSERT INTO delivery (name, type, price)
VALUES ('DPD', 'Kurier', 12.00),
       ('Poczta Polska', 'Kurier', 12.00),
       ('InPost', 'Kurier', 12.00),
       ('Odbiór w aptece', 'Odbiór osobisty', 0.00);

INSERT INTO payment (name, type)
VALUES ('Gotówka', 'Płatność u kuriera'),
       ('Karta płatnicza', 'Płatność online'),
       ('Przelewy24', 'Płatność online'),
       ('BLIK', 'Płatność online');
