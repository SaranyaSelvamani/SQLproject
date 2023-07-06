create database bookDB;
use bookDB;
create table Books(
s_no int primary key,
book_title text,
author_name text,
genre text,
publication year,
price int);
   
drop table books;

 create table authors(
se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint fk_s_no foreign key(s_no) references Books(s_no));
       
drop table athors;
insert into Books values
(1,"Cindrella","Walter Elias Disney","Cartoon",1997,5000),
(2,"Zombie","Hitler","Horror",1987,500),
(3,"Life of Pie","Mary Comb","Life lesson",2007,2000),
(4,"Life of Lord","Prince Jack","Fiction",1907,4000),
(5,"World tour","William","action",2002,5500),
(6,"Poppins","Wright Brothers","Cartoon",2010,3000);
   
insert into authors values
(1,20,"Dubai","William",5),
(2,25,"Bombay","Zombie",2),
(3,30,"Sidney","Walter Elias Disney",1),
(4,40,"Darjiling","Wright Brothers",6);
   
select *from Books;

select * from books
where book_title ="zombie";

update books set price=2500
where s_no=2;

delete from books
where book_title="life of pie";

select avg(price)
from books;

select * from books
 inner join authors
 on books.s_no=authors.s_no;
