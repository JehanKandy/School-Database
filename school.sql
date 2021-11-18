create table student(
	id int(10) not null primary key auto_increment,
	fname varchar(255) not null,
	lname varchar(255) not null,
	age int(10) not null,
	city varchar(255) not null
);

create table parent(
	id int(10) not null,
	pid int(10) not null,
	name varchar(255) not null,
	tp varchar(20) not null,
	foreign key(id) references student(id),
	primary key(id, pid)
);
create table student_phone(
	id int(10) not null primary key,
	phone varchar(20) not null,
	foreign key(id) references student(id)
);
create table teacher(
	tid int (10) not null primary key auto_increment,
	name varchar(255) not null,
	degree varchar(255) not null
);
create table subject(
	s_id int(10) not null primary key auto_increment,
	name varchar(255) not null
);

create table student_teacher(
	id int(10) not null,
	tid int(10) not null,
	foreign key(id) references student(id),
	foreign key(tid) references teacher(tid),
	primary key(id, tid)
);
create table student_subject(
	id int(10) not null,
	s_id int(10) not null,
	foreign key(id) references student(id),
	foreign key(s_id) references subject(s_id),
	primary key(id, s_id)
);