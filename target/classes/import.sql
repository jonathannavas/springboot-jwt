INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Jonathan', 'Navas', 'jonathan.navas9@hotmail.com', '2017-08-01','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('John', 'Doe', 'john.doe@gmail.com', '2017-08-02','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Linus', 'Torvalds', 'linus.torvalds@gmail.com', '2017-08-03','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Jane', 'Doe', 'jane.doe@gmail.com', '2017-08-04','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Rasmus', 'Lerdorf', 'rasmus.lerdorf@gmail.com', '2017-08-05','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Erich', 'Gamma', 'erich.gamma@gmail.com', '2017-08-06','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Richard', 'Helm', 'richard.helm@gmail.com', '2017-08-07','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Ralph', 'Johnson', 'ralph.johnson@gmail.com', '2017-08-08','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('John', 'Vlissides', 'john.vlissides@gmail.com', '2017-08-09','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('James', 'Gosling', 'james.gosling@gmail.com', '2017-08-010','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Bruce', 'Lee', 'bruce.lee@gmail.com', '2017-08-11','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Johnny', 'Doe', 'johnny.doe@gmail.com', '2017-08-12','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('John', 'Roe', 'john.roe@gmail.com', '2017-08-13','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Jane', 'Roe', 'jane.roe@gmail.com', '2017-08-14','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Richard', 'Doe', 'richard.doe@gmail.com', '2017-08-15','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Janie', 'Doe', 'janie.doe@gmail.com', '2017-08-16','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Phillip', 'Webb', 'phillip.webb@gmail.com', '2017-08-17','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Stephane', 'Nicoll', 'stephane.nicoll@gmail.com', '2017-08-18','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Sam', 'Brannen', 'sam.brannen@gmail.com', '2017-08-19','');  
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Juergen', 'Hoeller', 'juergen.Hoeller@gmail.com', '2017-08-20',''); 
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Janie', 'Roe', 'janie.roe@gmail.com', '2017-08-21','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('John', 'Smith', 'john.smith@gmail.com', '2017-08-22','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Joe', 'Bloggs', 'joe.bloggs@gmail.com', '2017-08-23','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('John', 'Stiles', 'john.stiles@gmail.com', '2017-08-24','');
INSERT INTO clientes (nombre, apellido, email, create_at,foto) VALUES('Richard', 'Roe', 'stiles.roe@gmail.com', '2017-08-25','');

/* Completar tabla de productos */

INSERT INTO productos (nombre, precio, create_at)  VALUES ('Redmi note 7', 180,NOW());
INSERT INTO productos (nombre, precio, create_at)  VALUES ('Redmi note 8', 210,NOW());
INSERT INTO productos (nombre, precio, create_at)  VALUES ('Laptop hp 4530s', 400,NOW());
INSERT INTO productos (nombre, precio, create_at)  VALUES ('Redmi note 9s', 280,NOW());
INSERT INTO productos (nombre, precio, create_at)  VALUES ('Iphone x', 580,NOW());
INSERT INTO productos (nombre, precio, create_at)  VALUES ('Tv Riviera Smart Tv', 450,NOW());

/* Generar facturas por defecto al iniciar la app*/

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Compra de dispositivos moviles', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2,1,4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1,1,5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3,1,2);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Compra de tecnologia', 'Promociones del mes de Diciembre', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2,2,3);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(5,2,6);

/* Crear usuarios con sus roles */

INSERT INTO users (username, password, enabled) VALUES ('jonathan','$2a$10$ajJO6ztU1y2mjZlxVn5syeddIVh59MTzbO2vNQgHu06tBMoVqAWoC',1);
INSERT INTO users (username, password, enabled) VALUES ('admin','$2a$10$ueMRAk00YV3q1ZER7RujXufBmic2wVpNfPxDks1cJUEKvy/lAGuV6',1);

INSERT INTO authorities (user_id, authority) VALUES (1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_ADMIN');

