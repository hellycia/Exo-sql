DROP TABLE IF EXISTS order_line;
DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products;
CREATE TABLE users (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar(255),
    age int(1),
    civil varchar(255)
    );

CREATE TABLE products (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    price float,
    title varchar(255)
    );


CREATE TABLE `order` (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int,
    date datetime,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
    );


CREATE TABLE order_line (
    order_id int,
    product_id int,
    price float,
    quantity int,
    FOREIGN KEY (order_id) REFERENCES `order`(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
    );
