CREATE TABLE MEMBER(
    USER_NO            INT               NOT NULL, 
    EMAIL              VARCHAR2(40)      NOT NULL, 
    USER_PW            VARCHAR2(30)      NOT NULL, 
    USER_NICK          VARCHAR2(40)      UNIQUE, 
    GENDER             CHAR(3)           NOT NULL, 
    AGE                INT               NOT NULL, 
    ADDRESS            VARCHAR2(1000)    NOT NULL, 
    INTRODUCTION       VARCHAR2(2000)    NOT NULL, 
    INTEREST1          VARCHAR2(20)      NOT NULL, 
    INTEREST2          VARCHAR2(20)      NOT NULL, 
    INTEREST3          VARCHAR2(20)      NOT NULL, 
    FILENAME           VARCHAR2(500)     NULL, 
    USER_PIC           VARCHAR2(500)     NULL, 
    USER_PATH          CHAR(10)          NOT NULL, 
    VIOLATION_COUNT    INT               NOT NULL, 
    CONNECTION         CHAR(1)           NOT NULL, 
    USER_GRADE         NUMBER            NOT NULL, 
    RECENT_LOGIN       CHAR(10)          NOT NULL, 
    CONSTRAINT PK_ PRIMARY KEY (USER_NO)
);
--�޷� ���̺� ����
CREATE TABLE CALENDAR(
    CAL_NO       INT               NOT NULL, 
    CLUB_NO      INT               NOT NULL, 
    CAL_TITLE    VARCHAR2(1000)    NOT NULL, 
    CAL_BACK     VARCHAR2(20)      NULL, 
    CAL_FONT     VARCHAR2(20)      NULL, 
    CAL_START    CHAR(10)          NOT NULL, 
    CAL_END      CHAR(10)          NULL, 
     PRIMARY KEY (CAL_NO)
);
CREATE SEQUENCE CAL_SEQ;




CREATE SEQUENCE MEMBER_SEQ;
INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'tjwnstlr3459@naver.com',
    '1234',
    '�ٶ�����',
    'M',
    '22',
    '����',
    '�ȳ��ϼ��� ���ؽ��Դϴ�.',
    '#����',
    '#�米',
    '#�ο�',
    null,
    null,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
    0,
    'N',
    3,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
commit;
SELECT * FROM MEMBER;
--DROP TABLE MEMBER;
--DROP SEQUENCE MEMBER_SEQ;
COMMIT;
    
CREATE TABLE CATEGORY(
CG_NO       NUMBER PRIMARY KEY,
CG_NAME     VARCHAR2(20) UNIQUE,
CG_KINDS    NUMBER NOT NULL
);


CREATE SEQUENCE CG_NO_SEQ;
CREATE SEQUENCE CG_KINDS_SEQ;

INSERT INTO CATEGORY VALUES(CG_NO_SEQ.NEXTVAL,'������',CG_KINDS_SEQ.NEXTVAL);

SELECT*FROM CATEGORY;

CREATE TABLE CLUB(
    CLUB_NO     NUMBER PRIMARY KEY,
    CLUB_CG     VARCHAR2(20) REFERENCES CATEGORY(CG_NAME) ON DELETE CASCADE,
    CLUB_NAME   VARCHAR2(1000) UNIQUE,
    CLUB_INTRO  VARCHAR2(2000),
    CLUB_OPENER VARCHAR2(40) NOT NULL,
    CLUB_PIC    VARCHAR2(500),
    CLUB_PATH   VARCHAR2(500),
    CLUB_GRADE  NUMBER  NOT NULL,
    CLUB_DATE   CHAR(10) NOT NULL,
    ACTIVITY_DATE   CHAR(10) NOT NULL,
    ISPUBLIC    CHAR(1)NOT NULL
);
DROP TABLE CLUB;

CREATE SEQUENCE CLUB_NO_SEQ;
CREATE SEQUENCE CLUB_GRADE_SEQ;

INSERT INTO CLUB VALUES(CLUB_NO_SEQ.NEXTVAL,
'������','��������ȣȸ','�������� ����ϴ¸���',
'����01','NULL','NULL',CLUB_GRADE_SEQ.NEXTVAL,'6�� 17��','6�� 17��','Y');

