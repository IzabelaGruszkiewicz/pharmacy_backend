CREATE TABLE customer
(
    customer_id  SERIAL      NOT NULL,
    name         VARCHAR(20) NOT NULL,
    surname      VARCHAR(40) NOT NULL,
    phone_number VARCHAR(9)  NOT NULL,
    email        VARCHAR(60) NOT NULL,
    PRIMARY KEY (customer_id),
    UNIQUE (email),
    UNIQUE (phone_number)
);