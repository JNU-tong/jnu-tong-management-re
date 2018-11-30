/* 사용자 테이블 */
CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username)
) character set utf8 collate utf8_general_ci;

/* 사용자 권한 테이블*/
CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username)
) character set utf8 collate utf8_general_ci;

/* 사용자 계정 삽입 */
INSERT INTO users(username,password,enabled) VALUES ('song','manager1', true);
INSERT INTO users(username,password,enabled) VALUES ('lee','manager2', true);
INSERT INTO users(username,password,enabled) VALUES ('hong','manager3', true);
INSERT INTO users(username,password,enabled) VALUES ('hyun','manager4', true);
INSERT INTO users(username,password,enabled) VALUES ('kim','manager5', true);
INSERT INTO users(username,password,enabled) VALUES ('oh','manager6', true);

/* 관리자 권한 삽입 */
INSERT INTO user_roles (username, role) VALUES ('ssh', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('lee', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('hong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('hyun', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('kim', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('oh', 'ROLE_ADMIN');