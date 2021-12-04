drop table board;
create table board(
  idx int auto_increment, -- 자동증가컬럼(auto_increment)
  userId varchar(30) not null,
  title varchar(100) not null,
  contents varchar(2000) not null,
  writer varchar(100) not null,
  indate datetime default now(), -- now() 날짜,시간정보 - sysdate
  count int default 0,
  primary key(idx) 
);

insert into board(title,contents,writer)
values('스프링게시판','스프링게시판','관리자');

insert into board(title,contents,writer)
values('스프링게시판','스프링게시판','박매일');

select * from board;
-- 회원데이블
create table user(
   userId varchar(30) not null,
   userName varchar(30) not null,
   userPwd varchar(30) not null,   
   primary key(userId)
);

insert into user values('bitcocom1','박매일','12345');
insert into user values('bitcocom2','최태양','abcde');
insert into user values('bitcocom3','손지영','12345');
insert into user values('bitcocom4','채수민','abcde');

select * from user;