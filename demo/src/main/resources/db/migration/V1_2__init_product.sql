CREATE TABLE PRODUCT
(
    product_id     SERIAL        NOT NULL,
    name           VARCHAR(20)   NOT NULL,
    price          NUMERIC(3, 2) NOT NULL,
    magazine_stock INT           NOT NULL,
    PRIMARY KEY (product_id)
);