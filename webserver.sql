
CREATE TABLE NOTICE(
    NOTICE_NO       NUMBER          PRIMARY KEY,    --�������� ���� ��ȣ
    NOTICE_TITILE   VARCHAR(1000)   NOT NULL,
    NOTICE_WRITER   VARCHAR(20)     REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --�ۼ��ڴ� ȸ�����̺� ����, Ż��� �����ɼ�
    NOTICE_CONTENT  VARCHAR2(4000), --�������׳���
    NOTICE_DATE     CHAR(10),       --�ۼ���
    FILENAME        VARCHAR2(500),  --����ڰ� ÷���� ���� �̸�
    FILEPATH        VARCHAR2(500)   --���� ������ ���ε�� �����̸�
);
CREATE SEQUENCE NOTICE_SEQ;
SELECT * FROM admin_BOARD;
SELECT * FROM MEMBER;
INSERT INTO NOTICE VALUES(
        NOTICE_SEQ.NEXTVAL, 
        '��������' ||NOTICE_SEQ.CURRVAL,
        'admin',
        '����'||NOTICE_SEQ.CURRVAL,
        TO_CHAR(SYSDATE,'YYYY-MM-DD'),
        NULL,
        NULL
);
ALTER TABLE NOTICE RENAME COLUMN NOTICE_TITILE TO NOTICE_TITLE;

SELECT * FROM NOTICE;
select * from NOTICE where notice_no=1;
    COMMIT;
    
    
    --1������ �Խù� ��ȸ
    SELECT * FROM NOTICE WHERE NOTICE_NO BETWEEN 90 AND 100 ORDER BY DESC;
    
    SELECT * FROM(SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;
    
    SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC;
    SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC)N;
    
    select count(*) as cnt from notice;
    
----------------�����Խ���-----------------------
CREATE TABLE BOARD(
    BOARD_NO        NUMBER          PRIMARY KEY,    --�������� ���� ��ȣ
    BOARD_TITLE    VARCHAR(1000)   NOT NULL,
    BOARD_WRITER    VARCHAR(20)     REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --�ۼ��ڴ� ȸ�����̺� ����, Ż��� �����ɼ�
    BOARD_CONTENT   VARCHAR2(4000), --�������׳���
    BOARD_DATE      CHAR(10),       --�ۼ���
    FILENAME        VARCHAR2(500),  --����ڰ� ÷���� ���� �̸�
    FILEPATH        VARCHAR2(500)   --���� ������ ���ε�� �����̸�
);
DROP TABLE BOARD;

ALTER TABLE BOARD RENAME COLUMN BOARD_TITILE TO BOARD_TITLE;

CREATE SEQUENCE BOARD_SEQ;
DROP SEQUENCE BOARD_SEQ;
select * from board;

INSERT INTO BOARD VALUES(
        BOARD_SEQ.NEXTVAL, 
        '������' ||BOARD_SEQ.CURRVAL,
        'admin',
        '����'||BOARD_SEQ.CURRVAL,
        TO_CHAR(SYSDATE,'YYYY-MM-DD'),
        NULL,
        NULL
);

SELECT * FROM(SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM BOARD ORDER BY BOARD_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;
COMMIT;
    
CREATE TABLE NOTICE_COMMENT(
    NC_NO       NUMBER          PRIMARY KEY,
    NC_LEVEL    NUMBER,         --�������/�������� ����
    NC_WRITER   VARCHAR2(20)    REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --��� �ۼ���
    NC_CONTENT  VARCHAR2(1000)  NOT NULL,
    NC_DATE     CHAR(10),
    NOTICE_REF  NUMBER          REFERENCES NOTICE(NOTICE_NO) ON DELETE CASCADE, --� �Խù��� ������� �����ϱ����� �÷�
    NC_REF      NUMBER          REFERENCES NOTICE_COMMENT(NC_NO) ON DELETE CASCADE --� ����� ������� �����ϱ����� �÷�
);
--nc_ref�� value�� 0�� �����̶� ����
CREATE SEQUENCE NO_SEQ;

select * from NOTICE_COMMENT;

update notice_comment set nc_content='����db' where nc_no=1;
    
select * from member;
    
commit;
    
------����
CREATE USER examuser IDENTIFIED BY 1234;

GRANT CONNECT,RESOURCE TO examuser;
    
CREATE TABLE PHOTO(
    PHOTO_NO        NUMBER      PRIMARY KEY,
    PHOTO_WRITER    VARCHAR2(20)    REFERENCES MEMBER(MEMBER_ID),
    PHOTO_CONTENT   VARCHAR2(1000)  NOT NULL,
    FILEPATH    VARCHAR2(300),
    PHOTO_DATE CHAR(10)
);
CREATE SEQUENCE PHOTO_SEQ;
    
    

    
    
    
    
    
    
    
    
    
    
    