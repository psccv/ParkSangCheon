DROP TABLE tbl_attach if EXISTS
DROP TABLE tbl_reply if EXISTS
DROP TABLE tbl_board if EXISTS
DROP TABLE tbl_member if EXISTS
CREATE  TABLE tbl_attach(full_name varchar(150) NOT NULL PRIMARY KEY,bno INTEGER NOT NULL,regdate timestamp DEFAULT CURRENT_TIMESTAMP)
CREATE  TABLE tbl_board(bno INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,title varchar(200) NOT NULL,content VARCHAR(2400),writer varchar(50) NOT NULL,regdate timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP,view_count INTEGER DEFAULT 0,reply_count INTEGER DEFAULT 0)
INSERT INTO tbl_board(bno, title, content, writer, regdate, update_date, view_count, reply_count) VALUES(1, '수정된 글입니다.', '수정 테스트 ', 'user01', '2019-10-10 03:20:01','2019-10-10 03:20:01', 0, 1),(2, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user02', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(3, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user03', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(4, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user04', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0),(5, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user05', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0)
INSERT INTO tbl_board(bno, title, content, writer, regdate, update_date, view_count, reply_count) VALUES(6, '수정된 글입니다.', '수정 테스트 ', 'user06', '2019-10-10 03:20:01','2019-10-10 03:20:01', 0, 1),(7, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user07', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(8, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user08', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(9, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user09', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0),(10, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user05', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0)
INSERT INTO tbl_board(bno, title, content, writer, regdate, update_date, view_count, reply_count) VALUES(11, '수정된 글입니다.', '수정 테스트 ', 'user11', '2019-10-10 03:20:01','2019-10-10 03:20:01', 0, 1),(12, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user12', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(13, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user13', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(14, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user14', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0),(15, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user05', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0)
CREATE TABLE tbl_member(user_id varchar(50) NOT NULL PRIMARY KEY,user_pw varchar(255) NOT NULL,user_name varchar(50) NOT NULL,email varchar(100) DEFAULT NULL,point INTEGER DEFAULT 0,enabled NUMERIC(1) DEFAULT 0,levels varchar(50) DEFAULT 'ROLE_USER',reg_date timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP)
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('admin00', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'admin00', 'admin00@edu.com', 100, 1, 'ROLE_ADMIN', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user01', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user01', 'user01@edu.com', 100, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user02', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user02', 'user02@edu.com', 200, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user03', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user03', 'user03@edu.com', 300, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user04', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user04', 'user04@edu.com', 400, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user05', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user05', 'user05@edu.com', 500, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user06', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user06', 'user06@edu.com', 600, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user07', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user07', 'user07@edu.com', 700, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user08', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user08', 'user08@edu.com', 800, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user09', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user09', 'user09@edu.com', 900, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user10', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user10', 'user10@edu.com', 1000, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user11', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user11', 'user11@edu.com', 1100, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user12', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user12', 'user12@edu.com', 1200, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
CREATE TABLE tbl_reply(rno INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,bno INTEGER DEFAULT 0,replytext varchar(1000) NOT NULL,replyer varchar(50) NOT NULL,regdate timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP)
INSERT INTO tbl_reply(rno, bno, replytext, replyer, regdate, update_date) VALUES(1, 1, '1:댓글을 수정   MOD', 'user02', '2019-10-17 02:39:01', '2019-10-18 01:52:51')
ALTER TABLE tbl_attach ADD CONSTRAINT fk_board_attach FOREIGN KEY (bno) REFERENCES tbl_board (bno)
ALTER TABLE tbl_reply ADD CONSTRAINT fk_board FOREIGN KEY (bno) REFERENCES tbl_board (bno)