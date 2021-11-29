CREATE TABLE products (
    product_id  int AUTO_INCREMENT PRIMARY KEY,
    name        varchar(20),
    description varchar(30)
);

CREATE TABLE variants (
    variant_id int AUTO_INCREMENT PRIMARY KEY,
    variant    varchar(50)
);

CREATE TABLE variant_value (
    value_id   int AUTO_INCREMENT PRIMARY KEY,
    variant_id int,
    value      varchar(50)
);

CREATE TABLE product_variants (
    product_variants_id int AUTO_INCREMENT PRIMARY KEY,
    product_id          int,
    productvariantname  varchar(50),
    sku                 varchar(50),
    price               float
);

CREATE TABLE product_details (
    product_detail_id   int AUTO_INCREMENT PRIMARY KEY,
    product_variants_id int,
    value_id            int
);