CREATE TABLE CLUB_MEMBER(
    CM_NO   NUMBER  PRIMARY KEY,
    CLUB_NAME   VARCHAR2(1000) UNIQUE REFERENCES CLUB(CLUB_NAME) ON DELETE CASCADE,
    CLUB_NICK   VARCHAR2(40) UNIQUE REFERENCES MEMBER(USER_NICK) ON DELETE CASCADE,
    ACCEPT      CHAR(1) NOT NULL,
    CM_DATE     CHAR(10) NOT NULL
);
CREATE SEQUENCE CM_NO_SEQ;
DROP TABLE CLUB_MEMBER;
DROP SEQUENCE CM_NO_SEQ;

INSERT INTO CLUB_MEMBER VALUES(CLUB_NO_SEQ.NEXTVAL,
'��������ȣȸ','�ٶ�����','Y','6�� 17��');

CREATE TABLE INVITE(
    INVITE_NO   NUMBER  PRIMARY KEY,
    INVITE_CLUB   VARCHAR2(1000) REFERENCES CLUB_MEMBER(CLUB_NAME) ON DELETE CASCADE,
    INVITER       VARCHAR2(40) REFERENCES CLUB_MEMBER(CLUB_NICK) ON DELETE CASCADE,
    RECEIVER      VARCHAR2(40) REFERENCES MEMBER(USER_NICK) ON DELETE CASCADE
);

SELECT * FROM MEMBER;
SELECT * FROM CLUB;
SELECT * FROM CLUB_BOARD;

INSERT INTO CATEGORY VALUES(
    CG_SEQ.NEXTVAL,
    '����',
    1
);
SELECT * FROM CATEGORY;
SELECT * FROM CLUB;
INSERT INTO CLUB_BOARD VALUES(
    CB_SEQ.NEXTVAL,
    42,
    4,
    '����3',
    '����3�� ����',
    '��Ʈ����� �غ���',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
);
COMMIT;
insert into club_board values(
    CB_SEQ.NEXTVAL,
    6,
    5,
    '����3',
    '�뷡 �� ����',
    '������-�����ο� ������',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
    );

COMMIT;
select * from CATEGORY;

SELECT * FROM CLUB_BOARD;
select * from USER_SEQUENCES; -- ������ Ȯ��

DESC MEMBER;
SELECT * FROM MEMBER;

SELECT MEMBER_NICK FROM MEMBER WHERE MEMBER_NICK='����3'; --����3ã��
SELECT * FROM CLUB_MEMBER WHERE CLUB_NICK='����3'; --Ŭ������� ����3ã��

--Ŭ������� ����3�� ���� ���ӳѹ� ���
SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3';
SELECT * FROM CLUB;
SELECT * FROM CLUB_MEMBER;
INSERT INTO CLUB_MEMBER VALUES(CM_SEQ.NEXTVAL,6,'����3',TO_CHAR(SYSDATE,'YYYY-MM-DD'));
COMMIT;

--Ŭ���� ����3�� ���� Ŭ������ ���
SELECT * FROM CLUB WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK=(SELECT MEMBER_NICK FROM MEMBER WHERE MEMBER_NICK='����3'));
SELECT * FROM CLUB WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

SELECT COUNT(*) FROM CLUB_BOARD WHERE BOARD_WRITER='����3';

--���� Ŭ���� �Խù� �ҷ�����
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as clubMember,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3') ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 5;

--���� Ŭ���� �Խù��� �ι�� ������ �����˾Ƴ���
SELECT * FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

--Ŭ�� �Խù�����
SELECT * FROM CLUB_BOARD;
SELECT * FROM CLUB;

SELECT * FROM MEMBER;

DESC CLUB_BOARD;
select * from member;
select * from club;
select * from club_board;
SELECT * FROM CATEGORY;
UPDATE MEMBER SET HOBBY1='����', HOBBY2='������',HOBBY3='��ȭ';
SELECT * FROM CLUB;
COMMIT;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

SELECT COUNT(*) FROM CLUB_BOARD WHERE BOARD_WRITER='����3';

--�ֽŰԽù� ��ȣ ���
select max(board_no) from club_board;


SELECT * FROM MEMBER;
SELECT * FROM CATEGORY;

(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3') ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 5;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');


