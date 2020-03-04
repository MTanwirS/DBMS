create table students(
regno varchar2(10),
names varchar2(20),
major varchar2(5),
bdate date,
PRIMARY KEY (regno)
);

create table course(
courseid number(3),
cname varchar2(15),
dept varchar2(5),
primary key (courseid)
);

create table text(
isbn varchar2(5) primary key,
title varchar2(15),
publisher varchar2(10),
author varchar2(20)
);

create table badoption(
courseid number(3),
sem number(1),
isbn varchar2(5),
primary key(courseid,isbn),
foreign key (courseid) references course(courseid),
foreign key (isbn) references text(isbn)
);

create table enrolls(
regno varchar2(10),
courseid number(3),
sem number(1),
marks number(4,1),
primary key(courseid,regno),
foreign key (courseid) references course(courseid),
foreign key (regno) references students(regno)
);

insert into students values('1DB01IS01','Kiran','ISE','02-JAN-84');
insert into students values('1DB01CS02','Divya','CSE','12-OCT-85');
insert into students values('1DB01ME03','Babu','Mech','23-SEP-82');
insert into students values('1DB01EC04','John','EandC','21-FEB-84');
insert into students values('1DB01CS05','Asha','CSE','07-OCT-79');

insert into course values(11,'DCS','CSE');
insert into course values(22,'ADA','CSE');
insert into course values(33,'CN','EandC');
insert into course values(44,'TD','Mech');
insert into course values(55,'MUP','EandC');

insert into text values(7722,'VB','PHI','Holzner');
insert into text values(1144,'DS with C','Sapna','Nandagopal');
insert into text values(4400,'C prog','PHI','Balaguru');
insert into text values(5566,'CN','PHI','Tenenbaum');
insert into text values(3388,'MP','Tata','BREY');

insert into badoption values(11,3,'7722');
insert into badoption values(22,4,'7722');
insert into badoption values(11,5,'4400');
insert into badoption values(11,8,'5566');
insert into badoption values(55,4,'3388');
insert into badoption values(44,4,'5566');
insert into badoption values(44,7,'3388');

insert into enrolls values('1DB01IS01',22,5,76);
insert into enrolls values('1DB01IS01',11,3,90);
insert into enrolls values('1DB01CS02',33,6,55);
insert into enrolls values('1DB01ME03',22,5,75);
insert into enrolls values('1DB01CS05',44,5,75);

commit ;