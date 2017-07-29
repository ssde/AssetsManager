CREATE TABLE assetsmanager.parts ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	brand                varchar(200)    ,
	serial               varchar(200)    ,
	kind                 varchar(200)    ,
	repair_fk             bigint UNSIGNED   ,
	device_fk             bigint UNSIGNED   ,
	CONSTRAINT pk_parts PRIMARY KEY ( id )
 );

CREATE INDEX idx_parts ON assetsmanager.parts ( device_fk );

CREATE INDEX idx_parts_0 ON assetsmanager.parts ( repair_fk );

ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_devices FOREIGN KEY ( device_fk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.parts ADD CONSTRAINT fk_parts_repairs FOREIGN KEY ( repair_fk ) REFERENCES assetsmanager.repairs( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

