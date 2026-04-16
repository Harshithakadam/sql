create database mobileshop;
use mobileshop;

create table mobile(mobilename varchar(50) not null,brand varchar(50),price int check(price>10000));
insert into mobile values("galaxy m32","samsung",15000);

create table customer(name varchar(50) not null,city varchar(50) default "bangalore");
insert into customer values("amit","bangalore");

create table purchases(customer_name varchar(50),mobile_name varchar(50));
insert into purchases values("amit","galaxy m32");

create table shop(shop_name varchar(50) unique,location varchar(50));
insert into shop values("phone store","mysore");

create table payment(customer_name varchar(50),amount int not null check(amount>0),payment_method varchar(20) default "cash");
insert into payment values("amit",15000,"upi");