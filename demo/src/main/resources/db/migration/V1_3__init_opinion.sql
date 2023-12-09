CREATE TABLE opinion
(
    opinion_id SERIAL       NOT NULL,
    content    VARCHAR(255) NOT NULL,
    star       INT          NOT NULL,
    product_id INT          NOT NULL,
    PRIMARY KEY (opinion_id),
    CONSTRAINT fk_opinion_product
        FOREIGN KEY (product_id)
            REFERENCES product (product_id)
);