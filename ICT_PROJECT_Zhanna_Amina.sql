create table cake_shop (
	shop_id INT,
	shop VARCHAR(50),
	shop_address VARCHAR(50),
	phone_number VARCHAR(50),
	primary key(shop_id)
);
insert into cake_shop (shop_id, shop, shop_address, phone_number) 
values (1, 'Sweet_house_London', '929 Mandrake Way', '579-990-6293'),
    (2, 'Sweet_house_Cambridge', '73 Miller Center', '976-760-3039'),
	(3, 'Sweet_house_Bristol', '8 7th Hill', '976-800-1313'),
    (4, 'Sweet_house_Winchester', '47 Pond Terrace', '622-389-4845'),
    (5, 'Sweet_house_Liverpool', '99632 Lindbergh Court', '297-672-4009'),
    (6, 'Sweet_house_Salford', '94631 Bunker Hill Crossing', '527-624-2055'),
    (7, 'Sweet_house_Ripon', '254 Quincy Trail', '915-670-6997'),
    (8, 'Sweet_house_Oxford', '5 Ludington Point', '766-410-8599'),
    (9, 'Sweet_house_York', '720 Debra Place', '765-396-5379'),
    (10, 'Sweet_house_Birmingham', '34 Canary Plaza', '691-209-7758');
SELECT*FROM cake_shop;

create table cakes (
	cake_id INT,
	cake_name VARCHAR(50),
	cake_description VARCHAR(50),
	price VARCHAR(32),
	weight INT,
	primary key(cake_id)
);
insert into cakes (cake_id, cake_name, cake_description, price, weight)
values (101, 'Cheesecake', 'crushed shortbread cookies', '90$', 2.3),
(102, 'Red velvet cake', 'puff pastry with cream cheese frosting', '90$', 2.5),
(103, 'Honey cake', 'with honey', '100$', 3),
(104, 'Snickers cake', 'Snickers bar flavor', '80$', 1.5),
(105, 'Whoopi pie', 'coconut pie', '85$', 1.5),
(106, 'Pancho', 'sour cream and bananas cake', '75$', 1),
(107, 'Ladies fingers', 'with sour cream', '85$', 2),
(108, 'Cake figure', 'for the holidays', '100$', 1.3),
(109, 'Mirror glaze', 'chocolate glaze', '80$', 1.7),
(110, 'Napoleon', 'puff pastry', '70$', 1.2);
select*from cakes;
create table cake_list(
	shop_id INT,
	cake_id INT,
	foreign key(shop_id) references cake_shop(shop_id),--cake list includes list of all cakes and in wich shop they will baked
	foreign key(cake_id) references cakes(cake_id)
);
insert into cake_list(shop_id, cake_id)
values(1, 101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),
(2, 101),(2,102),(2,103),(2,104),(2,105),(1,108),(1,109),
(3, 101),(3,102),(3,103),(3,104),(3,105),(3,106),(3,107),(3,108),
(4, 101),(4,102),(4,103),(4,104),(4,105),(4,108),(4,109),
(5, 101),(5,102),(5,103),(5,104),(5,105),(5,106),(5,107),(5,108),(5,109),(5,110),
(6,105),(6,106),(6,107),(6,108),(6,109),(6,110),
(7, 101),(7,105),(7,106),(7,107),(7,108),(7,109),(7,110),
(8, 101),(8,102),(8,103),(8,104),(8,105),(8,106),
(9, 101),(9,102),(9,103),(9,104),(9,105),(9,106),(9,107),(9,108),
(10, 101),(10,102),(10,103),(10,104),(10,105);
select*from cake_list;

