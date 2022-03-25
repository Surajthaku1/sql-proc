create database naman
use naman
create table lavi(id int identity,name varchar(40),
salary int,city varchar(40),Manger_id int)
insert into lavi(name,salary,city,manger_id)values
('naman',12005,'MBD',5),
('naman',12000,'SND',6),
('pintu',12044,'NDB',2),
('monoj',16441,'NDA',4),
('Raju',12300,'PKD',3),
('Mohit',12800,'ZBD',1)
select *from lavi
select * from  lavi as a,lavi as b where a.id=b.Manger_id
select * from lavi where id % 2 <> 0
select * from lavi where id %2=0
create proc even_id
as 
begin 
select * from lavi where id %2=0
end
create proc odd_id
as 
begin 
select * from lavi where id %2<>0
end
create proc selfjoin
as 
begin 
select * from  lavi as a,lavi as b where a.id=b.Manger_id

end
selfjoin
select a.name,a.id,a.Manger_id from  lavi as a,lavi as b where a.id=b.Manger_id
alter proc selfjoin
as 
begin 
select a.name,a.id,a.Manger_id from  lavi as a,lavi as b where a.id=b.Manger_id

end
selfjoin
