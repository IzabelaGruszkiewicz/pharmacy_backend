CREATE TABLE payment
(
    payment_id SERIAL      NOT NULL,
    name       VARCHAR(40) NOT NULL,
    type       VARCHAR(40) NOT NULL,
    PRIMARY KEY (payment_id)
);