create table customers (
    customer_id INT,
    F_name VARCHAR(50),
    L_name VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
	primary key(customer_id)
);
insert into customers (customer_id, F_name, L_name, email, address)
values (301, 'Madlin', 'McDunlevy', 'mmcdunlevy0@irs.gov', '746 Hoard Road'),
(302, 'Casper', 'Charlton', 'ccharlton1@senate.gov', '13209 Texas Street'),
(303, 'Layton', 'Stookes', 'lstookes2@tmall.com', '538 Nobel Avenue'),
(304, 'Myrtie', 'Gomery', 'mgomery3@wikimedia.org', '4710 Gulseth Court'),
(305, 'Aggy', 'Place', 'aplace4@washingtonpost.com', '6 Elgar Drive'),
(306, 'Tuesday', 'Worsfold', 'tworsfold5@craigslist.org', '500 Hazelcrest Street'),
(307, 'Lonnard', 'Touhig', 'ltouhig6@comsenz.com', '9869 Di Loreto Terrace'),
(308, 'Maryann', 'Harriss', 'mharriss7@ocn.ne.jp', '31 7th Point'),
(309, 'Barnie', 'Rickets', 'brickets8@sogou.com', '22 Marcy Hill'),
(310, 'Erl', 'Prendergrass', 'eprendergrass9@mlb.com', '616 Bunker Hill Trail'),
(311, 'Cad', 'Jenicke', 'cjenickea@ask.com', '8073 Hagan Drive'),
(312, 'Sean', 'Barthelemy', 'sbarthelemyb@seattletimes.com', '3819 Tony Parkway'),
(313, 'Preston', 'Hagston', 'phagstonc@hc360.com', '4 Manitowish Avenue'),
(314, 'Spencer', 'Josum', 'sjosumd@stumbleupon.com', '0242 Florence Trail'),
(315, 'Shane', 'Haldon', 'shaldone@wordpress.org', '57188 Bay Way'),
(316, 'Kass', 'Cridlan', 'kcridlanf@infoseek.co.jp', '902 Chinook Court'),
(317, 'Emmy', 'Mullenger', 'emullengerg@rakuten.co.jp', '5267 Marquette Place'),
(318, 'Alfie', 'Antusch', 'aantuschh@stanford.edu', '40 Basil Parkway'),
(319, 'Darnell', 'Oddy', 'doddyi@newsvine.com', '91 Veith Circle'),
(320, 'Pris', 'Trethewey', 'ptretheweyj@people.com.cn', '675 Red Cloud Road');
select*from customers;

create table Job(
   position_id INT,
   position_name VARCHAR(32),
   salary VARCHAR(32),
   primary key(position_id)
);
insert into Job (position_id, position_name,salary)
values (1001, 'Baker', '10000$'),
(1002, 'Assistant_baker', '7500$'),
(1003, 'Deliver', '7000$'),
(1004, 'Director', '20000$'),
(1005, 'PR_manager', '6000$'),
(1006, 'HR', '5500$'),
(1007, 'Accountant','8000$'),
(1008, 'Cashier', '5000$'),
(1009, 'Packager', '4000$'),
(1010, 'Cleaner', '4500$');
select*from Job;

create table Employees(
	employee_id INT,
	f_name VARCHAR(32),
	l_name VARCHAR(32),
	hire_date DATE,
	quit_date DATE,
	position_id INT,
	shop_id INT,
	primary key(employee_id),
	foreign key(position_id) references Job(position_id),
	foreign key(shop_id) references cake_shop(shop_id)
);

