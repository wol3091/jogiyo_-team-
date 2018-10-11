jugiyo_admin
create table jugiyo_admin(
   admin_id varchar2(40) not null,      --아이디
   admin_pwd varchar2(40) not null,      -- 비밀번호
   admin_email varchar2(100) not null
);

insert into('admin','1234','lrken@naver.com');