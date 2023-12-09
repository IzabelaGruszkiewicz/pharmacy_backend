CREATE TABLE payment
(
    payment_id SERIAL      NOT NULL,
    name       VARCHAR(20) NOT NULL,
    type       VARCHAR(20) NOT NULL,
    PRIMARY KEY (payment_id)
);