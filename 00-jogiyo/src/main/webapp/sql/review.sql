create table review (
  review_seq number primary key,
  id varchar2(40) not null,         -- 구매자 id
  nickname varchar2(30) not null,   -- 닉네임
  ceo_seq varchar2(50) not null,     -- 사장 seq
  ceoOK varchar2(20),               -- 사장 댓글 유/무
  content varchar2(1000) not null,  -- 내용
  ceoContent varchar2(1000),       -- 사장덧글
  starpoint varchar2(20) not null,  -- 별점
  image varchar2(100),              -- 이미지
  orderlist varchar2(100) not null, -- 주문내역
  logtime date not null,            --커스터머 작성시간
  logtimCeo date                    --사장님 작성시간
);

create sequence review_seq nocache nocycle;
