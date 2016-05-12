INSERT INTO TB_MEM(MEM_ID, MEM_NM, MEM_CD, PWD, PWD_HINT, PWD_HINT_ANS, SSN, BIRTH_DT, MALE_FLG, TEL_NO, CELL_NO, ADDR, EMAIL, EMAIL_RCV_FLG, MEM_REG_DTM)      
VALUES('jang1', '장동건', 'USR', 'jang1', '초등학교는?', '서울초등학교', '8010101234567', '19801010', 'F', '02-555-4567', '010-234-4567', '서울시 서초구 서초동 서초아파트 101동 1001호', 'abcd@email.com', 'Y', to_char(sysdate, 'YYYYMMDDHH24MISS'))  ;
INSERT INTO TB_MEM(MEM_ID, MEM_NM, MEM_CD, PWD, PWD_HINT, PWD_HINT_ANS, SSN, BIRTH_DT, MALE_FLG, TEL_NO, CELL_NO, ADDR, EMAIL, EMAIL_RCV_FLG, MEM_REG_DTM)      
VALUES('kim', '김서연', 'USR', 'kim', '초등학교는?', '서울초등학교', '8010101234567', '19801010', 'F', '02-555-4567', '010-234-4567', '서울시 서초구 서초동 서초아파트 101동 1001호', 'abcd@email.com', 'Y', to_char(sysdate, 'YYYYMMDDHH24MISS'))  ;
INSERT INTO TB_MEM(MEM_ID, MEM_NM, MEM_CD, PWD, PWD_HINT, PWD_HINT_ANS, SSN, BIRTH_DT, MALE_FLG, TEL_NO, CELL_NO, ADDR, EMAIL, EMAIL_RCV_FLG, MEM_REG_DTM)      
VALUES('lee', '이민호', 'USR', 'lee', '초등학교는?', '서울초등학교', '8010101234567', '19801010', 'F', '02-555-4567', '010-234-4567', '서울시 서초구 서초동 서초아파트 101동 1001호', 'abcd@email.com', 'Y', to_char(sysdate, 'YYYYMMDDHH24MISS'))  ;
INSERT INTO TB_MEM(MEM_ID, MEM_NM, MEM_CD, PWD, PWD_HINT, PWD_HINT_ANS, SSN, BIRTH_DT, MALE_FLG, TEL_NO, CELL_NO, ADDR, EMAIL, EMAIL_RCV_FLG, MEM_REG_DTM)      
VALUES('kang', '강감찬', 'USR', 'kang', '초등학교는?', '서울초등학교', '8010101234567', '19801010', 'F', '02-555-4567', '010-234-4567', '서울시 서초구 서초동 서초아파트 101동 1001호', 'abcd@email.com', 'Y', to_char(sysdate, 'YYYYMMDDHH24MISS'))  ; 

delete from TB_ORDER_PRODUCT;
delete from TB_ORDER;

alter table tb_order
modify(ord_no varchar2(20));

alter table tb_order_product
modify(ord_no varchar2(20));
create sequence myord_seq;
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000001',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000001',5);

insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000002',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000002',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000002',1);	
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000003',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000003',10);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000004',2);	
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'lee',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000005',6);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kim',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000005',1);
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000006',20);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000007',4);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000008',11);	
			
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000009',15);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'kang',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000010',1);
insert into TB_ORDER
values (to_char(sysdate,'yyyymmdd') ||100000||myord_seq.nextval,
        'jang1',50000,'김서연','010','서울','001','test','N',sysdate);
insert into TB_ORDER_PRODUCT 
values(to_char(sysdate,'yyyymmdd') ||100000||myord_seq.currval,
			'PRD000000011',1);
commit;

select count(*) from TB_ORDER;
select count(*) from TB_ORDER_PRODUCT;

select * from TB_MEM
