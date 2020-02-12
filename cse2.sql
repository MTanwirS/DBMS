CREATE TABLE branch(
branchname VARCHAR2(20),
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
customername varchar2(10),
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
primary key(customername),
foreign key(customername) references customer(customername)
);

create table loan(
loannumber number(10,2),
branchname varchar2(20),
amount number(10,2),
primary key(loannumber)
);

INSERT INTO branch VALUES ('hanmthnagar','bangalore',10000000);
INSERT INTO branch VALUES ('jayanagar','bangalore',20000000);
INSERT INTO branch VALUES ('mgroad','bangalore',30000000);
INSERT INTO branch VALUES ('mhalaksmilyt','bangalore',40000000);
INSERT INTO branch VALUES ('mysorerd','bangalore',50000000);
