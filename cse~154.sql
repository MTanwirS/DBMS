create table department(
    deptname varchar2(20),
    deptid varchar2(10),
    primary key(deptid)
    );

create table student(
    usn varchar2(10),
    names varchar2(25),
    age Number(3),
    cgpa decimal(4,2),
    deptid varchar2(10),
    primary key(usn),
    foreign key(deptid) references department(deptid)
    );
    desc department ;
    desc student ;
