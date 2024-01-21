CREATE TABLE address
(
    address_id   SERIAL      NOT NULL,
    city         VARCHAR(40) NOT NULL,
    address      VARCHAR(60) NOT NULL,
    postal_code  VARCHAR(6)  NOT NULL,
    phone_number VARCHAR(9)  NOT NULL,
    customer_id  INT         NOT NULL,
    PRIMARY KEY (address_id),
    UNIQUE (phone_number),
    CONSTRAINT fk_address_customer
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id)
);