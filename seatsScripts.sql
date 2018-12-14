
create table seat(id int primary key, aisle varchar(2), row int, isOpen int, seatClass varchar(30), price float);
insert into seat values(1, 'A', 1, 1, 'First', '382.19'), (2, 'B', 1, 1, 'First', '382.19');
insert into seat(aisle, row, isOpen, seatClass, price)
VALUES
(1 ,'A', 1, 1, 'First', '421.19'),
(2 ,'B', 1, 1, 'First', '421.19');
(3 ,'C', 1, '1', 'First', '421.25'),
(4 ,'D', 1, '1', 'First', '421.25'),
(5,'A', 2, '1', 'First', '421.25'),
(6 ,'B', 2, '1', 'First', '421.25'),
(7 ,'C', 2, '1', 'First', '421.25'),
(8 ,'D', 2, '1', 'First', '421.25'),
(9 ,'A', 3, '1', 'Business',  '367.12'),
(10 ,'B', 3, '1', 'Business', '367.12'),
(11 ,'C', 3, '1', 'Business', '367.12'),
(12 ,'D', 3, '1', 'Business', '367.12'),
(13 ,'A', 4, '1', 'Business', '367.12'),
(14 ,'B', 4, '1', 'Business', '367.12'),
(15 ,'C', 4, '1', 'Business', '367.12'),
(16 ,'D', 4, '1', 'Business', '367.12'),
(17 ,'A', 5, '1', 'Business', '367.12'),
(18 ,'B', 5, '1', 'Business', '367.12'),
(19 ,'C', 5, '1', 'Business', '367.12'),
(20 ,'D', 5, '1', 'Business', '367.12'),
(21 ,'A', 6, '1', 'Economy', '318.58'),
(22 ,'B', 6, '1', 'Economy', '318.58'),
(23 ,'C', 6, '1', 'Economy', '318.58'),
(24 ,'D', 6, '1', 'Economy', '318.58'),
(25 ,'A', 7, '1', 'Economy', '318.58'),
(26 ,'B', 7, '1', 'Economy', '318.58'),
(27 ,'C', 7, '1', 'Economy', '318.58'),
(28 ,'D', 7, '1', 'Economy', '318.58'),
(29 ,'A', 8, '1', 'Economy', '318.58'),
(30 ,'B', 8, '1', 'Economy', '318.58'),
(31 ,'C', 8, '1', 'Economy', '318.58'),
(32 ,'D', 8, '1', 'Economy', '318.58'),
(33 ,'A', 9, '1', 'Economy', '318.58'),
(34 ,'B', 9, '1', 'Economy', '318.58'),
(35 ,'C', 9, '1', 'Economy', '318.58'),
(36 ,'D', 9, '1', 'Economy', '318.58'),
(37 ,'A', 10, '1', 'Economy', '318.58'),
(38 ,'B', 10, '1', 'Economy', '318.58'),
(39, 'C', 10, '1', 'Economy', '318.58'),
(40, 'D', 10, '1', 'Economy', '318.58');


