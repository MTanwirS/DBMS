create table dept(
deptno number(10),
dname varchar2(25),
deploc varchar2(30),
primary key(deptno));
create table emp(
empno number(5),
ename varchar2(20),
mail varchar2(25),
mobno number(10),
deptno number(10),
primary key(empno),
foreign key (deptno) references dept (deptno));
insert into dept values(123,'CSE','BMS');
insert into dept values(567,'MECH','BMSa');
insert into dept values(777,'ISE','BMSh');
select * from dept;
insert into emp values(56,'A','A@fgh',8989786,123);
insert into emp values(57,'B','B@fgh',89893447,567);
insert into emp values(58,'C','C@fgh',8989745,777);
select * from emp;