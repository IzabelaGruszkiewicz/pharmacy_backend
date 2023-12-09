CREATE TABLE PHARMACY
(
    pharmacy_id  SERIAL      NOT NULL,
    name         VARCHAR(20) NOT NULL,
    location     VARCHAR(60) NOT NULL,
    opening_hour VARCHAR(5)  NOT NULL,
    closing_hour VARCHAR(5)  NOT NULL,
    phone_number VARCHAR(9)  NOT NULL,
    PRIMARY KEY (pharmacy_id)
);