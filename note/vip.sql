select * from shop_user

/*id
name
portrait_url
city
sex
identity_card
type
ndividual_resume
user_id*/
--个人中心
create table personal_center(
id number(16) primary key,
name varchar(32) not null,--名字
portrait_url varchar(64),--头像URL
city varchar(64) not null,--地址
sex int check (sex in (0,1)),--性别
identity_card varchar(18),--身份证号码
type varchar(32),--类型
ndividual_resume varchar(256),--个人简介
user_id number(16) references shop_user(id)
);

drop table personal_center;

create sequence seq_personal_center
Increment by 1
start with 1;

update shop_user set username= 'zhangsan';

insert into personal_center(id,name,portrait_url,city,sex,identity_card,type,ndividual_resume,user_id)
values(seq_personal_center.nextval,'zhangsan','asdasda','asda',0,'asdas','sadaa','asdas',2);

update personal_center set name = #{}

select * from personal_center;

/*id
orderNumber
order_time
payment_mode
payment_status
order_status
merchant
user_id
pro_id*/


create table shop_order(
id number(16) primary key,
order_number varchar(64),--订单编号
order_time date, --订单时间
payment_mode int,--支付方式
payment_status int,--支付状态
order_status int,--货物状态
merchant varchar(64),--商家
user_id number(16) references shop_user(id),
addres_id number(16) references shop_addres(id)
);

drop table shop_order;

create table order_item(
order_id number(16) references shop_order(id),
pro_id number(16) references pro(id),
count int,
primary key(order_id,pro_id)
);


select o.id order_id,o.order_number order_number,o.order_time order_time,o.payment_mode payment_mode,
		o.payment_status payment_status,o.order_status order_status,o.merchant order_merchant,
    ad.id addres_id,ad.consignee addres_consignee,ad.consignee_phone addres_consignee_phone,
    ad.region addres_region,ad.detailed_addres addres_detailed_addres,ad.postcode addres_postcode,
    p.id pro_id,p.name pro_name,p.print_url pro_print_url,
		p.price pro_price,p.describe pro_describe,ps.id pro_sort_id,ps.name pro_sort_name
		from shop_order o inner join order_item oi on o.id = oi.order_id
    inner join shop_addres ad on o.addres_id = ad.id
    inner join pro p on oi.pro_id= p.id
		inner join pro_sort ps on p.sort_id = ps.id

create sequence seq_shop_order
Increment by 1
start with 1;

--收货地址
/*
id
consignee
consignee_phone
region
detailed_addres
postcode
user_id
*/
create table shop_addres(
id number(16) primary key,
consignee varchar(32),--收货人
consignee_phone varchar(11),--手机号码
region varchar(64),--地区
detailed_addres varchar(64),--详细地址
postcode varchar(16),--邮编
user_id number(16) references shop_user(id)
);

create sequence seq_shop_addres
Increment by 1
start with 1;

select a.id addres_id,a.consignee addres_consignee,a.consignee_phone addres_consignee_phone,a.region addres_region,
a.detailed_addres addres_detailed_addres,a.postcode addres_postcode
from shop_addres a inner join shop_user u on a.user_id = u.id

select id,consignee,consignee_phone,region,detailed_addres,postcode
from shop_addres
where user_id = 1;

insert into shop_addres(id,consignee,consignee_phone,region,detailed_addres,postcode,user_id)
values(seq_shop_addres.nextval,'张三','13087550533','湖南长沙','开服','400000')

update shop_addres 
set consignee='1',consignee_phone='2',region='3',detailed_addres='sasa',postcode='sad'
where id=1;

/*id
user_id
pro_id*/

create table shop_car(
id number(16) primary key,
user_id number(16) references shop_user(id),
pro_id number(16) references pro(id),
shop_count number(8) default(0)
);

drop table shop_car;

create sequence seq_shop_car
Increment by 1
start with 1;

select c.id car_id,c.shop_count car_count,
p.id pro_id,p.name pro_name,p.print_url pro_print_url,p.price pro_price,p.describe pro_describe
from shop_car c inner join pro p on c.pro_id = p.id 

delete shop_car where user_id = 1 and pro_id=1


insert into shop_car(id,user_id,pro_id,shop_count) 
values(seq_shop_car.nextval,);

