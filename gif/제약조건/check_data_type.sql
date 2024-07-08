-- check (table : member / column : gender  / check(gender IN ('M', 'F') )
INSERT 
  INTO member
(
 id, pw, NAME, nick, phone
, email, grade, gender, age
)
VALUES 
(
  'test_id12', 'test_pw1234!@', '김테스트', '김별명', '010-1234-5678'
, 'testkim@gmai.com', '일반', '남자', '20'
);


-- data type (table : report / column : status / type : char(4) )
INSERT 
  INTO report
(
  content, status, rpt_date, cmt_no, cate
, brd_no, mem_no, ques_no, ptrn_shr_no, ans_no
)
VALUES 
(
  '테스트 신고입니다', '아직처리안함', NOW(), NULL, '신고'
, NULL, 1, NULL, NULL, NULL
);


-- data type ( table : question_board / column : title / type : varchar(255) )
INSERT 
  INTO question_board
( 
  title, content, reg_date, answer_status, mem_no
)
VALUES 
(
  '질문게시판의 제목의  데이터타입은 varchar이고, 제한은 255 입니다. 제한을 넘기는
   텍스트를 입력한다면 ... 테스트 문의내용의 데이터타입은 varchar이고, 제한은 255 입니다. 제한을 넘기는
   텍스트를 입력한다면 ... 테스트 문의내용의 데이터타입은 varchar이고, 제한은 255 입니다. 제한을 넘기는
   텍스트를 입력한다면 ... 테스트 문의내용의 데이터타입은 varchar이고, 제한은 255 입니다. 제한을 넘기는
   텍스트를 입력한다면 ... 테스트 문의내용의 데이터타입은 varchar이고, 제한은 255 입니다. 제한을 넘기는
   텍스트를 입력한다면 ... 테스트 문의내용의 데이터타입은 varchar이고, 제한은 255 입니다.'
, '질문 게시판 내용 테스트 텍스트', NOW(), DEFAULT, 1
);

-- data type ( table : question_board / column : reg_date / type : DATETIME )
INSERT 
  INTO question_board
( 
  title, content, reg_date, answer_status, mem_no
)
VALUES 
(
  '질문 게시판 제목 테스트 텍스트', '질문 게시판 내용 테스트 텍스트', '2023년 4월 10일 3시쯤', DEFAULT, 1
);

-- data type ( table : member / column : age / type : INTEGER )
INSERT 
  INTO member
(
 id, pw, NAME, nick, phone
, email, grade, gender, age
)
VALUES 
(
  'test_id987', 'test_pw9876!@', '테스터박', '별명박', '010-9876-5432'
, 'parktester@gmail.com', '일반', 'M', 220000000 -- 22억
);
