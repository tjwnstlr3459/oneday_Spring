--------------------------------------------------------
--  ������ ������ - ������-5��-31-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."ADMIN" 
   (	"ADMIN_NO" NUMBER, 
	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"ADMIN_PW" VARCHAR2(20 BYTE), 
	"ADMIN_NAME" VARCHAR2(20 BYTE), 
	"ADMIN_PHONE" CHAR(11 BYTE), 
	"ADMIN_ADDR" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DONATION
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."DONATION" 
   (	"PA_NO" NUMBER, 
	"PATRON" VARCHAR2(20 BYTE), 
	"PA_USE" NUMBER, 
	"PA_KIND" NUMBER, 
	"PA_PHONE" CHAR(11 BYTE), 
	"PA_EMAIL" VARCHAR2(20 BYTE), 
	"PA_PW" VARCHAR2(30 BYTE), 
	"PA_PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DONATION_LIST
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."DONATION_LIST" 
   (	"DONA_NO" NUMBER, 
	"DONA_TITLE" VARCHAR2(1000 BYTE), 
	"DONA_WRITER" VARCHAR2(20 BYTE), 
	"DONA_CONTENT" VARCHAR2(4000 BYTE), 
	"DONA_DATE" CHAR(10 BYTE), 
	"PA_AMOUNT" NUMBER, 
	"PA_LEVEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREE
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."FREE" 
   (	"FREE_NO" NUMBER, 
	"FREE_TITLE" VARCHAR2(300 BYTE), 
	"FREE_WRITER" VARCHAR2(20 BYTE), 
	"FREE_CONTENT" VARCHAR2(4000 BYTE), 
	"FREE_DATE" CHAR(10 BYTE), 
	"FILEPATH" VARCHAR2(500 BYTE), 
	"READ_COUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREE_COMMENT
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."FREE_COMMENT" 
   (	"FC_NO" NUMBER, 
	"FC_WRITER" VARCHAR2(20 BYTE), 
	"FC_CONTENT" VARCHAR2(1000 BYTE), 
	"FC_DATE" CHAR(10 BYTE), 
	"FREE_REF" NUMBER, 
	"FC_REF" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREE_LIKE
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."FREE_LIKE" 
   (	"FL_NO" NUMBER, 
	"FREE_REF" NUMBER, 
	"MEMBER_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."MEMBER" 
   (	"MEMBER_NO" NUMBER, 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"MEMBER_PW" VARCHAR2(30 BYTE), 
	"MEMBER_NAME" VARCHAR2(20 BYTE), 
	"MEMBER_ADDR" VARCHAR2(100 BYTE), 
	"MEMBER_EMAIL" VARCHAR2(100 BYTE) DEFAULT 'EmailID@Domain.co.kr', 
	"PHONE" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE1
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."NOTICE1" 
   (	"NOTICE_NO" NUMBER, 
	"NOTICE_TITLE" VARCHAR2(1000 BYTE), 
	"NOTICE_WRITER" VARCHAR2(20 BYTE), 
	"NOTICE_CONTENT" VARCHAR2(4000 BYTE), 
	"NOTICE_DATE" CHAR(10 BYTE), 
	"FILENAME" VARCHAR2(500 BYTE), 
	"FILEPATH" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE_COMMENT
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."NOTICE_COMMENT" 
   (	"NC_NO" NUMBER, 
	"NC_LEVEL" NUMBER, 
	"NC_WRITER" VARCHAR2(20 BYTE), 
	"NC_CONTENT" VARCHAR2(1000 BYTE), 
	"NC_DATE" CHAR(10 BYTE), 
	"NOTICE_REF" NUMBER, 
	"NC_REF" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SEMI_KH"."PRODUCT" 
   (	"PRODUCT_NO" NUMBER, 
	"PRODUCT_TITLE" VARCHAR2(1000 BYTE), 
	"PRODUCT_INFO" VARCHAR2(1000 BYTE), 
	"FILENAME" VARCHAR2(500 BYTE), 
	"FILEPATH" VARCHAR2(500 BYTE), 
	"PRODUCT_CONTETNT" LONG, 
	"PRODUCT_SPONS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence ADMIN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."ADMIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DONA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."DONA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FC_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."FC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."FREE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 259 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."LIKE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 158 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE1_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."NOTICE1_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEMI_KH"."PD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into SEMI_KH.ADMIN
SET DEFINE OFF;
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (3,'admin1','1111','������1','01011111111','����� ������ ');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (4,'admin2','2222','������2','01012344321','�λ�� ���� ���ιε�');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (5,'admin3','1234','������3','01093660469','���� ������');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (7,'admin4','4444','������4','01044444444','��õ ���� ����');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (9,'admin5','1234','������5','01011111111','����� ���ʱ�');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (41,'admin77','1234','���ؽ�','01028747801','����');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (44,'test97','1234','����','01012341234','��õ������');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (45,'������������','1234','����','12341234010','����ø�����');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (47,'eunhyeon','1111','����','01022349493','�۵���');
Insert into SEMI_KH.ADMIN (ADMIN_NO,ADMIN_ID,ADMIN_PW,ADMIN_NAME,ADMIN_PHONE,ADMIN_ADDR) values (49,'test1199','1234','������','01022221111','����');
REM INSERTING into SEMI_KH.DONATION
SET DEFINE OFF;
REM INSERTING into SEMI_KH.DONATION_LIST
SET DEFINE OFF;
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (1,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (2,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (3,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (4,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (5,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (6,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (7,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (8,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (9,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (10,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (11,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (12,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (13,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (14,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (15,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (16,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (17,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (18,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (19,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (20,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (21,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (22,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (23,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (24,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (25,'����','���ؽ�','����','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (26,'����12','���ؽ�2212','����2212','2021-05-16',200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (41,'�ູ����','���ؽ�','�ֵ�� �̵����� ���ִ°� �������','2021-05-18',500000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (31,'����','�ۼ���','����','2021-05-17',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (32,'����','�ۼ���','����','2021-05-17',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (33,'����','�ۼ���','����','2021-05-17',500000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (34,'123','123','123','2021-05-17',100000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (35,'�ֵ��','���ؽ�','�ູ���� �ֵ�� ���ھ���','2021-05-17',500000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (36,'�ֵ��','����','������ ���ھ���','2021-05-17',200000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (42,'123','���ؽ�','123','2021-05-18',2500000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (43,'�ֵ��','����','���� ���','2021-05-18',3200000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (44,'�ֵ��','����','������ ���ھ���','2021-05-18',1700000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (48,'�Ǥä�','����','�Ǥä���','2021-05-20',100000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (46,'����','����','�׻� �ູ�Ϸ�!','2021-05-20',30000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (47,'123','����','123','2021-05-20',100000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (49,'�ֵ��','����','�ֵ�� �׻�ǰ��ϰ� ���� ��� �Ƿ�~~','2021-05-20',5000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (50,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (51,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (52,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (53,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (54,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (55,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (56,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (57,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (58,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (59,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (60,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (61,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (62,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (63,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (64,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (65,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (66,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (67,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (68,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (69,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (70,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (71,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (72,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (73,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (74,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (75,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (76,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (77,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (78,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (79,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (80,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (81,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (82,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (83,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (84,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (85,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (86,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (87,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (88,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (89,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (90,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (91,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (92,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (93,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (94,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (95,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (96,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (97,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (98,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (99,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (100,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (101,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (102,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (103,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (104,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (105,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (106,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (107,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',2000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (108,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (109,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',2000000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (110,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (111,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (112,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (113,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (114,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (115,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (116,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (117,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (118,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (119,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (120,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (121,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (122,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (123,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (124,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (125,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (126,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (127,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (128,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (129,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (130,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (131,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (132,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (133,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (134,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (135,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (136,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (137,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (138,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (139,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (140,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (141,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (142,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (143,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (144,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (145,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (146,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (147,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (148,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (149,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (150,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (151,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (152,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (153,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (154,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (155,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (156,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (157,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (158,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (159,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (160,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (161,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (162,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (163,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (164,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (165,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (166,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (167,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (168,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (169,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (170,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (171,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (172,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (173,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (174,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (175,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (176,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (177,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (178,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (179,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (180,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (181,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (182,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (183,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (184,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (185,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (186,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (187,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (188,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (189,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (190,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (191,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (192,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (193,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (194,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (195,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (196,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (197,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (198,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (199,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (200,'���̵��!','���ؽ�','ū���� �ƴ����� �̵����� �ູ������ ���ڴ�!','2021-05-20',10000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (201,'���̵��!','������','��ȥ�� ��θ��ͺ��� �����а� ��θ���;��','2021-05-20',5000000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (202,'���̵��!','�ڼ���','Ŀ�� �� ���� ��� �Ƿ�!','2021-05-20',2000600,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (203,'���̵��!','������','�ֵ�� Ŀ�� �ູ�ϰ�, �ɱ游 ������','2021-05-20',1000000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (204,'���̵��!','�����','�� �̷��� ���� ���� �̼��� �Ŀ��� �մϴ�','2021-05-20',2700000,'���');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (205,'���̵��!','ȫ����','������ ���� ���� �Ŀ��սô�!!!!!','2021-05-20',6060000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (206,'����������','������','�������� �׻� �츮�� ���ݾƿ�!!','2021-05-20',1000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (207,'�ֵ��','���ؽ�','������ �� �̵����� �����ؼ�, �ٸ�������� �����ְŶ�','2021-05-20',100,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (208,'�ֵ��','������','������','2021-05-21',1000,'����');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (209,'�ֵ��','���ؽ�','Ŀ�� �� ���� ��� �Ƿ�~~!!','2021-05-22',1000,'�б� �� ��ü');
Insert into SEMI_KH.DONATION_LIST (DONA_NO,DONA_TITLE,DONA_WRITER,DONA_CONTENT,DONA_DATE,PA_AMOUNT,PA_LEVEL) values (221,'�ֵ��','���ؽ�','ū���� �ƴ����� ������, ���� ��� �Ƿ�!!','2021-05-31',1000,'����');
REM INSERTING into SEMI_KH.FREE
SET DEFINE OFF;
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (238,'�Ϳ��� �Ƶ� ��������','test9','<p><img src="/upload/free/2.jpg" style="width: 650px;"></p><p><br></p><p>�ڽ� Ű�� ������ �������ϴ�~</p>','2021-05-21','2.jpg',6);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (239,'���� ù �����Դϴ�','test111','<p>�� ��Ź�帳�ϴ�!^^</p>','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (240,'�����ϱ� �Ŀ� �ϱ� ���鶧��','test99','�Ѵ޿� �ѹ����ص� ����Ѵ�ϴ�~','2021-05-21',null,5);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (241,'�����Բ��� �Ŀ��ϴ� �ڵ��� �����ϽŴ�ϴ�','test99','<p>�� ŷ�� ���� ^^</p>','2021-05-21',null,3);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (242,'99�� �����ϼž� �ҵ�','test111','<p>���� ȫ����</p>','2021-05-21',null,8);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (243,'�����ֽ��ϴ�','test100','<p>���±��� �Ŀ��� �ݾ� ��������� ���� �����ϳ���?</p>','2021-05-21',null,3);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (244,'��ü�� ��ź������ �Խ��ϴ�','test87','<p><img src="/upload/free/3.jpg" style="width: 512px;"></p><p><br></p><p>�ٵ� �ʹ� �������ؼ� ���� ��İ� �Ǿ��׿�. �ѵ��մϴ�!</p>','2021-05-21','3.jpg',8);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (257,'�ȳ��ϼ���','test77','<p>�̹��� ó������ �Խù��� ����ϴ�!!</p><p>���� ���ֽʽÿ�!!</p><p>&nbsp;<img src="/upload/free/47A44A49-3DE0-4E86-818D-1F9382B949CF.jpg" style="width: 50%;"></p>','2021-05-22','47A44A49-3DE0-4E86-818D-1F9382B949CF.jpg',2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (250,'��,�Խ���! ������','dkdlel1','<p><img src="/upload/free/dog.jpg" style="width: 614px;"><br></p>','2021-05-21','dog.jpg',8);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (251,'�Ŀ��޽��ϴ�','asd123','<p>�Ŀ����� : 1002-856-418194 �츮����</p><p> �ҿ��̿� �����ּ���</p>','2021-05-21',null,11);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (252,'�ְ� ������ ��������','kyc6913','<p>���� ����<img src="/upload/free/���4.jpg" style="width: 1088px;"></p>','2021-05-21','���4.jpg',8);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (253,'�� �ƶ��� ����� ���Ͷ�','��������','<p>�ƶ��̶�� ?</p>','2021-05-21',null,5);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (254,'�� �������ε� �ָ���� ū�ϳ��� ���� ? �Ĺ����� �ٵ� ���տ��� �ɱ׸���ٴѴ�','��������','<p>���� ? �Ĺ����� �ٵ� ���տ��� �ɱ׸���ٴѴ�</p>','2021-05-21',null,4);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (256,'������ �� ������ ����?','��������','<p>����^^</p>','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (138,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,3);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (139,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (140,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (141,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (143,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (144,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (145,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (146,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (148,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (149,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (150,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (151,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (153,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (154,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (155,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (156,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (158,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (159,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (160,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (161,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (163,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (164,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (165,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (166,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (168,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (169,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (170,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (171,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (173,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (174,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (175,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (176,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (178,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (179,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (180,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (181,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (183,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (184,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (185,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (186,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (188,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (189,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (190,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (191,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (193,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (194,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (195,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (196,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,11);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (198,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (199,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (200,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (201,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (203,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (204,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,11);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (205,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (206,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (208,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (209,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (210,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (211,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (213,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (214,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (215,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (216,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (218,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (219,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (220,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,7);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (221,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (223,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (224,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,10);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (225,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (226,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,9);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (228,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�','2021-05-21',null,4);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (229,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���','2021-05-21',null,12);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (230,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����','2021-05-21',null,11);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (231,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������','2021-05-21',null,58);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (235,'��ź �ϰ� �Ծ��~','test88','<p><img src="/upload/free/1111.jpg" style="width: 320px;"><br></p><p><br></p><p><br></p><p>���� ���� �������� ���� ����޴ºе��� ������ ������������ ���ھ�� ^^</p>','2021-05-21','1111.jpg',2);
Insert into SEMI_KH.FREE (FREE_NO,FREE_TITLE,FREE_WRITER,FREE_CONTENT,FREE_DATE,FILEPATH,READ_COUNT) values (237,'***��ο� ����� ����Խ��ϴ�','test77','<p><br></p><p><img src="/upload/free/1.jpg" style="width: 277px;"></p><p><br></p><p><br></p><p>���� �ǰ��ϼ���!</p>','2021-05-21','1.jpg',4);
REM INSERTING into SEMI_KH.FREE_COMMENT
SET DEFINE OFF;
REM INSERTING into SEMI_KH.FREE_LIKE
SET DEFINE OFF;
Insert into SEMI_KH.FREE_LIKE (FL_NO,FREE_REF,MEMBER_ID) values (152,251,'asd123');
Insert into SEMI_KH.FREE_LIKE (FL_NO,FREE_REF,MEMBER_ID) values (150,235,'test88');
Insert into SEMI_KH.FREE_LIKE (FL_NO,FREE_REF,MEMBER_ID) values (153,250,'kyc6913');
Insert into SEMI_KH.FREE_LIKE (FL_NO,FREE_REF,MEMBER_ID) values (156,253,'user0001');
Insert into SEMI_KH.FREE_LIKE (FL_NO,FREE_REF,MEMBER_ID) values (157,250,'user0001');
REM INSERTING into SEMI_KH.MEMBER
SET DEFINE OFF;
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (39,'test88','1234','���','�λ�','dun13@naver.com','01055556666');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (12,'test100','1234','ȸ�����Լ���','�ƶ�','mansuru@gmail.com','01082825353');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (42,'test9','1234','����','���','ooo@naver.com','01088889999');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (5,'test77','1234','���ؽ�','����','tjwnstlr3459@naver.com','01028747801');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (6,'test99','1234','���ؽ�','����','EmailID@Domain.co.kr','01028747801');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (14,'test98','1234','Ȯ��2','����','ddd@naver.com','01066644445');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (43,'test119','1234','���ؼ�','��õ��','tjwnstlr3459@naver.com','01028747801');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (44,'test111','1234','���','���','ede@gmail.com','01012346547');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (24,'admin','1234','������','�����','admin@naver.com','01012342345');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (45,'test87','1234','Ȯ��5','����','dun13@naver.com','010464648131');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (46,'hiHI123','1234','���鳪�Ծ�','�����������������!','sadasd@naver.com','01011112222');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (48,'dkdlel1','1234','�̸�','�ּ�','email@e.com','01000000000');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (50,'dkssud','dkssud','�谡��','��õ','dkssud@naver.com','01022323232');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (51,'asd123','1234','�Ŀ��޾ƿ�','asd','asd@naver.com','0101113331');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (52,'kyc6913','1234','dyd','11','1@11.com','0101111111');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (60,'��������','1234','������','happycity','11@happy.hmm','01011112222');
Insert into SEMI_KH.MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_ADDR,MEMBER_EMAIL,PHONE) values (61,'user0001','1234','����1','1','1@2','1');
REM INSERTING into SEMI_KH.NOTICE1
SET DEFINE OFF;
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (47,'��������47','admin1','���볻�볻�볻��47','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (48,'��������48','admin1','���볻�볻�볻��48','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (49,'��������49','admin1','���볻�볻�볻��49','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (50,'��������50','admin1','���볻�볻�볻��50','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (51,'��������51','admin1','���볻�볻�볻��51','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (52,'��������52','admin1','���볻�볻�볻��52','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (53,'��������53','admin1','���볻�볻�볻��53','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (54,'��������54','admin1','���볻�볻�볻��54','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (55,'��������55','admin1','���볻�볻�볻��55','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (56,'��������56','admin1','���볻�볻�볻��56','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (57,'��������57','admin1','���볻�볻�볻��57','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (58,'��������58','admin1','���볻�볻�볻��58','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (59,'��������59','admin1','���볻�볻�볻��59','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (60,'��������60','admin1','���볻�볻�볻��60','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (61,'��������61','admin1','���볻�볻�볻��61','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (62,'��������62','admin1','���볻�볻�볻��62','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (63,'��������63','admin1','���볻�볻�볻��63','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (64,'��������64','admin1','���볻�볻�볻��64','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (65,'��������65','admin1','���볻�볻�볻��65','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (66,'��������66','admin1','���볻�볻�볻��66','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (67,'��������67','admin1','���볻�볻�볻��67','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (68,'��������68','admin1','���볻�볻�볻��68','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (69,'��������69','admin1','���볻�볻�볻��69','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (70,'��������70','admin1','���볻�볻�볻��70','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (71,'��������71','admin1','���볻�볻�볻��71','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (72,'��������72','admin1','���볻�볻�볻��72','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (73,'��������73','admin1','���볻�볻�볻��73','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (74,'��������74','admin1','���볻�볻�볻��74','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (75,'��������75','admin1','���볻�볻�볻��75','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (76,'��������76','admin1','���볻�볻�볻��76','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (77,'��������77','admin1','���볻�볻�볻��77','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (78,'��������78','admin1','���볻�볻�볻��78','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (79,'��������79','admin1','���볻�볻�볻��79','2021-05-19','IMG_0980.JPG','IMG_09801.JPG');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (80,'��������80','admin1','���볻�볻�볻��80','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (81,'��������81','admin1','���볻�볻�볻��81
]
��
��
��

����
��

��
��
��
��������
��������
������
��
��
������
��
������
��
������
��������','2021-05-19','����','����');
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (95,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (96,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (97,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (98,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (99,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (100,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (101,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (102,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (103,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (104,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (105,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (106,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (107,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (108,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (109,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (110,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (111,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (112,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (113,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (114,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (115,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (116,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (117,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (118,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (119,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (120,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (121,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (122,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (123,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (124,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (125,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (126,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (127,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (128,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (129,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (130,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (131,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (132,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (133,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (134,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (135,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (136,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (137,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (138,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (139,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (140,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (141,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (142,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (143,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (144,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (145,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (146,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (147,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (148,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (149,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (150,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (151,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (152,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (153,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (154,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (155,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (156,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (157,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (158,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (159,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (160,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (161,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (162,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (163,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (164,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (165,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (166,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (167,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (168,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (169,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (170,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (171,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (172,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (173,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (174,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (175,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (176,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
Insert into SEMI_KH.NOTICE1 (NOTICE_NO,NOTICE_TITLE,NOTICE_WRITER,NOTICE_CONTENT,NOTICE_DATE,FILENAME,FILEPATH) values (177,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!','2021-05-21',null,null);
REM INSERTING into SEMI_KH.NOTICE_COMMENT
SET DEFINE OFF;
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (56,1,'test99','��۴��(���̵� �ٸ�)','2021-05-20',55,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (57,2,'test99','�눱���� ����','2021-05-20',55,56);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (63,1,'test99','���ߴ޷��� ��¥ *?.����?????����.?*

','2021-05-20',81,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (66,1,'test99','���� ��� �޸�������¥�� *?.����?????����.?*

','2021-05-20',81,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (67,2,'test99','�� �����ȳ�','2021-05-20',81,66);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (68,1,'test98','����!','2021-05-20',75,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (69,1,'test98','��������','2021-05-20',78,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (70,1,'test98','��������','2021-05-20',73,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (71,2,'test98','������ ���
','2021-05-20',73,70);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (72,1,'test98','�� ��¥ ���� �Ƕ�','2021-05-20',78,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (77,1,'test98','����','2021-05-20',77,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (78,1,'test98','����','2021-05-20',77,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (79,2,'test98','������������','2021-05-20',77,77);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (83,1,'test99','zz','2021-05-20',72,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (91,1,'test99','����������������','2021-05-20',79,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (192,1,'��������','��Ʋ������ �ֳ��� ? ����','2021-05-21',177,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (92,1,'test98','������������ ��¥ ���� ���� ��¥;;;;;;;�� ���ߤ���������','2021-05-20',80,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (94,1,'test98','����~~~����󠺴�~~~~~','2021-05-21',81,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (191,1,'��������','��Ʋ������ �ֳ��� ? ����','2021-05-21',177,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (193,1,'��������','��Ʋ������ �ֳ��� ? ����','2021-05-21',177,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (194,1,'��������','��Ʋ������ �ֳ��� ? ����','2021-05-21',177,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (195,1,'��������','��Ʋ������ �ֳ��� ? ����','2021-05-21',177,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (196,1,'��������','�ȳ��ϼ��� �����Դϴ�','2021-05-21',175,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (197,1,'��������','�ȳ��ϼ��� �����Դϴ�2222','2021-05-21',175,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (198,1,'��������','�ȳ��ϼ��� �����Դϴ�333','2021-05-21',175,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (199,1,'��������','�ȳ��ϼ��� �����Դϴ�4444','2021-05-21',175,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (200,1,'��������','�ȳ��ϼ��� �����Դϴ�55555','2021-05-21',175,null);
Insert into SEMI_KH.NOTICE_COMMENT (NC_NO,NC_LEVEL,NC_WRITER,NC_CONTENT,NC_DATE,NOTICE_REF,NC_REF) values (201,1,'kyc6913','����..','2021-05-21',177,null);
REM INSERTING into SEMI_KH.PRODUCT
SET DEFINE OFF;
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (55,'''ī�᷹��'' ������ ���̽�','��������','����-����-2_0008_ī�᷹��1.png.jfif','����-����-2_0008_ī�᷹��1.png7.jfif','test','��ľƵ�');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (54,'''ġ��'' [����ߡ����⹦ �Ŀ�]','��������','ũ��_0020_ġ��1.png.jpg','ũ��_0020_ġ��1.png7.jpg','test','���⵿��');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (56,'''�������� Ǫ��'' ���̽�','��������','Ǫ��.png','Ǫ��.png','test','���⵿��');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (57,'''����� ����'' ����Ʈ��','��������','�����.png','�����.png','test','��ľƵ�');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (58,'''���Ⱥ�'' ���� �ҸӴ� �Ŀ� Ű��','��������','1621577775008.png','1621577775008.png','test','��Ÿ');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (59,'''������'' ','��������','img02.jpg','img02.jpg','test','��ľƵ�');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (60,'''����'' ����Ʈ��','��������','1621578126361.png','1621578126361.png','test','��ľƵ�');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (63,'�������Է��մϴ�.','��������','img01.jpg','img01.jpg','test','��ľƵ�');
Insert into SEMI_KH.PRODUCT (PRODUCT_NO,PRODUCT_TITLE,PRODUCT_INFO,FILENAME,FILEPATH,PRODUCT_CONTETNT,PRODUCT_SPONS) values (81,'test','��������','img01.jpg','img012.jpg','test','��ľƵ�');
--------------------------------------------------------
--  Constraints for Table NOTICE_COMMENT
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."NOTICE_COMMENT" ADD PRIMARY KEY ("NC_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."NOTICE_COMMENT" MODIFY ("NC_CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREE_COMMENT
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE_COMMENT" ADD PRIMARY KEY ("FC_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."FREE_COMMENT" MODIFY ("FC_CONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREE_LIKE
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE_LIKE" ADD PRIMARY KEY ("FL_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."PRODUCT" ADD PRIMARY KEY ("PRODUCT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."PRODUCT" MODIFY ("PRODUCT_SPONS" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."PRODUCT" MODIFY ("PRODUCT_CONTETNT" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."PRODUCT" MODIFY ("PRODUCT_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DONATION
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_PRICE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_PW" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_KIND" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_USE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PATRON" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION" MODIFY ("PA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREE
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE" ADD PRIMARY KEY ("FREE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."FREE" MODIFY ("FREE_DATE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."FREE" MODIFY ("FREE_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."ADMIN" ADD UNIQUE ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."ADMIN" ADD PRIMARY KEY ("ADMIN_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."ADMIN" MODIFY ("ADMIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."ADMIN" MODIFY ("ADMIN_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE1
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."NOTICE1" ADD PRIMARY KEY ("NOTICE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."NOTICE1" MODIFY ("NOTICE_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DONATION_LIST
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."DONATION_LIST" MODIFY ("DONA_DATE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION_LIST" MODIFY ("DONA_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION_LIST" MODIFY ("DONA_WRITER" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION_LIST" MODIFY ("DONA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."DONATION_LIST" MODIFY ("DONA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."MEMBER" ADD UNIQUE ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."MEMBER" ADD PRIMARY KEY ("MEMBER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SEMI_KH"."MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SEMI_KH"."MEMBER" MODIFY ("MEMBER_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FREE
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE" ADD FOREIGN KEY ("FREE_WRITER")
	  REFERENCES "SEMI_KH"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FREE_COMMENT
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE_COMMENT" ADD FOREIGN KEY ("FC_WRITER")
	  REFERENCES "SEMI_KH"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SEMI_KH"."FREE_COMMENT" ADD FOREIGN KEY ("FREE_REF")
	  REFERENCES "SEMI_KH"."FREE" ("FREE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SEMI_KH"."FREE_COMMENT" ADD FOREIGN KEY ("FC_REF")
	  REFERENCES "SEMI_KH"."FREE_COMMENT" ("FC_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FREE_LIKE
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."FREE_LIKE" ADD FOREIGN KEY ("FREE_REF")
	  REFERENCES "SEMI_KH"."FREE" ("FREE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SEMI_KH"."FREE_LIKE" ADD FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SEMI_KH"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE1
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."NOTICE1" ADD FOREIGN KEY ("NOTICE_WRITER")
	  REFERENCES "SEMI_KH"."ADMIN" ("ADMIN_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE_COMMENT
--------------------------------------------------------

  ALTER TABLE "SEMI_KH"."NOTICE_COMMENT" ADD FOREIGN KEY ("NC_WRITER")
	  REFERENCES "SEMI_KH"."MEMBER" ("MEMBER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SEMI_KH"."NOTICE_COMMENT" ADD FOREIGN KEY ("NOTICE_REF")
	  REFERENCES "SEMI_KH"."NOTICE1" ("NOTICE_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SEMI_KH"."NOTICE_COMMENT" ADD FOREIGN KEY ("NC_REF")
	  REFERENCES "SEMI_KH"."NOTICE_COMMENT" ("NC_NO") ON DELETE CASCADE ENABLE;
