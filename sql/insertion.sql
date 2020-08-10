INSERT INTO users (first_name, last_name, age, civil)
VALUES ('Jean', 'Moulin', 1, 'Homme');
INSERT INTO users (first_name, last_name, age, civil)
VALUES ('Marine', 'Gautier', 10, 'Femme');
INSERT INTO users (first_name, last_name, age, civil)
VALUES ('Carine', 'Tellier', 100, 'Femme');
INSERT INTO users (first_name, last_name, age, civil)
VALUES ('Marc', 'Jolier', 1000, 'Homme');
INSERT INTO users (first_name, last_name, age, civil)
VALUES ('Didier', 'Riou', 1234567890, 'Homme');

INSERT INTO products (price, title)
VALUES (29.99, 'chapeau');
INSERT INTO products (price, title)
VALUES (9.99, 'chaussette');
INSERT INTO products (price, title)
VALUES (159, 'manteau');
INSERT INTO products (price, title)
VALUES (15.45, 'poster');
INSERT INTO products (price, title)
VALUES (89.99, 'sweat');

INSERT INTO `order` (id, user_id, date)
VALUES (1, (SELECT id FROM users WHERE first_name='Jean'), NOW() );
INSERT INTO `order` (id, user_id, date)
VALUES (2, (SELECT id FROM users WHERE first_name='Jean'), NOW() );
INSERT INTO `order` (id, user_id, date)
VALUES (3, (SELECT id FROM users WHERE first_name='Carine'), NOW() );
INSERT INTO `order` (id, user_id, date)
VALUES (4, (SELECT id FROM users WHERE first_name='Marine'), NOW() );
INSERT INTO `order` (id, user_id, date)
VALUES (5, (SELECT id FROM users WHERE first_name='Carine'), NOW() );

INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (1, ( SELECT id FROM products WHERE title='chapeau'), 29.99, 1 );
INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (1, ( SELECT id FROM products WHERE title='poster'), 15.45, 2 );
INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (2, (SELECT id FROM products WHERE title='poster'), 15.45, 1 );
INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (3, (SELECT id FROM products WHERE title='sweat'), 89.99, 1 );
INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (4, (SELECT id FROM products WHERE title='poster'), 15.45, 1 );
INSERT INTO order_line (order_id, product_id, price, quantity)
VALUES (5, (SELECT id FROM products WHERE title='chaussette'), 9.99, 1 );
