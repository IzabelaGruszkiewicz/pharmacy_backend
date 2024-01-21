CREATE TABLE orders
(
    order_id    SERIAL         NOT NULL,
    date_order  timestamp      NOT NULL,
    status      VARCHAR(40)    NOT NULL,
    total_price NUMERIC(10, 2) NOT NULL,
    customer_id INT            NOT NULL,
    payment_id  INT            NOT NULL,
    delivery_id INT            NOT NULL,
    PRIMARY KEY (order_id),
    CONSTRAINT fk_order_payment
        FOREIGN KEY (payment_id)
            REFERENCES payment (payment_id),
    CONSTRAINT fk_order_delivery
        FOREIGN KEY (delivery_id)
            REFERENCES delivery (delivery_id),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id)
);