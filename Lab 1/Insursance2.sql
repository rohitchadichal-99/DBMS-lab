create database insurance_sqll;
use insurance_sqll;

create table person
(driver_id varchar(5),
name varchar(30),
address varchar(50),
primary key (driver_id));

create table car
(reg_no char(20),
model varchar(10),
year int,
primary key (reg_no));

create table accident
(rep_no int,
acc_date date,
loc char(20),
primary key (rep_no));

create table owns 
(driver_id varchar(5),
reg_no  char(10),
primary key (driver_id,reg_no),
foreign key (driver_id ) references person(driver_id),
foreign key (reg_no) references car(reg_no));

create table participated(
driver_id  varchar(5),
reg_no char(16),
rep_no int,
damage_amt int,
primary key (driver_id,reg_no,rep_no),
foreign key (driver_id) references person(driver_id),
foreign key (reg_no) references car(reg_no),
foreign key (rep_no) references accident(rep_no));

show tables;

insert into person values
('A01','Richard','Shivvas nagar'),
('A02','Pradeep','Rajaji nagar'),
('A03','Smith','Ashok nagar'),
('A04','venu','N Rcolony'),
('A05','Jhon','Hanumanth nagar');
select * from person;

insert into car values
('KA052250','INDICA','1970'),
('KA031181','LANEER','1957'),
('KA095477','TOYOTA','1998'),
('KA053408','HONDA','2008'),
('KA041702','AUDI','2005');
select * from car;

insert into accident values
(11,"0001-03-01","mysore road"),
(12,"0002-04-02","south end circle"),
(13,"0003-03-21","Ashok nagar"),
(14,"0002-08-21","mysore road"),
(15,"0003-05-04","kanakpura road");
select * from accident;

insert into owns values
('A01','KA052250'),
('A02','KA053408'),
('A03','KA031181'),
('A04','KA095477'),
('A05','KA041702');
select * from owns;

insert into participated values
('A01',"KA052250",11,10000),
('A02',"KA053408",12,50000),
('A03',"KA031181",13,250000),
('A04',"KA095477",14,3000),
('A05',"KA041702",15,5000);
select * from participated;

