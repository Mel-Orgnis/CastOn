-- 더미 회원 입력
INSERT
  INTO member
(id, pw, name, nick, phone,email, grade, gender, age)
VALUES 
('firstmem99','q1w2e3r4','김김김','kim99','010-1234-5678','kim99@gmail.com','일반','M','26');
INSERT
  INTO member
(id, pw, name, nick, phone,email, grade, gender, age)
VALUES 
('secondtmem99','q1w2e3r4','이이이','kim99','010-1234-5678','kim99@gmail.com','일반','F','26');
INSERT
  INTO member
(id, pw, name, nick, phone,email, grade, gender, age)
VALUES 
('thirdmem99','q1w2e3r4','박박박','kim99','010-1234-5678','kim99@gmail.com','일반','F','26');
INSERT
  INTO member
(id, pw, name, nick, phone,email, grade, gender, age)
VALUES 
('fourthmem99','q1w2e3r4','최최최','kim99','010-1234-5678','kim99@gmail.com','일반','M','26');
INSERT
  INTO member
(id, pw, name, nick, phone,email, grade, gender, age)
VALUES 
('fifthmem99','q1w2e3r4','윤윤윤','kim99','010-1234-5678','kim99@gmail.com','일반','M','26');
-- 더미 글 입력
INSERT
  INTO board
(title, content,reg_date,cate,
share_area,share_mat_cate,
mem_no)
VALUES
('당근대신 나눔','남은 실 드립니다 계양역으로 오세요',Now(),'나눔',
'계양역','실',
1);
INSERT
  INTO board
(title, content,reg_date,cate,
share_area,share_mat_cate,
mem_no)
VALUES
('키링 드립니다','키링이 남아 나눔합니다 장소 여의도',Now(),'나눔',
'여의도','키링',
2);
INSERT
  INTO board
(title, content,reg_date,cate,
share_area,share_mat_cate,
mem_no)
VALUES
('기부천사','모든 실 다 드립니다',Now(),'나눔',
'북한산','실',
1);
INSERT
  INTO board
(title, content,reg_date,cate,
share_area,share_mat_cate,
mem_no)
VALUES
('코바늘남아요','코바늘 받으러 시청으로',Now(),'나눔',
'시청','코바늘',
3);

INSERT
  INTO board
(title, content,reg_date,cate,
event_date,event_area,event_purpose,event_max_mem,
mem_no)
VALUES
('행사개최글','행사개최해요',Now(),'행사',
'20880808','동작구우체국앞','뜨개질모임',6,
2);

INSERT
  INTO board
(title, content,reg_date,cate,
gauge_size,sts_row_info,pattern_sts,
mem_no)
VALUES
('견적계산글','견적알려줘요',Now(),'견적계산',
10,20,5,
3);

SELECT * FROM member;
SELECT * FROM board;


-- 88) 재료 나눔 게시글 작성



SELECT * FROM board WHERE cate = '나눔';

INSERT
  INTO board
(title, content,reg_date,cate,
share_area,share_mat_cate,
mem_no)
VALUES
('재료나눔글','재료(코바늘)나눔해요',Now(),'나눔',
'보라매삼거리','코바늘',
1);

SELECT * FROM board WHERE cate = '나눔';


-- 86) 재료나눔게시글 조회



SELECT NO
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , cate
     , share_area
     , share_mat_cate
     , mem_no
  FROM board
 WHERE cate ='나눔';
 
-- 90) 재료나눔게시글 수정




SELECT * FROM board WHERE cate = '나눔';

UPDATE board
   SET title = '재료나눔글 수정'
	  , content = '보라매삼거리에서 신대방사거리로 나눔 장소 수정'
	  , edit_date = NOW()
 WHERE NO = 7
   AND cate = '나눔';

SELECT * FROM board WHERE cate = '나눔';




-- 89) 재료나눔게시글 삭제





SELECT * FROM board WHERE cate = '나눔';

DELETE
  FROM board
 WHERE NO = 7
   AND cate = '나눔';

SELECT * FROM board WHERE cate = '나눔';






-- 91) 재료나눔 게시글 좋아요




SELECT * FROM board WHERE cate = '나눔';

UPDATE board
   SET like_count = like_count + 1
 WHERE NO = 1
   AND cate = '나눔';

SELECT * FROM board WHERE cate = '나눔';







-- 92) 재료나눔 게시글 검색



SELECT NO
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , cate
     , share_area
     , share_mat_cate
     , mem_no
  FROM board
 WHERE cate = '나눔'
   AND title LIKE '%키링%';
   
   

SELECT NO
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , cate
     , share_area
     , share_mat_cate
     , mem_no
  FROM board
 WHERE cate = '나눔'
   AND mem_no = 1;
   
   
   
   

SELECT NO
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , cate
     , share_area
     , share_mat_cate
     , mem_no
  FROM board
 WHERE cate = '나눔'
   AND content LIKE '%바늘%';





SELECT NO
     , title
     , content
     , reg_date
     , edit_date
     , view_count
     , like_count
     , cate
     , share_area
     , share_mat_cate
     , mem_no
  FROM board
 WHERE cate = '나눔'
   AND share_mat_cate = '실';
   
   