--�������� �Խù� �ֽż� ������ 10���� ���
SELECT
    AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM BOARD where ab_cg=14 ORDER BY AB_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;

SELECT 
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N) WHERE CLUB_NO=6 AND RNUM BETWEEN 1 AND 5;

from club_board where club_no=6)p* and from rnum between 1 and 5;


SELECT count(*) FROM ADMIN_BOARD;

--���� ��ü �Խñ� ���
SELECT
	AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM BOARD;

SELECT * FROM CATEGORY;

DESC BOARD;
--BOARD �Խñ� �߰�
INSERT INTO BOARD VALUES(
    AB_SEQ.NEXTVAL,
    3,
    '����3',
    '�Ű��Ұ� �ֽ��ϴ�.',
    '���� �����ϴ� ���۳���~~',
    NULL,
    NULL,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
COMMIT;
SELECT count(*) FROM BOARD WHERE AB_CG=14;
SELECT * FROM BOARD;
SELECT
    AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM BOARD ORDER BY AB_NO DESC)N)WHERE RNUM BETWEEN 1 AND 10;

SELECT * FROM CLUB_BOARD;

--Ŭ���Խù�
SELECT * FROM CLUB_BOARD WHERE BOARD_CG=14;
--ī�װ�
SELECT * FROM CATEGORY;

--��۳־��
INSERT INTO ANSWER VALUES(
    ANSWER_SEQ.NEXTVAL,
    59,
    '����3',
    '������ ���� ���ҹ��',
    NULL,
    NULL,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
'N');
COMMIT;

SELECT * FROM ANSWER;

SELECT * FROM USER_SEQUENCES; -- ������ ���� ã��

--�ش� �Խù� ��۵� ã��
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNik,
    b.filepath as filepath
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;

SELECT * FROM MEMBER;


SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

--Ư�� �����Խù� �� ��۵� ���
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNick,
    b.filepath as filepath
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;
select * from answer;
select * from member;

--��¥ �˻� ����
create table test1(
    tt char(10)
);
drop table test1;
insert into test1 values(to_char(sysdate-7,'YYYY-MM-DD'));
select * from test1;

select * From test1 where tt between to_char(sysdate-7,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');

--���� ������ ���� ������Ʈ
update member set filename='man2.png', filepath='man2.png' where filename=null;
select * from member;
commit;

INSERT INTO ANSWER VALUES(
    
);
--Ư�� �Խù��� �ִ� �� ��۰� ����ۼ����� ����
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNick,
    b.filepath as pic
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;

SELECT * FROM USER_SEQUENCES;

--�������� ���
INSERT INTO BOARD VALUES(
    AB_SEQ.NEXTVAL(),

);
SELECT * FROM CATEGORY;
SELECT * FROM BOARD;
--���� �ֽŰԽù� ��ȣ�˾Ƴ���
SELECT MAX(AB_NO) FROM BOARD; 

	INSERT INTO BOARD VALUES(
		AB_SEQ.NEXTVAL(),
		14,
		'admin1',
		'dd',
		'ww',
		null,
		null,
to_char(sysdate,'yyyy-mm-dd'));


SELECT 
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT ROWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N) WHERE CLUB_NO=2 AND RNUM BETWEEN 1 AND 10;

SELECT * FROM CATEGORY;

select * from board;
delete from board where ab_no=83;
commit;

UPDATE BOARD SET ab_Title='�������', ab_content='�������' where ab_no=103;
commit;

--������ ���� ��� Ŭ������ ���
select * from club;
	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		FILENAME,  
		FILEPATH, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '����3');
    
select * from club;

--Ŭ���� ��� �߰�
insert into club_member values(
    cm_seq.nextval,
    42,
    '����3',
    to_char(sysdate,'yyyy-mm-dd')
);

commit;
select * from user_sequences;

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');


select * from club_board;
commit;
select * from club;
select * from member;
select * from category;
select * from club_member;

insert into club_board values(
    CB_SEQ.NEXTVAL,
    42,
    4,
    '����3',
    '������ �Խù�',
    '������ �����̴�',
    null,
    null,
    0,
    0,
to_char(sysdate,'yyyy-mm-dd'));
commit;
select * from club where club_no=42;

select * from club_board;

