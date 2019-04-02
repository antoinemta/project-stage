CREATE DATABASE IF NOT EXISTS project_stage;

/*CHOOSE AN USER*/ 
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
GRANT select,insert,update ON pingpaas.* TO 'user'@'%';
/* DON'T FORGET TO PUT YOUR NEW LOGS IN THE CONFIG FILE */

USE pingpaas;
CREATE TABLE user (id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
username VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
adress_mail VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
pass VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
lastname VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
firstname VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
user_category SMALLINT NOT NULL,
PRIMARY KEY(id)
)
ENGINE=INNODB;

INSERT INTO user (username, adress_mail, pass, user_category) VALUES ('admin','admin@admin.fr','password',1);
