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
INSERT
  INTO board
(title, content,reg_date,cate,
event_date,event_area,event_purpose,event_max_mem,
mem_no)
VALUES
('행사개최글','행사개최해요',Now(),'행사',
'20880808','동작구우체국앞','뜨개질모임',3,
1);
INSERT 
  INTO event_part_member
(
  mem_no, brd_no
)
VALUES 
(
  1, 2
);
INSERT 
  INTO event_part_member
(
  mem_no, brd_no
)
VALUES 
(
  2, 2
);
INSERT 
  INTO event_part_member
(
  mem_no, brd_no
)
VALUES 
(
  3, 2
);


-- 1) 시간별 접속회원 트리거 , 2) 시간별 로그인 이력 트리거

SELECT * FROM member_login_history;
SELECT * FROM member_login_per_hour;
SELECT * FROM statistics;

INSERT 
  INTO member_login_history
( 
  login_date, ip, mem_no
)
VALUES
(
  '2024-07-08-16-01', '111.111.1.1',1
);

INSERT 
  INTO member_login_history
( 
  login_date, ip, mem_no
)
VALUES
(
  '2024-07-08-16-05', '111.111.1.1',1
);

INSERT 
  INTO member_login_history
( 
  login_date, ip, mem_no
)
VALUES
(
  '2024-07-08-16-25', '222.222.2.2',2
);

SELECT * FROM member_login_history;
SELECT * FROM member_login_per_hour;
SELECT * FROM statistics;



-- 3) 도안 공유 게시글 작성 수  트리거
SELECT * FROM pattern_share;
SELECT * FROM statistics;

INSERT
  INTO pattern_share
(
  title, writer_level, knit_method, knit_niddle_size, content,
  reg_date, mem_no, pattern_cate)
VALUES 
(
  '이쁜도안공유', 5, '잘뜨기',10,'큰바늘로 잘뜬다',
  '2024-07-08-17-24',2,'가방'
);

SELECT * FROM pattern_share;
SELECT * FROM statistics;


-- 4) 재료 나눔 게시글 작성 수 트리거
SELECT * FROM board WHERE cate = '나눔';
SELECT * FROM statistics;

INSERT
  INTO board
(
  title, content, reg_date, cate, share_area,
  share_mat_cate, mem_no
)
VALUES
(
  '재료나눔글', '재료(코바늘)나눔해요', NOW(), '나눔', '보라매삼거리',
  '코바늘', 1
);

SELECT * FROM board WHERE cate = '나눔';
SELECT * FROM statistics;

-- 5) 행사 참여하려고 할 때 이미 최대 인원인지 파악하는 트리거
SELECT * FROM event_part_member;
SELECT * FROM board;
INSERT 
  INTO event_part_member
(
  mem_no, brd_no
)
VALUES 
(
  4, 2
);
