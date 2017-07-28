CREATE TABLE assetsmanager.owners ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(300)  NOT NULL  ,
	area                 varchar(200)  NOT NULL  ,
	CONSTRAINT pk_owners PRIMARY KEY ( id )
 ) engine=InnoDB;

ALTER TABLE assetsmanager.owners COMMENT 'All owners registered in the organization, the devices will be assigned to them';

ALTER TABLE assetsmanager.owners MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'owner identificator';

ALTER TABLE assetsmanager.owners MODIFY name varchar(300)  NOT NULL   COMMENT 'Full owner name';

ALTER TABLE assetsmanager.owners MODIFY area varchar(200)  NOT NULL   COMMENT 'Area the owner belongs to';

