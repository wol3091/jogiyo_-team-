create table owner_request(
  preseq number primary key,
  license_num1 varchar2(30) not null,      -- 사업자 번호
  license_num2 varchar2(30) not null,      -- 사업자 번호
  license_num3 varchar2(30) not null,      -- 사업자 번호
  registration varchar2(400) not null,     -- 사업자등록증
  business_register varchar2(400) not null,  -- 사업 신고증
  register_name varchar2(20) not null,    -- 사업주명
  business_phone1 varchar2(20) not null,  -- 사업자 휴대폰 번호
  business_phone2 varchar2(20) not null,  -- 사업자 휴대폰 번호
  business_phone3 varchar2(20) not null,  -- 사업자 휴대폰 번호
  restaurant_name varchar2(50) not null,  -- 음식점 이름
  restaurant_phone1 varchar2(40) not null, -- 음식점 전화번호 
  restaurant_phone2 varchar2(40) not null, -- 음식점 전화번호 
  restaurant_phone3 varchar2(40) not null, -- 음식점 전화번호
  restaurant_address1 varchar2(200) not null, --음식점 주소(우편번호)
  restaurant_address2 varchar2(200) not null, --음식점 주소(도로명주소)
  restaurant_address3 varchar2(200) not null, --음식점 주소(지번주소)
  restaurant_address4 varchar2(200) not null, --음식점 주소(상세)
  category_menu varchar2(400) not null,      -- 업종 카테고리
  delivery_option varchar2(50) not null,    -- 배달 가능 여부 
  yak varchar2(30) not null,                -- 이용약관
  somename varchar2(400) not null,           -- 음식점 로고
  access1 varchar2(30) not null,            -- 관리자 승인
  temp_close varchar2(20) not null,         -- 임시운영정지 여부
  seq varchar2(50) ,                  -- 음식점 관리번호
  original varchar2(3000),                  -- 원산지 
  lower_price varchar(20),                  -- 최소주문금액 - 사용자 사이트 list 메뉴
  delivery_region varchar(200),             -- 배달가능지역 사장님 사이트 - 운영정보수정 - 운영정보
  money_method varchar(200),                 -- 결제 수단   사용자 사이트 - 정보
  weekday_start_H varchar2(30),             --평일 시작 Hours
  weekday_start_M varchar2(30),             --평일 시작 Minute
  weekday_end_H varchar2(30),               --평일 마감 Hours
  weekday_end_M varchar2(30),               --평일 마감 Minute
  saturday_start_H varchar2(30),            --토요일 시작 Hours
  saturday_start_M varchar2(30),            --토요일 시작 Minute
  saturday_end_H varchar2(30),              --토요일 마감 Hours
  saturday_end_M varchar2(30),              --토요일 마감 Minute
  sunday_start_H varchar2(30),              --일요일 시작 Hours
  sunday_start_M varchar2(30),              --일요일 시작 Minute
  sunday_end_H varchar2(30),                --일요일 마감 Hours
  sunday_end_M varchar2(30),                --일요일 마감 Minute
  delivery_cost number,                      --배달료
  delivery_time varchar2(100)               -- 배달소요시간
);

create sequence seq_owner_request nocache nocycle; 