--�ش�Ŭ���� �Խù� �־��ֱ�
INSERT INTO CLUB_BOARD VALUES(
    CB_SEQ.NEXTVAL,
    1,
    5,
    '����3',
    '����3�� ����',
    '�ڵ� ��ũ�� ������ �׽�Ʈ',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
);

select * from club_board;


--������ ������
--ó���� Ŭ���ѹ��� 38�ۿ� ���� �Խù��߿��� rnum between���� ã������ �Խù� ����� ������
--42���� ���� �ٸ� �Խù����� rnum�� �����ϱ⶧���� 38���� ã�� �츮���״� ������ �ʾҴ����̴�!
--�׷��� board_no=38�� �ٱ��� �ƴ� ���ʿ� �̸� ã�� ������, �ٱ����� rnum���� between���� ã�°��̴�
SELECT 
rnum,
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT ROWNUM AS RNUM, N.* FROM
(SELECT * FROM club_board WHERE CLUB_NO=38 ORDER BY CLUB_NO DESC)N) where RNUM BETWEEN 1 AND 3;;

 and 

select * from  
(
SELECT ROWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N
) where (rnum between 1 and 3);


--��¥�� ����Ʈ ���
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3' AND enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
) ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3' AND enroll_date BETWEEN to_char(sysdate,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');

update club_board set board_title='�̰�4��',enroll_date=to_char(sysdate-15,'yyyy-mm-dd') where board_no=103;

commit;

select b.board_no, b.board_title from club_board b
join club c using (club_no)
where c.CLUB_NICK='����3'
order by enroll_date desc;
commit;

desc club;
desc club_board;
--��¥ �˻� ����
create table test1(
    tt char(10)
);

--��¥ �˻� ����(���̺� ���� ����)
drop table test1;
insert into test1 values(to_char(sysdate-7,'YYYY-MM-DD'));
select * from test1;
select * From test1 where tt between to_char(sysdate-7,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');
SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3' AND enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');


--��¥�� �������� Ŭ������ �Խù� ��ȸ�ϱ�
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

--���Խ�û���̺� �λ縻 �÷� �߰��ϱ�
ALTER TABLE INVITE_APPLY ADD(IA_DATE CHAR(10));

DESC INVITE_APPLY;
SELECT * FROM USER_SEQUENCES;

SELECT *FROM CLUB;

--�ش� Ŭ���� ȸ�����Խ�û�ֱ�
INSERT INTO INVITE_APPLY VALUES(
    IA_SEQ.NEXTVAL,
    38,
    '����3',
    'N',
    '38��Ŭ���ѹ��� ���� ���⿡ ���Խ�û�մϴ�.',
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);
commit;
--�ش� Ŭ���� ȸ�� �ֱ�
INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    38,
    '����3',
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);

select * from member;
rollback;
COMMIT;

UPDATE INVITE_APPLY SET IA_DATE = TO_CHAR(SYSDATE,'YYYY-MM-DD');
--��û��� ���
SELECT 
    invite_no as iaNo,
    invite_cn as clubNo,
    receiver as receiver,
    type as iaType,
    ia_content as iaContent,
    ia_date as iaDate
FROM INVITE_APPLY WHERE INVITE_CN=38;

desc club_member;

--��û��� ����
DELETE FROM INVITE_APPLY  WHERE INVITE_CN=38 AND INVITE_NO=56;
rollback;
--��û��� ��ȸ
SELECT * FROM INVITE_APPLY;

INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    38,
    (SELECT receiver FROM INVITE_APPLY where invite_cn = 38 and invite_no=11),
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);
SELECT * FROM CLUB_MEMBER;



select * from club_member;

--38��Ŭ���� �����ο� ���
select 
    cm_no as cmNo,
    club_no as clubNo,
    club_nick as clubNick,
    enroll_date as cmDate
from club_member where clubNo=38;

select * from club_board;
delete from club_board where board_no=67;
COMMIT;

--38�� Ŭ���� �����ο� ���(member�� �ڱ�Ұ�)
select 
    A.cm_no as cmNo,
    A.club_no as clubNo,
    A.club_nick as clubNick,
    A.enroll_date as cmDate,
    B.INTRO
from club_member A, MEMBER B where A.CLUB_NICK = B.MEMBER_NICK AND club_no=38;

