CREATE TABLE IF NOT EXISTS user (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int(1) NOT NULL,
    civil varchar(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS product (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    price float NOT NULL,
    title varchar(255) NOT NULL
    );


CREATE TABLE IF NOT EXISTS `order` (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id int NOT NULL,
    date datetime NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
    );


CREATE TABLE IF NOT EXISTS order_line (
    order_id int NOT NULL,
    product_id int NOT NULL,
    price float NOT NULL,
    quantity int NOT NULL,
    FOREIGN KEY (order_id) REFERENCES `order`(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
    );
