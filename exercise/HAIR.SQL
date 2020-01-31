
.echo on
.headers on

--Name : Emeka Mkpume
--Script: hair.sql
--date : January 20, 2020

drop table if exists hair;

create table hair(
id integer primary key,
hair_name  text,
hair_cost integer,
hair_color text,
hair_Texture text,
hair_expiry_year integer
);
insert into hair  values (1,'indian',100,'black','soft',2020);
insert into hair values (2,'Peruvian',110,'brown','smooth',2021);
insert into hair values (3,'columbian',120,'peach','silky',2030);
insert into hair  values (4,'Brazilian',200,'orange','luxurious',2020);
insert into hair values (5,'chinese',150,'yellow','milky'2025);

select * from hair;
select * from hair where hair_name like 'indian';
