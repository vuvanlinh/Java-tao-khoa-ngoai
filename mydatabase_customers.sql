CREATE TABLE mydatabase.customers
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(40),
    address varchar(255),
    email varchar(255)
);
CREATE TABLE mydatabase.orders
(
    orderid int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    staff varchar(50),
    customer_id int(11),
    CONSTRAINT orders_ibfk_1 FOREIGN KEY (customer_id) REFERENCES mydatabase.customers (id)
);
CREATE INDEX customer_id ON mydatabase.orders (customer_id);
CREATE TABLE mydatabase.roles
(
    role_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    role_name varchar(50)
);
CREATE TABLE mydatabase.userroles
(
    user_id int(11) NOT NULL,
    role_id int(11) NOT NULL,
    CONSTRAINT `PRIMARY` PRIMARY KEY (user_id, role_id),
    CONSTRAINT userroles_ibfk_1 FOREIGN KEY (user_id) REFERENCES mydatabase.users (user_id),
    CONSTRAINT userroles_ibfk_2 FOREIGN KEY (role_id) REFERENCES mydatabase.roles (role_id)
);
CREATE INDEX role_id ON mydatabase.userroles (role_id);
CREATE TABLE mydatabase.users
(
    user_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username varchar(40),
    password varchar(255),
    email varchar(255)
);