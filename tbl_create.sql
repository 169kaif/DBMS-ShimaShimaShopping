CREATE DATABASE sss;
USE sss;

create Table Customer(
    customer_id int primary key not null auto_increment,
    customer_name varchar(50) not null,
    username varchar(50) not null unique,
    password varchar(50) not null,
    phone_number varchar(20),
    address varchar(100)
);

create Table Checkout(
     order_id int primary key not null unique auto_increment,
     customer_orderinfo int not null,
     foreign key (customer_orderinfo) references Customer (customer_id),
     total_price int not null,
     delivery_address varchar(100) not null
);

create Table Bill(
    bill_number varchar(100) primary key not null,
    bill_generated int not null,
    foreign key (bill_generated) references Checkout (order_id),
    customer_name varchar(50) not null,
    total_cost decimal(10,2),
    address varchar(100) not null,
    payment_mode varchar(50) not null
);

create Table Category(
    category_id int primary key not null auto_increment,
    category_name varchar(50) not null unique,
    category_description varchar(100)
);

create Table Cart(
    cart_customer_id int primary key not null,
    foreign key (cart_customer_id) references Customer (customer_id),
    cost int not null
);

create Table products_contained(
    pc_product_id int primary key not null,
    foreign key (pc_product_id) references Cart (cart_customer_id),
    pc_quantity int not null,
    pc_cost_of_product int not null
);

create Table Product(
    product_id int primary key not null auto_increment,
    cquantity int,
    composed_of int,
    foreign key (composed_of) references products_contained (pc_product_id),
    product_name varchar(50) not null,
    product_description varchar(100) not null,
    cost int not null,
    restock_trigger int not null
);

create Table Catalogue(
    cproduct_id int primary key not null,
    eproduct_id int not null,
    foreign key (eproduct_id) references Product (product_id),
    quantity int not null
);

alter Table Catalogue
add index (quantity);

alter Table Product
add foreign key (cquantity) references Catalogue (quantity);

create Table Employee(
    employee_id int primary key not null auto_increment,
    superemployee_id int not null,
    foreign key (superemployee_id) references Employee (employee_id),
    manage_cproduct_id int not null,
    foreign key (manage_cproduct_id) references Catalogue (cproduct_id),
    employee_username varchar(50) not null unique,
    employee_password varchar(50) not null
);

create Table items_contained(
    ic_product_id int primary key not null,
    foreign key (ic_product_id) references Checkout (order_id),
    ic_name varchar(50) not null,
    ic_cost int not null,
    ic_quantity int
);