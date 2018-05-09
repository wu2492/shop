create table shop_user(
      id number(16) primary key,
      username varchar(64),
      password varchar(64),
      e_mail varchar(64),
      phone varchar(16),
      role_id number(16) references shop_role(id)
      );

      --drop table shop_user;
      
      create table shop_role(
      id number(16) primary key,
      name varchar(64)
      );
      
      insert into shop_role(id,name) values(1,'ADMIN');
      insert into shop_role(id,name) values(2,'USER');
      
      
create table pro(
id number(16) primary key,
name varchar(64),
print_url varchar(64),
describe varchar(256),
sort_id number(16) references pro_sort(id)
);

create table pro_sort(
id number(16) primary key,
name varchar(64)
);

create sequence seq_shop_user
Increment by 1
start with 1;

drop sequence seq_shop_user;

create sequence seq_shop_role
Increment by 1
start with 1;

create sequence seq_pro
Increment by 1
start with 1;

create sequence seq_pro_sort
Increment by 1
start with 1;
