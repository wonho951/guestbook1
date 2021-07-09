--테이블삭제
drop table guestbook;
--시퀀스 삭제
DROP SEQUENCE seq_guestbook_no;



--테이블 생성
create table guestbook (
    no number,
    name VARCHAR2(80),
    password VARCHAR2(20),
    content varchar2(2000),
    reg_date date,
    PRIMARY KEY (no)
);


--시퀀스 생성
create sequence SEQ_GUESTBOOK_NO
increment by 1
start with 1;




INSERT INTO guestbook
values(SEQ_GUESTBOOK_NO.nextval,'이정재','123','안녕하세요',sysdate);


INSERT INTO guestbook
values(SEQ_GUESTBOOK_NO.nextval,'이정재','234','hello',sysdate);

commit;



delete from guestbook
where no = 1
and password = 234;


select  *
from guestbook;

select  no,
        name,
        password,
        content,
        reg_date
from guestbook;



select  no,
        name,
        password,
        content,
        reg_date
from guestbook
where password = '123';
