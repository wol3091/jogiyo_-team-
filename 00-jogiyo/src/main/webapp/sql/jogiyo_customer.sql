create table jogiyo_customer(
  id varchar2(40) not null,       --이메일 형식 아이디
  pwd varchar2(30) not null,      -- 비밀번호
  nickname varchar2(30) not null, -- 닉네임
  phone varchar2(11) not null,    --휴대폰 번호
  postcode varchar2(20) not null,   -- 우편번호
  addr1 varchar2(100) not null,    -- 주소1
  addr2 varchar2(100) not null     -- 주소2
);