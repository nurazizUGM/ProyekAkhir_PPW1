-- Active: 1712602021935@@127.0.0.1@3306@proyek_akhir_s2
CREATE TABLE users (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE category (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE events (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    category_id int(6) NOT NULL,
    created_by int(6),
    name VARCHAR(255) NOT NULL,
    description longtext,
    location VARCHAR(255) NOT NULL,
    quota int(6) NOT NULL,
    event_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    price int(10) NOT NULL,
    image VARCHAR(255) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (id) ON DELETE RESTRICT,
    FOREIGN KEY (created_by) REFERENCES users (id) ON DELETE SET NULL
);

CREATE TABLE payment_methods (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    provider VARCHAR(255) UNIQUE
);

CREATE TABLE orders (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    user_id int(6) NOT NULL,
    event_id int(6) NOT NULL,
    quantity int(6) NOT NULL,
    total_price int(6) NOT NULL,
    payment_method int(6) NOT NULL,
    payment_status enum(
        'PENDING',
        'PAID',
        'CANCELLED'
    ) NOT NULL DEFAULT 'PENDING',
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (event_id) REFERENCES events (id),
    FOREIGN KEY (payment_method) REFERENCES payment_methods (id)
);

CREATE TABLE reviews (
    id int(6) PRIMARY KEY AUTO_INCREMENT,
    order_id int(6) NOT NULL,
    rating int(1),
    description longtext
);