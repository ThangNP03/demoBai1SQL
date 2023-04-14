
CREATE DATABASE `demoquanlysinhvien`;
-- DROP DATABASE demoquanlysinhvien;
-- tao mot bang
-- chon co so du lieu muon tao bang
use demoquanlysinhvien;
CREATE TABLE Class (
	classId int primary key auto_increment,
    className varchar(255) unique not null,
    total int not null 
);


-- drop table studentmanage;
create table studentmanage(
	studentId int primary key auto_increment, 
    studenName varchar(255)  not null,
	birthday date,
	sex tinyint default(0),
	birthdayPlace varchar(255),
    factor float check(factor > 1)
);
insert into studentmanage values (null, "Nguyễn ", '2003/11/03', 1, "Nghệ an", 4);

create table `subject`(
	subjectCode int primary key  auto_increment ,
    subjectName varchar(255) not null,
    coefficient float default(1)
);
-- nhap du lieu cho bang
insert into class(className, total) values 
("Nguyễn Phúc thắng", 16),
("Thế Anh Ngu như chó", 17),
("Chó là Thế Anh", 19);
-- chinh sua  du lieu trong bag
-- update class set total = 120 where classId not in (1,2);
-- delete du lieu cuaa mot bang nao day 
delete from class;

-- nhap du lieu vao cho bang  subject
insert into `subject` (subjectname, coefficient) values
("Toan", 2.0),
("Van", 2.0),
("Tieng Anh", 2.3),
("Hoa", 2.2),
("Ly", 2.0);

-- nhap du lieu vao cho bang  student