SELECT * FROM MEMBER;
select * from club_board;
select* from category;
SELECT * FROM CALENDAR;

SELECT * FROM CATEGORY;
SELECT * FROM MEMBER;

SELECT CG_NAME FROM CATEGORY WHERE CG_NO IN(SELECT HOBBY1 FROM MEMBER WHERE MEMBER_NICK='����3');

--����� ���ɻ� �±�
SELECT MEMBER_NICK,HOBBY1,HOBBY2,HOBBY3 FROM MEMBER WHERE MEMBER_NICK='����3';
DESC MEMBER;

SELECT 
member_no as memberNo,
       email,
       member_pw as memberPw,
       member_nick as memberNick,
       gender,
       address,
       intro,
       hobby1,
       hobby2,
       hobby3,
       filename,
       filepath,
       warning_count as warningCount,
       grade,
       enroll_date as enrollDate,
       last_date as lastDate,
       age,
       join_method as joinMethod,
    CASE HOBBY1 
        WHEN 4 THEN '������'
        WHEN 5 THEN '����'
        WHEN 6 THEN '����'
        WHEN 7 THEN '�ڿ�'
        WHEN 8 THEN '����'
        WHEN 9 THEN '��ȭ'
        WHEN 10 THEN '��'
        WHEN 11 THEN '����' END AS HO1,
    CASE HOBBY2 
        WHEN 4 THEN '������'
        WHEN 5 THEN '����'
        WHEN 6 THEN '����'
        WHEN 7 THEN '�ڿ�'
        WHEN 8 THEN '����'
        WHEN 9 THEN '��ȭ'
        WHEN 10 THEN '��'
        WHEN 11 THEN '����' END AS HO2,
    CASE HOBBY3 
        WHEN 4 THEN '������'
        WHEN 5 THEN '����'
        WHEN 6 THEN '����'
        WHEN 7 THEN '�ڿ�'
        WHEN 8 THEN '����'
        WHEN 9 THEN '��ȭ'
        WHEN 10 THEN '��'
        WHEN 11 THEN '����' END AS HO3
FROM MEMBER;

SELECT HOBBY1,HOBBY2,HOBBY3 DECODE(
    HOBBY1, 4, '������',
            5, '����',
            6, '����',
            7, '�ڿ�',
            8, '����',
            9, '��ȭ',
            10, '��',
            11, '����')NAME FROM MEMBER;

select 
		    distinct
		    (select count(*) from member) allMemberCount,
		    (select count(*) from destroy) destroyedMemberCount,
		    (select count(*) from restriction) restrictedMemberCount,
		    (select count(*) from club) allClubCount,
		    (select count(*) from member where hobby1=4 or hobby2=4 or hobby3=4) memberSports,
		    (select count(*) from member where hobby1=5 or hobby2=5 or hobby3=5) memberMusic,
		    (select count(*) from member where hobby1=6 or hobby2=6 or hobby3=6) memberTravel,
		    (select count(*) from member where hobby1=7 or hobby2=7 or hobby3=7) memberNature,
		    (select count(*) from member where hobby1=8 or hobby2=8 or hobby3=8) memberGame,
		    (select count(*) from member where hobby1=9 or hobby2=9 or hobby3=9) memberMovie,
		    (select count(*) from member where hobby1=10 or hobby2=10 or hobby3=10) memberBear,
		    (select count(*) from member where hobby1=11 or hobby2=11 or hobby3=11) memberEat,
		    (select count(*) from member where age=10) teenagers,
		    (select count(*) from member where age=20) twenties,
		    (select count(*) from member where age=30) thirties,
		    (select count(*) from member where age=40) forties,
		    (select count(*) from club where club_no=4) clubSports,
		    (select count(*) from club where club_no=5) clubMusic,
		    (select count(*) from club where club_no=6) clubTravel,
		    (select count(*) from club where club_no=7) clubNature,
		    (select count(*) from club where club_no=8) clubGame,
		    (select count(*) from club where club_no=9) clubMovie,
		    (select count(*) from club where club_no=10) clubBear,
		    (select count(*) from club where club_no=11) clubEat    
		from dual;

select * from member;
select * from club_member;

SELECT ename
     , sal
     , ROUND(RATIO_TO_REPORT(sal) OVER(), 2) * 100 || '%'  AS sal_rate
  FROM emp
 WHERE job = '����3';
 
 SELECT * FROM CLUB;
 SELECT * FROM CLUB_BOARD;
