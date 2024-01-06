CREATE TABLE PRODUCT
(
    product_id     SERIAL         NOT NULL,
    brand          VARCHAR(60)    NOT NULL,
    name           VARCHAR(60)    NOT NULL,
    price          NUMERIC(10, 2) NOT NULL,
    magazine_stock INT            NOT NULL,
    photo_path     VARCHAR(255)   NOT NULL,
    description    VARCHAR(255)   NOT NULL,
    CATEGORY_ID    INT            NOT NULL,
    SUBCATEGORY_ID INT            NOT NULL,
    PRIMARY KEY (product_id),
    CONSTRAINT fk_product_category
        FOREIGN KEY (CATEGORY_ID)
            REFERENCES category (CATEGORY_ID),
    CONSTRAINT fk_product_subcategory
        FOREIGN KEY (SUBCATEGORY_ID)
            REFERENCES subcategory (SUBCATEGORY_ID)

);