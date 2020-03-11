create table author(
authorid number(8),
names varchar2(20),
city varchar2(15),
country varchar2(10),
primary key(authorid));

create table publisher(
publisherid number(8),
names varchar2(20),
city varchar2(15),
country varchar2(10),
primary key(publisherid));

create table bcategory(
categoryid number(8),
description varchar2(30));
alter table bcategory add primary key (categoryid);

create table catalog(
bookid number(10),
title varchar2(20),
authorid number(8),
publisherid number(8),
categoryid number(8),
years number(4),
price number(5),
primary key(bookid),
foreign key (authorid)references author(authorid),
foreign key (publisherid)references publisher(publisherid),
foreign key (categoryid) references bcategory(categoryid));

create table orderdet(
orderno number(10),
bookid number(10),
primary key (orderno,bookid),
foreign key (bookid) references catalog(bookid));
alter table orderdet add quantity number(2);

insert into author values(1001,'Teras Chan','CA','USA');
insert into author values(1002,'Stevens','Zombi','Uganda');
insert into author values(1003,'M Mano','Cair','Canada');
insert into author values(1004,'Karthik B.P.','New York','USA');
insert into author values(1005,'William Stallings','Las Vegas','USA');

insert into publisher values(1,'Pearson','New York','USA');
insert into publisher values(2,'EEE','New South vales','USA');
insert into publisher values(3,'PHI','Delhi','India');
insert into publisher values(4,'Willey','Berlin','Germany');
insert into publisher values(5,'MGH','New York','USA');

insert into bcategory values(1001,'Computer Science');
insert into bcategory values(1002,'Algorithm Design');
insert into bcategory values(1003,'Electronics');
insert into bcategory values(1004,'Programming');
insert into bcategory values(1005,'Operating Systems');

insert into catalog values(11,'Unix System Prg',1001,1,1001,2000,251);
insert into catalog values(12,'Digital Signals',1002,2,1003,2001,425);
insert into catalog values(13,'Logic Design',1003,3,1002,1999,225);
insert into catalog values(14,'Server Prg',1004,4,1004,2001,333);
insert into catalog values(15,'Linux OS',1005,5,1005,2003,326);
insert into catalog values(16,'C++ Bible',1005,5,1001,2000,526);
insert into catalog values(17,'COBOL Handbook',1005,4,1001,2000,658);

insert into orderdet values(1,11,5);
insert into orderdet values(2,12,8);
insert into orderdet values(3,13,15);
insert into orderdet values(4,14,22);
insert into orderdet values(5,15,3);
insert into orderdet values(2,17,10);
 