--�� Ŭ���� �Խù� �Ѽ� ���
SELECT COUNT(*) FROM CLUB_BOARD WHERE CLUB_NO IN(38,42);
SELECT COUNT(*) FROM CLUB_BOARD WHERE CLUB_NO=42;

--����3�� ���� Ŭ���ѹ��� ���
select club_NO from club_member where club_nick='����3';


--��¥�� �������� Ŭ������ �Խù� ��ȸ�ϱ�
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;


--��¥�� �������� Ŭ������ �Խù� ��ȸ�ϱ�
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

--����3�� ���� Ŭ���� ����
SELECT * FROM CLUB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3');
--����3�� ���� Ŭ���ѹ�
select club_NO from club_member where club_nick='����3';
SELECT * FROM CLUB;

SELECT * FROM CLUB_MEMBER;
SELECT * FROM CLUB;


--������ ���� Ŭ���� �Խù� �� Ȯ��(+CLUB�� Ŭ�����ӱ��� ��������,+ȸ���� ���� Ŭ�� ��ȣ��)
SELECT 
    CLUB_NO,
    COUNT(*) as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME  
FROM CLUB_BOARD CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') GROUP BY CLUB_NO;

select * from club_board;

select * from club_board;
DESC DIRECT_MESSAGE;
SELECT * FROM DIRECT_MESSAGE;

INSERT INTO DIRECT_MESSAGE VALUES(
    DM_SEQ.NEXTVAL,
    '����3',
    '����3',
    '�޼��� ���� �׽�Ʈ',
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
    'N'
);
SELECT * FROM CLUB;

select * from member;
select * from club_member;


DELETE CLUB_BOARD FORM WHERE BOARD_NO IN(163);
COMMIT;
select * from club;
select * from CLUB_COMMENT;
insert into CLUB_COMMENT values(
    cc_seq.nextval,
    160,
    '����3',
    '�ι�° ����',
    0,
    null,
    0
);
commit;
select * from member;
update member set member_pw= '1234' where member_no=5;
select * from club_board;
desc board;

select * from member;
--�ش� ��� �ۼ����� ������ �������� �Բ� ���
select
	A.CC_NO AS ccNo,
	A.board_no as boardNo,
	A.cc_writer as ccWriter,
	A.cc_content as ccContent,
	A.cc_cg as ccCG,
	A.cc_ref as ccREF,
	A.cc_good as ccGOOD,
    B.filepath
from CLUB_COMMENT A, MEMBER B WHERE A.CC_WRITER = B.MEMBER_NICK AND BOARD_NO=151;

select * from club_member;
select * from club;
INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    42,
    '����3',
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
    rollback;
commit;

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '����3') OR CLUB_OPENER='����3';
    	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3') OR CLUB_OPENER='����3';
SELECT * FROM CLUB WHERE CLUB_OPENER='����3';

select * from club;
delete from club where club_no = 41;
commit;

SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3'or club_opener='����3')
ORDER BY A.ENROLL_DATE DESC)P);

select * from club_board where board_content like '%�%';

select * from club_board;

delete from club_board where board_no=174;
commit;

--�˻� ���ǿ� ���� ������Խù� ��������
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����1' or club_opener='����1' and board_title like '%����%') 
ORDER BY A.ENROLL_DATE DESC)P) WHERE  RNUM BETWEEN 1 AND 5;


--����3�� ���� �Խù����� ���� �˻��� ������ �����´�
SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and board_title like '%%'
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

--�Խù��� �˻����ǿ� �´� ���� �����´�
SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and board_title like '%����%';

select * from club;


--����� ���뿡 ���� Ű���带 �Ѱ��־� �˻� and������ ���� ���� �˻�
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE (CLUB_NICK='����3' or club_opener='����3') and (board_Title like '%�׽�Ʈ%' or board_content  like '%�׽�Ʈ%')) 
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and (board_title like '%�׽�Ʈ%' or board_content  like '%�׽�Ʈ%' )
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');


SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and (board_title like '%'||#{searchCon}||'%' or board_content like '%'||#{searchCon}||'%')
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='����3');

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '����3') OR CLUB_OPENER='����3';


