CREATE TABLE assetsmanager.roles ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(100)  NOT NULL  ,
	detail               varchar(1000)    ,
	CONSTRAINT pk_roles PRIMARY KEY ( id )
 ) engine=InnoDB;

ALTER TABLE assetsmanager.roles COMMENT 'Roles for the application';

ALTER TABLE assetsmanager.roles MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'Rol identificator';

ALTER TABLE assetsmanager.roles MODIFY name varchar(100)  NOT NULL   COMMENT 'Rol name';

ALTER TABLE assetsmanager.roles MODIFY detail varchar(1000)     COMMENT 'Rol description';

