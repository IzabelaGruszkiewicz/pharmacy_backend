CREATE TABLE pharmacy_product
(
    pharmacy_product_id SERIAL NOT NULL,
    quantity            INT    NOT NULL,
    pharmacy_id         INT    NOT NULL,
    product_id          INT    NOT NULL,
    CONSTRAINT fk_pharmacy_product_pharmacy
        FOREIGN KEY (pharmacy_id)
            REFERENCES pharmacy (pharmacy_id),
    CONSTRAINT fk_pharmacy_product_product
        FOREIGN KEY (product_id)
            REFERENCES product (product_id)
)