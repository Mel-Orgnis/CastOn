-- 더미 회원 입력
INSERT
  INTO member
(
  id, pw, name, nick, phone,
  email, grade, gender, age
)
VALUES 
(
 'firstmem99','q1w2e3r4','김김김','kim99','010-1234-5678',
 'kim99@gmail.com','일반','M','26'
);









INSERT
  INTO notice
( title, content, reg_date, comment_check, mem_no )
VALUES
( '공지글','공지글입니다',NOW(),'N',1);

INSERT
  INTO notice
( title, content, reg_date, comment_check, mem_no)
VALUES
( '이벤트글', '이벤트글입니다', NOW(), 'Y' ,1);





SELECT * FROM notice;






-- 32) 공지 게시글 수정









SELECT * FROM notice;

UPDATE notice
   SET title = '수정골지글'
	  , content = '공지글을 수정했습니다.'
	  , edit_date = NOW()
 WHERE NO = 1;

SELECT * FROM notice;







-- 29,30) 공지게시글 조회









SELECT 
       no
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , comment_check
     , mem_no
  FROM notice;



-- 34) 공지사항 댓글작성기능 여부 업데이트









SELECT * FROM notice;

UPDATE notice
   SET 
	    comment_check = 'Y',
	    edit_date = NOW()
 WHERE NO = 1;

SELECT * FROM notice;






-- 33) 공지게시글 삭제






SELECT * FROM notice;

DELETE
  FROM notice
 WHERE NO = 1;

SELECT * FROM notice;















-- 35) 공지사항 댓글 입력











INSERT 
  INTO comment
( content, reg_date, notice_no, mem_no )
VALUES
( '공지사항 댓글 테스트',  NOW(), 2, 1 );

SELECT * FROM comment;








-- 36) 공지사항 댓글 수정







SELECT * FROM comment;

UPDATE comment
   SET content = '수정된 댓글을 공지사항에 답니다'
 WHERE notice_no = 2 
   AND mem_no = 1;
   
SELECT * FROM comment;
   

   
   
   
   
   
   
   
   
   
   
SELECT * FROM comment;

-- 37) 공지사항 댓글 삭제









SELECT * FROM comment;

DELETE
  FROM comment
 WHERE notice_no = 2
   AND mem_no = 1;

SELECT * FROM comment;










-- 38) 공지사항 좋아요









SELECT * FROM notice;


UPDATE notice
   SET like_count = like_count + 1
 WHERE NO = 2;
 
 SELECT * FROM notice;
 
 
 
 