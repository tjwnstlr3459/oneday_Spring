CREATE TABLE USER_TBL(

USER_NO NUMBER PRIMARY KEY,

USER_ID VARCHAR2(20) UNIQUE NOT NULL,

USER_NAME VARCHAR2(20) NOT NULL,

USER_AGE NUMBER NOT NULL

);

CREATE SEQUENCE USER_SEQ;

INSERT INTO USER_TBL VALUES(USER_SEQ.NEXTVAL,'je_lee','������',27);
INSERT INTO USER_TBL VALUES(USER_SEQ.NEXTVAL,'bg park','�ں���',27);
INSERT INTO USER_TBL VALUES(USER_SEQ.NEXTVAL,'th kim','��',25);

select*from USER_TBL;