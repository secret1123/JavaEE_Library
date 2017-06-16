DROP DATABASE IF EXISTS javaee_library;
CREATE DATABASE javaee_library;

DROP TABLE IF EXISTS javaee_library.user;
CREATE TABLE javaee_library.user (
  id       INT                          AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  username VARCHAR(191) UNIQUE NOT NULL
  COMMENT '用户',
  password VARCHAR(255)        NOT NULL
  COMMENT '密码',
  role     VARCHAR(255)        NOT NULL DEFAULT '用户'
  COMMENT '角色：用户；管理员'
)
  COMMENT '用户表';

DROP TABLE IF EXISTS javaee_library.book;
CREATE TABLE javaee_library.book (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title  VARCHAR(255)  NOT NULL
  COMMENT '书名',
  author VARCHAR(255)  NOT NULL
  COMMENT '作者',
  pub    VARCHAR(255)  NOT NULL
  COMMENT '出版社',
  time   DATE          NOT NULL
  COMMENT '出版时间',
  price  DECIMAL(8, 2) NOT NULL
  COMMENT '定价',
  amount INT           NOT NULL
  COMMENT '数量'
)
  COMMENT '图书表';

DROP TABLE IF EXISTS javaee_library.user_book;
CREATE TABLE javaee_library.user_book (
  userId     INT COMMENT 'PK FK',
  bookId     INT COMMENT 'PK FK',
  borrowTime DATETIME DEFAULT now()
  COMMENT '借书时间',
  returnTime DATETIME
  COMMENT '还书时间',
  PRIMARY KEY (userId, bookId)
)
  COMMENT '用户-图书表';

ALTER TABLE javaee_library.user_book
  ADD CONSTRAINT
  user_book_fk_userId
FOREIGN KEY (userId)
REFERENCES javaee_library.user (id);

ALTER TABLE javaee_library.user_book
  ADD CONSTRAINT
  user_book_fk_bookId
FOREIGN KEY (bookId)
REFERENCES javaee_library.book (id);


INSERT INTO javaee_library.user (username, password, role) VALUE ('admin', '123', '管理员');

SELECT *
FROM javaee_library.user;

SELECT *
FROM javaee_library.book;

SELECT *
FROM javaee_library.user_book;