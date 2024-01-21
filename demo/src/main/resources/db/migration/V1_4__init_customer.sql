CREATE TABLE customer
(
    customer_id   SERIAL       NOT NULL,
    customer_hash VARCHAR(255) NOT NULL,
    full_name     VARCHAR(40)  NOT NULL,
    email         VARCHAR(60)  NOT NULL,
    PRIMARY KEY (customer_id),
    UNIQUE (email)
);