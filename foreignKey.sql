create table cities(
	city_id int(11) primary key auto_increment,
    name varchar(50)
);

create table customers(
	customer_id int(11) primary key auto_increment,
    name varchar(50),
    birthday date,
    city_id int(11),
    constraint fk_customers_cities
    foreign key(city_id)
    references cities(city_id)
);

create table orders(
	order_id int(11)primary key auto_increment,
	customer_id int(11),
    constraint fk_orders_customers
    foreign key(customer_id)
    references customers(customer_id)
);

create table item_types(
	item_type_id int(11) primary key auto_increment,
    name varchar(50)
);

create table items(
	item_id int(11) primary key auto_increment,
    name varchar(50),
    item_type_id int(11),
    constraint fk_items_item_types
    foreign key(item_type_id)
    references item_types(item_type_id)
);

create table orders_items(
	order_id int(11),
    item_id int(11),
    constraint pk_orders_items
    primary key(order_id,item_id),
    
    constraint fk_orders_items_orders
    foreign key(order_id)
    references orders(order_id),
    
	constraint fk_orders_items_items
	foreign key(item_id)
    references items(item_id)
);