--����� Ŭ�������ʰ� ���� Ŭ������ (Ŭ���ѹ�, �Խù�����, Ŭ���̸�) ���
SELECT 
    club_no,
    count(*) as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT 
    CLUB_NO 
FROM CLUB CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3') GROUP BY CLUB_NO;

SELECT 
    club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3')GROUP BY CLUB_NO;

--���� ������ ����� ���� Ŭ������ �Խù� ���� ���
SELECT 
    CLUB_NO,
    COUNT(*)as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME  
FROM CLUB_BOARD CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') GROUP BY CLUB_NO;

--10���� ���
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3')GROUP BY CLUB_NO) 
and (board_title like '%%' or board_content like '%%')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT CLUB_NO FROM CLUB_MEMBER 
WHERE(CLUB_NICK='����3' or club_opener='����3';
--��� ������ �� ���� Ŭ�� ��ȣ
SELECT 
    club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3')GROUP BY CLUB_NO;
commit;
select * from club_board;
select * from club;
delete from club where club_no in(89);
commit;

UPDATE CLUB_BOARD SET BOARD_GOOD = BOARD_GOOD+1 WHERE BOARD_NO=188;


select * from club_board where club_no = 90;
select * from likes;
select * from member;
select * from club_board;
--�Խù� ���ƿ�
CREATE TABLE BOARD_LIKE(
    BOARD_NO       INT             NOT NULL, 
    MEMBER_NICK    VARCHAR2(40)    NOT NULL
    GOOD_COUNT      INT     
);
ALTER TABLE BOARD_LIKE ADD GOOD_COUNT INT DEFAULT 0;
COMMIT;

UPDATE BOARD_LIKE SET 
    BOARD_GOOD = BOARD_GOOD + #{number},
    MEMBER_NICK = #{m.memberNick}
WHERE BOARD_NO=#{boardMoment};

select * from board_like;



ALTER TABLE board_like DROP COLUMN GOOD_COUNT GROUP BY BOARD;

insert into board_like values(
    188,
    '����2'
);
commit;
--������ �Խù��� ���� ���ƿ�(INSERT) �� ī��Ʈ
SELECT * FROM BOARD_LIKE;

select board_no,count(*) from board_like group by board_no;

--������ Ŭ������� Ŭ���� �̿��� ��������
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C
	WHERE C.CLUB_NO = A.CLUB_NO
    AND
C.CLUB_NO IN(SELECT club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3')GROUP BY CLUB_NO)
ORDER BY A.ENROLL_DATE DESC)P);
--
commit;

    B.club_no as clubNo,
    B.board_cg as boardCg,
    B.BOARD_TITLE,
    B.BOARD_WRITER as boardWriter,
    B.board_content as boardContent,
    B.fileName,
    B.filePath,
    B.board_views as boardViews,
    B.BOARD_good as cbGood,
    B.enroll_date as enrollDate,

--3������ �̿��� ��������
--DECODE�� �̿��� IF�� ���
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    B.BOARD_NO, 
    C.CLUB_NAME,
    B.club_no as clubNo,
    B.board_cg as boardCg,
    B.BOARD_TITLE,
    B.BOARD_WRITER as boardWriter,
    B.board_content as boardContent,
    B.fileName,
    B.filePath,
    B.board_views as boardViews,
    B.BOARD_good as cbGood,
    B.enroll_date as enrollDate,
    
    (SELECT COUNT(*) FROM BOARD_LIKE BL WHERE BL.BOARD_NO = B.BOARD_NO) AS TOTALCOUNT,
    DECODE(
        (SELECT COUNT(*) FROM BOARD_LIKE BL2 WHERE BL2.BOARD_NO = B.BOARD_NO AND BL2.MEMBER_NICK='����2'),
        1,
        '���ƿ䴩��',
        '���ƿ�ȴ���'
    ) AS LIKECHECK
FROM CLUB_BOARD B,CLUB C
WHERE B.CLUB_NO = C.CLUB_NO
AND C.CLUB_NO IN(
SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='����3') OR CLUB_OPENER='����3')
and (board_title like '%%' or board_content like '%%')
ORDER BY B.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;


select * from CALENDAR;

ALTER TABLE CALENDAR ADD ID INT;

COMMIT;