insert into Employees(employee_id, f_name, l_name, hire_date,quit_date, position_id, shop_id)
 values (2001, 'Alina', 'Dukesbury', '13/5/2015',NULL, 1003, 1),
 (2002, 'Anna', 'Gale', '20/5/2015',NULL, 1003, 2),
 (2003, 'Ekaterina', 'Yakova', '22/2/2015',NULL, 1003, 3),
 (2004, 'Emily', 'Sargison', '16/8/2015',NULL, 1003, 4),
 (2005, 'Caroline', 'McBratney', '22/11/2015',NULL, 1003, 5),
 (2006, 'Liza', 'Gatheridge', '20/7/2015',NULL, 1003, 6),
 (2007, 'Sofia', 'Hissett', '27/2/2015',NULL, 1003, 7),
 (2008, 'Jenny', 'Capps', '20/2/2015',NULL, 1003, 8),
 (2009, 'Jake', 'Smout', '11/9/2015',NULL, 1003, 9),
 (2010, 'Mike', 'Mitchenson', '19/12/2015',NULL, 1003, 10),
 (2000, 'Avram', 'Burt', '22/1/2015', NULL,1004, 1),
 (3000, 'Jeane', 'Sickert', '22/5/2015', NULL,1006, 1),
 (4000, 'Josephina', 'Callery', '9/9/2018', NULL,1005, 1),
 (5000, 'Korney', 'Salt', '23/4/2015',NULL, 1007, 1),
 (3001, 'Westley', 'Maria', '23/6/2015', NULL,1001, 1),
 (3002, 'Mignon', 'Balcers', '23/6/2015',NULL, 1001, 2),
 (3003, 'Madelina', 'Alldread', '23/5/2015',NULL, 1001, 3),
 (3004, 'Corliss', 'Silversmidt', '26/5/2015',NULL, 1001, 4),
 (3005, 'Derrik', 'Jirzik', '23/7/2015',NULL, 1001, 5),
 (3006, 'Menard', 'Riseam', '22/7/2015',NULL, 1001, 6),
 (3007, 'Nertie', 'Strete', '24/4/2015',NULL, 1001, 7),
 (3008, 'Taber', 'Killeen', '15/4/2015',NULL, 1001, 8),
 (3009, 'Calhoun', 'Sictornes', '22/6/2015',NULL, 1001, 9),
 (3010, 'Art','Malley', '12/6/2015',NULL, 1001, 10),
 (4001, 'Tim', 'Lodden', '10/6/2015',NULL, 1002, 1),
 (4002, 'Clayton', 'Leyborne', '15/6/2015',NULL, 1002, 2),
 (4003, 'Hastie', 'Rosin', '6/8/2015',NULL, 1002, 3),
 (4004, 'Mahala', 'Cruft', '2/8/2015',NULL, 1002, 4),
 (4005, 'Cad', 'Sivewright', '11/9/2015',NULL, 1002, 5),
 (4006, 'Gianni', 'Calverd', '25/9/2015',NULL, 1002, 6),
 (4007, 'Debi', 'Plumridge', '1/4/2016', NULL,1002, 7),
 (4008, 'Gianina', 'Ondrich', '16/1/2016', NULL,1002,8),
 (4009, 'Pall', 'Wilfinger', '26/1/2016',NULL, 1002, 9),
 (4010, 'Aryn', 'Osgordby', '26/9/2015',NULL, 1002,10),
 (5001, 'Allix', 'Spring', '5/5/2015',NULL,1008, 1),
 (5002, 'Quinton', 'Pargiter', '3/6/2015',NULL, 1008, 2),
 (5003, 'Jessy', 'Joselovitch', '25/6/2015',NULL, 1008, 3),
 (5004, 'Jock', 'Pitway', '15/5/2015', NULL,1008, 4),
 (5005, 'Devora', 'Bean', '13/5/2015',NULL, 1008, 5),
 (5006, 'King', 'Cammis', '16/6/2015',NULL, 1008, 6),
 (5007, 'Devin', 'McKinna', '26/5/2015',NULL, 1008, 7),
 (5008, 'Beulah', 'Bellas', '1/5/2015',NULL, 1008, 8),
 (5009, 'Tanitansy', 'Garrod', '6/6/2015',NULL, 1008, 9),
 (5010, 'Kata', 'Dingwall', '3/5/2015',NULL, 1008, 10),
 (6001, 'Papageno', 'Suttie', '26/7/2015',NULL, 1009, 1),
 (6002, 'Krishna', 'Nolli', '29/7/2015',NULL, 1009, 2),
 (6003, 'Analise', 'McCulley', '14/8/2015',NULL, 1009, 3),
 (6004, 'Jacquenetta', 'Simonnet', '23/8/2015',NULL, 1009, 4),
 (6005, 'Catriona', 'Byrnes', '29/7/2015',NULL, 1009, 5),
 (6006, 'Francisco', 'Burstow', '6/7/2015',NULL, 1009, 6),
 (6007, 'Winthrop', 'Haggleton', '1/7/2015',NULL, 1009, 7),
 (6008, 'Ginnie', 'Torbard', '3/8/2015',NULL, 1009, 8),
 (6009, 'Caddric', 'Beardow', '25/7/2015',NULL, 1009, 9),
 (6010, 'Artemis', 'Dudbridge', '17/7/2015',NULL, 1009, 10),
 (6011, 'Orville', 'Harron', '22/6/2016','6/7/2020', 1009, 10),
 (7001, 'Ganny', 'Llorente', '11/7/2015',NULL, 1010, 1),
 (7002, 'Almira', 'Maxsted', '28/6/2015',NULL, 1010, 2),
 (7003, 'Kim', 'Beagley', '10/8/2015',NULL, 1010, 3),
 (7004, 'Lacy', 'Shobbrook', '3/7/2015',NULL,1010, 4),
 (7005, 'Kikelia', 'Clewley', '17/8/2015',NULL, 1010, 5),
 (7006, 'Marketa', 'Dumberrill', '18/10/2016','12/12/2019', 1010, 6),
 (7007, 'Arnie', 'Impleton', '5/7/2015',NULL, 1010, 6),
 (7008, 'Keelia', 'Canelas', '21/7/2015',NULL, 1010, 7),
 (7009, 'Fifi', 'Jovey', '15/7/2015',NULL, 1010,8 ),
 (7010, 'Andrey','Petrov','14/8/2015',NULL,1010,9),
 (7011, 'Sindy', 'Mai', '15/8/2015',NULL,1010,10);
 select*from Employees;
 
