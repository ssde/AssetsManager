drop database assetsmanager; 

create database assetsmanager character set utf8;
use assetsmanager;

CREATE TABLE assetsmanager.devices ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	brand                varchar(100)  NOT NULL DEFAULT 'DELL' ,
	model                varchar(100)  NOT NULL DEFAULT 'Latitude' ,
	series				 varchar(100)	,
	qad_tag              varchar(100)   ,
	service_tag          varchar(20)    ,
	express              varchar(30)    ,
	purchase			 date			,
	warranty_end		 date			,
	comments			 varchar(1000)	,
	owner_fk			 bigint UNSIGNED,
	CONSTRAINT pk_devices PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE TABLE assetsmanager.owners ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(300)  NOT NULL  ,
	area                 varchar(200)  NOT NULL  ,
	CONSTRAINT pk_owners PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE TABLE assetsmanager.parts ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	brand                varchar(200)    	,
	serial               varchar(200)    	,
	kind                 varchar(200)    	,
	repair_fk             bigint UNSIGNED   ,
	device_fk             bigint UNSIGNED   ,
	CONSTRAINT pk_parts PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE TABLE assetsmanager.repairs ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	log                  varchar(5000)  NOT NULL  ,
	log_date             date  NOT NULL  ,
	techname             varchar(200)    ,
	device_fk             bigint UNSIGNED   ,
	CONSTRAINT pk_repairs PRIMARY KEY ( id )
 ) engine=InnoDB;
 
CREATE TABLE assetsmanager.roles ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(100)  NOT NULL  ,
	detail               varchar(1000)    ,
	CONSTRAINT pk_roles PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE TABLE assetsmanager.users ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	name                 varchar(100)  NOT NULL  ,
	password             varchar(100)  NOT NULL  ,
	screenname           varchar(300)    ,
	CONSTRAINT pk_users PRIMARY KEY ( id )
 ) engine=InnoDB;
 
CREATE TABLE assetsmanager.users_roles ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	user_fk               bigint UNSIGNED   ,
	rol_fk                bigint UNSIGNED   ,
	CONSTRAINT pk_users_roles PRIMARY KEY ( id )
 );
 
/* Devices - Owners link  Many to One */
CREATE INDEX idx_devices ON assetsmanager.devices ( owner_fk );
ALTER TABLE assetsmanager.devices ADD CONSTRAINT fk_devices_owners FOREIGN KEY ( owner_fk ) REFERENCES assetsmanager.owners ( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Parts - Devices link  Many to One */
CREATE INDEX idx_parts ON assetsmanager.parts ( device_fk );
ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_devices FOREIGN KEY ( device_fk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Parts - Repairs link  Many to One */
CREATE INDEX idx_parts_0 ON assetsmanager.parts ( repair_fk );
ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_repairs FOREIGN KEY ( repair_fk ) REFERENCES assetsmanager.repairs( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Repairs - Devices link  Many to One*/
CREATE INDEX fk_repairs_devices ON assetsmanager.repairs ( device_fk );
ALTER TABLE assetsmanager.repairs ADD CONSTRAINT fk_repairs_devices FOREIGN KEY ( device_fk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* User - Rol table relationship  Many to Many */
CREATE INDEX idx_users_roles ON assetsmanager.users_roles ( user_fk );
CREATE INDEX idx_users_roles_0 ON assetsmanager.users_roles ( rol_fk );
ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_users FOREIGN KEY ( user_fk ) REFERENCES assetsmanager.users( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_roles FOREIGN KEY ( rol_fk ) REFERENCES assetsmanager.roles( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;
