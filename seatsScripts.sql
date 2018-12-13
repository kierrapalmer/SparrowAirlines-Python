
create table seat(id int primary key, aisle varchar(2), row int, isOpen int, seatClass varchar(30), price float);
insert into seat values(1, 'A', 1, 1, 'First', '382.19'), (2, 'B', 1, 1, 'First', '382.19');
insert into seat(aisle, row, isOpen, seatClass, price)
VALUES
( 'A', 1, 1, 'First', '421.19'), 
( 'B', 1, 1, 'First', '421.19');
( 'C', 1, '1', 'First', '421.25'),
( 'D', 1, '1', 'First', '421.25'),
( 'A', 2, '1', 'First', '421.25'),
( 'B', 2, '1', 'First', '421.25'),
( 'C', 2, '1', 'First', '421.25'),
( 'D', 2, '1', 'First', '421.25'),
( 'A', 3, '1', 'Business',  '367.12'),
( 'B', 3, '1', 'Business', '367.12'),
( 'C', 3, '1', 'Business', '367.12'),
( 'D', 3, '1', 'Business', '367.12'),
( 'A', 4, '1', 'Business', '367.12'),
( 'B', 4, '1', 'Business', '367.12'),
( 'C', 4, '1', 'Business', '367.12'),
( 'D', 4, '1', 'Business', '367.12'),
('A', 5, '1', 'Business', '367.12'),
('B', 5, '1', 'Business', '367.12'),
('C', 5, '1', 'Business', '367.12'),
('D', 5, '1', 'Business', '367.12'),
('A', 6, '1', 'Economy', '318.58'),
('B', 6, '1', 'Economy', '318.58'),
('C', 6, '1', 'Economy', '318.58'),
('D', 6, '1', 'Economy', '318.58'),
('A', 7, '1', 'Economy', '318.58'),
('B', 7, '1', 'Economy', '318.58'),
('C', 7, '1', 'Economy', '318.58'),
('D', 7, '1', 'Economy', '318.58'),
('A', 8, '1', 'Economy', '318.58'),
('B', 8, '1', 'Economy', '318.58'),
('C', 8, '1', 'Economy', '318.58'),
('D', 8, '1', 'Economy', '318.58'),
('A', 9, '1', 'Economy', '318.58'),
('B', 9, '1', 'Economy', '318.58'),
('C', 9, '1', 'Economy', '318.58'),
('D', 9, '1', 'Economy', '318.58'),
('A', 10, '1', 'Economy', '318.58'),
('B', 10, '1', 'Economy', '318.58'),
('C', 10, '1', 'Economy', '318.58'),
('D', 10, '1', 'Economy', '318.58');