create table courses (
    course_id INT,
    course_price VARCHAR(32),
    course_description VARCHAR(255),
    shop_id INT,
	primary key(course_id),
	foreign key(shop_id) references cake_shop(shop_id)
);
insert into courses (course_id, course_price, course_description, shop_id)
values (201, '$250', 'baking cake with Alina', 1),
(202, '$250', 'baking cake with Anna', 2),
(203, '$250', 'baking cake with Ekaterina', 3),
(204, '$250', 'baking cake with Emily', 4),
(205, '$250', 'baking cake with Caroline', 5),
(206, '$250', 'baking cake with Liza', 6),
(207, '$250', 'baking cake with Sofia', 7),
(208, '$250', 'baking cake with Jenny', 8),
(209, '$250', 'baking cake with Jake', 9),
(210, '$250', 'baking cake with Mike', 10);
select*from courses;

create table student_list ( --shows the list of students who take courses
    student_id INT,
    course_id INT,
    customer_id INT,
	primary key(student_id),
	foreign key(course_id) references Courses(course_id),
	foreign key(customer_id) references Customers(customer_id)
);
insert into student_list (student_id, course_id, customer_id)
values (601, 201, 301),(602, 201, 302),(603, 201, 303),(604, 202, 304),(605, 202, 305),
(606, 202, 306),(607, 205, 307),(608, 205, 308),(609, 205, 309),(610, 206, 310),
(611, 206, 316),(612, 206, 317),(613, 210, 318),(614, 210, 319),(615, 210, 320);

create table sales (
    sales_id INT,
    types VARCHAR(32),
    sale_description VARCHAR(255),
	primary key(sales_id)
);
insert into sales (sales_id, types, sale_description)
values (11, '5%', 'for subscribers'),(22, '5%', '1+1=-5%'),
(33, '5%', 'every friday'),(44, '10%', 'for active subscribers'),
(55, '10%', 'holidays'),(66, '15%', 'with promocode'),
(77, '20%', 'special promocode'),(88, '20%', 'to buy the 5th cake'),
(99, '25%', 'children protection day'),(999, '30%', 'for birthday people');
 select*from sales;
 
