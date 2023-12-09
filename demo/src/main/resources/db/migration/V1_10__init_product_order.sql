CREATE TABLE product_order
(
    product_order_id SERIAL         NOT NULL,
    amount           INT            NOT NULL,
    price            NUMERIC(10, 2) NOT NULL,
    product_id       INT            NOT NULL,
    order_id         INT            NOT NULL,
    CONSTRAINT fk_product_order_product
        FOREIGN KEY (product_id)
            REFERENCES product (product_id),
    CONSTRAINT fk_product_order_order
        FOREIGN KEY (order_id)
            REFERENCES order (order_id)

);