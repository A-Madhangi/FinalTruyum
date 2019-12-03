create database if not exists truyum;

create table user(us_id int primary key,name varchar(25));

CREATE  TABLE menu_item (

  me_id INT NOT NULL AUTO_INCREMENT ,

  me_name VARCHAR(45) NULL ,

  me_price BIGINT NULL ,

  me_active  VARCHAR(5) NULL ,

  me_date_of_launch DATE NULL ,

  me_genre VARCHAR(45) NULL ,

  me_free_delivery VARCHAR(5) NULL ,

  PRIMARY KEY (me_id) );
  
insert into user values(100,'madhu');

insert into cart values(1,100,1);

create table cart(ct_id int primary key,ct_us_id int,ct_pr_id int, foreign key(ct_us_id) references user(us_id),foreign key(ct_pr_id) references menu_item(me_id));


