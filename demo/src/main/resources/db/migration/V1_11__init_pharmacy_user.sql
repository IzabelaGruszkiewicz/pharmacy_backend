CREATE TABLE pharmacy_user
(
    user_id   SERIAL       NOT NULL,
    user_name VARCHAR(20)  NOT NULL,
    email     VARCHAR(32)  NOT NULL,
    password  VARCHAR(256) NOT NULL,
    name      VARCHAR(32)  NOT NULL,
    active    BOOLEAN      NOT NULL,
    PRIMARY KEY (user_id),
    UNIQUE (user_name),
    UNIQUE (email)
);

CREATE TABLE pharmacy_role
(
    role_id SERIAL      NOT NULL,
    role    VARCHAR(20) NOT NULL,
    PRIMARY KEY (role_id)
);

CREATE TABLE pharmacy_user_role
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_pharmacy_user_role_user
        FOREIGN KEY (user_id)
            REFERENCES pharmacy_user (user_id),
    CONSTRAINT fk_pharmacy_user_role_role
        FOREIGN KEY (role_id)
            REFERENCES pharmacy_role (role_id)
);

CREATE TABLE FAVOURITES
(
    ID         SERIAL NOT NULL,
    PRODUCT_ID INT    NOT NULL,
    PRIMARY KEY (ID),
    CONSTRAINT FK_FAVOURITES_PRODUCT
        FOREIGN KEY (PRODUCT_ID)
            REFERENCES PRODUCT (PRODUCT_ID)
)
