CREATE TABLE delivery
(
    delivery_id   SERIAL        NOT NULL,
    name          VARCHAR(20)   NOT NULL,
    type VARCHAR(40)   NOT NULL,
    price         NUMERIC(3, 2) NOT NULL,
    PRIMARY KEY (delivery_id)
);