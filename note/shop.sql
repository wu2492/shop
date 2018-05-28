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
price number(16,2),
describe varchar(256),
sort_id number(16) references pro_sort(id)
);

select * from pro;

drop table pro;

create table pro_sort(
id number(16) primary key,
name varchar(64)
);


 insert into pro_sort(id,name) values(1,'智能机');
 insert into pro_sort(id,name) values(2,'功能机');
 insert into pro_sort(id,name) values(3,'老人机');
 insert into pro_sort(id,name) values(4,'拖拉机');

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


select u.id user_id,u.username user_username,u.password user_password,u.e_mail user_e_mail,
				u.phone user_password,r.id role_id,r.name role_name
		from shop_user u inner join shop_role r on u.role_id = r.id
    
    
    insert into
		pro(id,name,print_url,price,describe)
		values(seq_shop_user.nextval,'asad',null,123165,'adsadsa');
    
    
    select * from pro;
    
    
    select p.id pro_id,p.name pro_name,p.print_url pro_print_url,p.price pro_price,p.describe p_describe,s.id sort_id,s.name sort_name
    from pro p inner join pro_sort s on p.sort_id = s.id;
