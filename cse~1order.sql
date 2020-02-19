create table customers(
custno number(10),
cname varchar2(20),
city varchar2(15),
primary key(custno)
);

create table orders(
orderno number(12),
odate date,
custno number(10),
orderamt number(8),
primary key(orderno),
foreign key(custno) references customers(custno) 
);

create table items(
itemno number(10),
unitprice number(8,2),
primary key(itemno)
);

create table orderitem(
orderno number(12),
itemno number(10),
qty number(5),
primary key(),
foreign key(),
foreign key()
);

create table warehouse(
);

create table shipment(
);