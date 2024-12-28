create table governorates (gid int (255) primary key auto_increment, name varchar (255));
create table stores (stid int (255) primary key auto_increment, name varchar (255), address varchar (255));
create table governorate_stores (gid int, stid int, primary key (gid , stid),FOREIGN KEY (gid) REFERENCES governorates(gid),  FOREIGN KEY (stid) REFERENCES stores(stid));
create table suppliers (spid int (255) primary key auto_increment, name varchar (255), email varchar (255), phone int (255), brief_data Text);
create table products (pid int (255) primary key auto_increment, name varchar (255), code int(255), description Text, price int (255), spid int unique,FOREIGN KEY (spid) REFERENCES suppliers(spid));
create table store_products (stid int, pid int, quantity int(255), primary key (stid , pid),FOREIGN KEY (stid) REFERENCES stores(stid),  FOREIGN KEY (pid) REFERENCES products(pid));




SELECT DISTINCT orderNumber from orderdetails where productCode LIKE "S18%" AND priceEach > 100;
SELECT * FROM payments WHERE day(paymentDate) IN (5,6);
SELECT DISTINCT creditLimit FROM customers WHERE country = 'USA' AND phone LIKE '%5555%' ORDER BY creditLimit DESC LIMIT 1 OFFSET 4;