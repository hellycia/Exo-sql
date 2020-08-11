INSERT INTO user (first_name, last_name, age, civil) VALUES
('Jean', 'Moulin', 1, 'Homme'),
('Marine', 'Gautier', 10, 'Femme'),
('Carine', 'Tellier', 100, 'Femme'),
('Marc', 'Jolier', 1000, 'Homme'),
('Didier', 'Riou', 1234567890, 'Homme');

INSERT INTO product (price, title) VALUES
(29.99, 'chapeau'),
(9.99, 'chaussette'),
(159, 'manteau'),
(15.45, 'poster'),
(89.99, 'sweat');

INSERT INTO `order` (id, user_id, date) VALUES
(1, (SELECT id FROM user WHERE first_name='Jean'), NOW() ),
(2, (SELECT id FROM user WHERE first_name='Jean'), NOW() ),
(3, (SELECT id FROM user WHERE first_name='Carine'), NOW() ),
(4, (SELECT id FROM user WHERE first_name='Marine'), NOW() ),
(5, (SELECT id FROM user WHERE first_name='Carine'), NOW() );

INSERT INTO order_line (order_id, product_id, price, quantity) VALUES
(1, ( SELECT id FROM product WHERE title='chapeau'), 29.99, 1 ),
(1, ( SELECT id FROM product WHERE title='poster'), 15.45, 2 ),
(2, (SELECT id FROM product WHERE title='poster'), 15.45, 1 ),
(3, (SELECT id FROM product WHERE title='sweat'), 89.99, 1 ),
(4, (SELECT id FROM product WHERE title='poster'), 15.45, 1 ),
(5, (SELECT id FROM product WHERE title='chaussette'), 9.99, 1 );
