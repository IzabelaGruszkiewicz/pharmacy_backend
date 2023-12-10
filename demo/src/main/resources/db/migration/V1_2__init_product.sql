CREATE TABLE PRODUCT
(
    product_id     SERIAL         NOT NULL,
    name           VARCHAR(60)    NOT NULL,
    price          NUMERIC(10, 2) NOT NULL,
    magazine_stock INT            NOT NULL,
    PRIMARY KEY (product_id)
);