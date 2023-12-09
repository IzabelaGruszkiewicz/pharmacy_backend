CREATE TABLE address
(
    address_id   SERIAL      NOT NULL,
    city         VARCHAR(40) NOT NULL,
    house_number VARCHAR(4)  NOT NULL,
    flat_number VARCHAR(4),
    street       VARCHAR(40) NOT NULL,
    post_code    VARCHAR(6)  NOT NULL,
    customer_id  INT         NOT NULL,
    PRIMARY KEY (address_id),
    CONSTRAINT fk_address_customer
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id)

);