CREATE TABLE PHARMACY
(
    pharmacy_id  SERIAL      NOT NULL,
    name         VARCHAR(20) NOT NULL,
    location     VARCHAR(60) NOT NULL,
    opening_hour VARCHAR(5)  NOT NULL,
    closing_hour VARCHAR(5)  NOT NULL,
    phone_number VARCHAR(9)  NOT NULL,
    PRIMARY KEY (pharmacy_id)
);

CREATE TABLE PRODUCT
(
    product_id     SERIAL         NOT NULL,
    name           VARCHAR(60)    NOT NULL,
    price          NUMERIC(10, 2) NOT NULL,
    magazine_stock INT            NOT NULL,
    PRIMARY KEY (product_id)
);

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

CREATE TABLE address
(
    address_id  SERIAL      NOT NULL,
    city        VARCHAR(40) NOT NULL,
    address     VARCHAR(60) NOT NULL,
    postal_code VARCHAR(6)  NOT NULL,
    PRIMARY KEY (address_id)
);

CREATE TABLE customer
(
    customer_id  SERIAL      NOT NULL,
    name         VARCHAR(40) NOT NULL,
    surname      VARCHAR(40) NOT NULL,
    phone_number VARCHAR(9)  NOT NULL,
    email        VARCHAR(60) NOT NULL,
    address_id   INT         NOT NULL,
    PRIMARY KEY (customer_id),
    UNIQUE (email),
    UNIQUE (phone_number),
    CONSTRAINT fk_customer_address
        FOREIGN KEY (address_id)
            REFERENCES address (address_id)
);

CREATE TABLE delivery
(
    delivery_id SERIAL        NOT NULL,
    name        VARCHAR(40)   NOT NULL,
    type        VARCHAR(40)   NOT NULL,
    price       NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (delivery_id)
);

CREATE TABLE payment
(
    payment_id SERIAL      NOT NULL,
    name       VARCHAR(40) NOT NULL,
    type       VARCHAR(40) NOT NULL,
    PRIMARY KEY (payment_id)
);

CREATE TABLE orders
(
    order_id    SERIAL         NOT NULL,
    date_order  DATE           NOT NULL,
    status      VARCHAR(40)    NOT NULL,
    total_price NUMERIC(10, 2) NOT NULL,
    customer_id INT            NOT NULL,
    payment_id  INT            NOT NULL,
    delivery_id INT            NOT NULL,
    PRIMARY KEY (order_id),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id),
    CONSTRAINT fk_order_payment
        FOREIGN KEY (payment_id)
            REFERENCES payment (payment_id),
    CONSTRAINT fk_order_delivery
        FOREIGN KEY (delivery_id)
            REFERENCES delivery (delivery_id)
);

CREATE TABLE pharmacy_product
(
    pharmacy_product_id SERIAL NOT NULL,
    quantity            INT    NOT NULL,
    pharmacy_id         INT    NOT NULL,
    product_id          INT    NOT NULL,
    PRIMARY KEY (pharmacy_product_id),
    CONSTRAINT fk_pharmacy_product_pharmacy
        FOREIGN KEY (pharmacy_id)
            REFERENCES pharmacy (pharmacy_id),
    CONSTRAINT fk_pharmacy_product_product
        FOREIGN KEY (product_id)
            REFERENCES product (product_id)
);

CREATE TABLE product_order
(
    product_order_id SERIAL         NOT NULL,
    amount           INT            NOT NULL,
    price            NUMERIC(10, 2) NOT NULL,
    product_id       INT            NOT NULL,
    order_id         INT            NOT NULL,
    PRIMARY KEY (product_order_id),
    CONSTRAINT fk_product_order_product
        FOREIGN KEY (product_id)
            REFERENCES product (product_id),
    CONSTRAINT fk_product_order_order
        FOREIGN KEY (order_id)
            REFERENCES orders (order_id)

);