create table social_networks (
    id INT,
    instagram VARCHAR(65),
    shop_email VARCHAR(65),
    shop_id INT,
	primary key (id),
	foreign key(shop_id) references cake_shop(shop_id)
);
insert into social_networks (id, instagram, shop_email, shop_id)
values (1, '@sweet_house_London', 'jnorway0@independent.co.uk', 1),
(2, '@sweet_house_Cambridge', 'fdabs1@wiley.com', 2),
(3, '@sweet_house_Bristol', 'sniessen2@hao123.com', 3),
(4, '@sweet_house_Winchester', 'cwakes3@latimes.com', 4),
(5, '@sweet_house_Liverpool', 'lmaleham4@ycombinator.com', 5),
(6, '@sweet_house_Salford', 'rdavage5@sphinn.com', 6),
(7, '@sweet_house_Ripon', 'lbohler6@vk.com', 7),
(8, '@sweet_house_Oxford', 'ejanas7@wufoo.com', 8),
(9, '@sweet_house_York', 'biacomo8@columbia.com', 9),
(10, '@sweet_house_Birmingham', 'akibblewhite9@arstechnica.com', 10);
select*from social_networks;

create table delivery (
    delivery_id INT,
    delivery_price VARCHAR(32),
    employee_id INT,
	primary key(delivery_id),
	foreign key(employee_id) references Employees(employee_id)
);
insert into delivery (delivery_id, delivery_price, employee_id)
values (2001, '$10.00', 2001),(2002, '$10.00', 2002),
(2003, '$10.00', 2003),(2004, '$10.00', 2004),
(2005, '$10.00', 2005),(2006, '$10.00', 2006),
(2007, '$10.00', 2007),(2008, '$10.00', 2008),
(2009, '$10.00', 2009),(2010, '$10.00', 2010);
SELECT *FROM delivery;

create table cashbox( --this table shows all information about purchases
    cash_id INT,
    customer_id INT,
    date DATE,
    cake_id INT,
    amount INT,
    delivery_id INT,
    sales_id INT,
	primary key (cash_id),
	foreign key(customer_id) references Customers(customer_id),
	foreign key(cake_id) references Cakes(cake_id),
	foreign key(delivery_id) references Delivery(delivery_id),
	foreign key(sales_id) references Sales(sales_id)
);
insert into cashbox (cash_id, customer_id, date, cake_id, amount, delivery_id, sales_id)
values (401, 301, '13/11/2019', 104, 1, 2001, 11),(402, 302, '24/9/2020', 106, 2, 2003, 22),
(403, 303, '1/7/2020', 103, 3, 2004, 44),(404, 304, '9/5/2020', 110, 5, 2008, 88),
(405, 305, '24/7/2020', 108, 1, 2002, NULL),(406, 306, '26/5/2018', 109, 2, 2001, 22),
(407, 307, '16/6/2018', 106, 2, 2007, 22),(408, 308, '22/11/2017', 102, 2, 2010, 22),
(409, 309, '25/12/2017', 109, 2, 2002, 22),(410, 310, '30/8/2020', 101, 1, 2009, 44),
(411, 311, '24/10/2019', 103, 1, 2004, 11),(412, 312, '24/4/2019', 105, 3, 2005, NULL),
(413, 313, '16/4/2020', 102, 3, 2010, 44),(414, 314, '29/8/2018', 110, 1, 2009, NULL),
(415, 315, '10/3/2018', 110, 1, 2006, 11);
 SELECT *FROM cashbox;
 
create table order_history ( --shows the history of sales
    history_id INT,
    cash_id INT,
    customer_id INT,
	primary key(history_id),
	foreign key(cash_id) references Cashbox(cash_id),
	foreign key(customer_id) references Customers(customer_id)
);
insert into order_history (history_id, cash_id, customer_id)
values (501, 401, 301),(502, 402, 302),(503, 403, 303),(504, 404, 304),
(505, 405, 305),(506, 406, 306),(507, 407, 307),(508, 408, 308),
(509, 409, 309),(510, 410, 310),(511, 411, 311),(512, 412, 312),
(513, 413, 313),(514, 414, 314),(515, 415, 315);
select*from order_history;
