create user  obs identified by obs;
grant connect, resource to obs;

connect  obs/obs

create table users
( userid  number(5)  primary key,
   uname  varchar2(20) not null unique,
   pwd     varchar2(10),
   email   varchar2(30)  unique,
   address varchar2(100),
   phone   varchar2(20)
);



create table books
( isbn   number(10)  primary key,
  title    varchar2(30),
  author  varchar2(50),
  pub     varchar2(10),
  cat      varchar2(5),
  price   number(5)
);


create table orders
( ordid   number(5)  primary key,
   userid  number(5)  references users(userid),
   orddate  date,
   totamt   number(6),
   status    char(1)
);

create table orderitem
( ordid   number(5) references orders(ordid),
  isbn     number(10) references books(isbn),
  price   number(5),
  qty     number(3),
  primary key(ordid,isbn)
);


insert into users 
values(1,'abhishek','singh','abhi81093@gmail.com','12-2-23,Dwarakanagar,VSP-16',
'3434343');


insert into users 
values(2,'mike','tyson','tyson@hotmail.com','12-5-23,MVP Colony,VSP-43',
'2234343');

insert into books
 values('1001','Prof. JSP','Wrox Team',
'Wrox','java',500);

insert into books
 values('5007','Prof. ASP.NET',
'Wrox Team',
'Wrox','.net',675);

insert into books
 values('2045','VB.NET Black Book', 'Steven Holtzner','DreamTech'
,'.net',450);


commit;



create sequence ordid start with 1001;







  
