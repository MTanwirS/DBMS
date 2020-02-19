create table branch(
branchname varchar2(20),
branchcity VARCHAR2(20),
assets number(10,2),
PRIMARY KEY(branchname)
);

create table accounts(
accno number(10),
branchname varchar2(20),
balance number(10,2),
primary key(accno),
foreign key(branchname) references branch(branchname)
);

create table customer(
customername varchar2(20),
customerstreet varchar2(20),
city varchar2(15),
primary key(customername)  
);

create table depositor(
customername varchar2(20),
accno number(10), 
primary key(customername,accno),
foreign key(customername) references customer(customername),
foreign key(accno) references accounts(accno)
);

create table borrower(
customername varchar2(20),
loannumber number(10,2),
primary key(loannumber),
foreign key(customername) references customer(customername)
);

create table loan(
loannumber number(10,2),
branchname varchar2(20),
amount number(10,2),
primary key(loannumber),
foreign key(branchname) references branch(branchname),
foreign key(loannumber) references borrower(loannumber)
);
commit;

insert into branch values('SBI PD Nagar','Bangalore',200000);
insert into branch values('SBI Rajaji Nagar','Bangalore',500000);
insert into branch values('SBI Jayanagar','Bangalore',660000);
insert into branch values('SBI Vijay Nagar','Bangalore',870000);
insert into branch values('SBI Hosakerehalli','Bangalore',550000);
commit ;

insert into accounts values(1234602,'SBI Hosakerehalli',5000);
insert into accounts values(1234603,'SBI Vijay Nagar',5000);
insert into accounts values(1234604,'SBI Jayanagar',5000);
insert into accounts values(1234605,'SBI Rajaji Nagar',10000);
insert into accounts values(1234503,'SBI Vijay Nagar',40000);
insert into accounts values(1234504,'SBI PD Nagar',4000);
commit;

insert into customer values('Kezar','MG Road','Bangalore');
insert into customer values('Lal Krishna','St MKS Road','Bangalore');
insert into customer values('Rahul','Augsten Road','Bangalore');
insert into customer values('Lallu','VS Road','Bangalore');
insert into customer values('Faizal','Residency Road','Bangalore');
insert into customer values('Rajeev','Dicknsn Road','Bangalore');
commit;

insert into depositor values('Kezar',1234602);
insert into depositor values('Lal Krishna',1234603);
insert into depositor values('Rahul',1234604);
insert into depositor values('Lallu',1234605);
insert into depositor values('Faizal',1234503);
insert into depositor values('Rajeev',1234504);
commit;

insert into borrower values('Kezar',10011);
insert into borrower values('Lal Krishna',10012);
insert into borrower values('Rahul',10013);
insert into borrower values('Lallu',10014);
insert into borrower values('Lal Krishna',10015);
commit;

insert into loan values(10011,'SBI Jayanagar',10000);
insert into loan values(10012,'SBI Vijay Nagar',5000);
insert into loan values(10013,'SBI Hosakerehalli',20000);
insert into loan values(10014,'SBI PD Nagar',15000);
insert into loan values(10015,'SBI Rajaji Nagar',25000);
commit;

