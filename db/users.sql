CREATE TABLE assetsmanager.users ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(100)  NOT NULL  ,
	password             varchar(100)  NOT NULL  ,
	screenname           varchar(300)    ,
	CONSTRAINT pk_users PRIMARY KEY ( id )
 ) engine=InnoDB;

ALTER TABLE assetsmanager.users COMMENT 'Application users';

ALTER TABLE assetsmanager.users MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'User identificator';

ALTER TABLE assetsmanager.users MODIFY name varchar(100)  NOT NULL   COMMENT 'user name';

ALTER TABLE assetsmanager.users MODIFY screenname varchar(300)     COMMENT 'Screen name of the user';

