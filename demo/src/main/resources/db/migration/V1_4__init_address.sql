CREATE TABLE address
(
    address_id  SERIAL      NOT NULL,
    city        VARCHAR(40) NOT NULL,
    address     VARCHAR(32) NOT NULL,
    postal_code VARCHAR(6)  NOT NULL,
    PRIMARY KEY (address_id)
);