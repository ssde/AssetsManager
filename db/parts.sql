CREATE TABLE assetsmanager.parts ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	brand                varchar(200)    ,
	serial               varchar(200)    ,
	kind                 varchar(200)    ,
	repairfk             bigint UNSIGNED   ,
	devicefk             bigint UNSIGNED   ,
	CONSTRAINT pk_parts PRIMARY KEY ( id )
 );

CREATE INDEX idx_parts ON assetsmanager.parts ( devicefk );

CREATE INDEX idx_parts_0 ON assetsmanager.parts ( repairfk );

ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_devices FOREIGN KEY ( devicefk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_repairs FOREIGN KEY ( repairfk ) REFERENCES assetsmanager.repairs( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

