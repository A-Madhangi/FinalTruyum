
/* script to view all menu items (TYUC001)*/

1)
a) insert into menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('sandwich',99.00,'Yes','2017-09-28','Main Course','Yes');
b) select * from menu_item;

/*script to view all menu items which is after launch date and is active (TYUC002)*/

2)
   select * from menu_item where me_date_of_launch <= now() and me_active='Yes';

/*script to edit menu item (TYUC003)*/

3)
a) select * from menu_item where me_id=1;
b) update menu_item set me_name='chips',me_price=80.00,me_active='No',me_date_of_launch='2019-08-01',me_category='Fast Food',me_free_delivery='Yes' where me_id=1;

/*script to  Add To Cart (TYUC004)*/
4) 
1) insert into user values(100,'madhu'),(101,'madhangi');
   insert into cart values(1,100,2),(2,101,3),(3,100,1);

/*script to view cart (TYUC005)*/
5)

a) select * from menu_item m inner join cart c on m.me_id == c.ct_id and c.ct_id=1;

b) select sum(m.me_price) as total_price from menu_item m inner join cart c on m.me_id =c.ct_id and c.ct_id =1;

/*script to Remove Item from Cart (TYUC006)*/

6)
a)
delete from cart where ct_us_id=1 and ct_pr_id=1;
