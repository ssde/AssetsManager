CREATE TABLE assetsmanager.devices ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	brand                varchar(100)  NOT NULL DEFAULT 'DELL' ,
	model                varchar(100)  NOT NULL DEFAULT 'Latitude' ,
	qad_tag              varchar(100)    ,
	service_tag          varchar(20)    ,
	express              varchar(30)    ,
	owner_fk			 bigint UNSIGNED,
	CONSTRAINT pk_devices PRIMARY KEY ( id )
 ) engine=InnoDB;

ALTER TABLE assetsmanager.devices COMMENT 'Devices properties definitions';

ALTER TABLE assetsmanager.devices MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'primary key';

ALTER TABLE assetsmanager.devices MODIFY brand varchar(100)  NOT NULL DEFAULT 'DELL'  COMMENT 'device brand';

ALTER TABLE assetsmanager.devices MODIFY model varchar(100)  NOT NULL DEFAULT 'Latitude'  COMMENT 'device model';

ALTER TABLE assetsmanager.devices MODIFY qad_tag varchar(100)     COMMENT 'Inventory tag';

ALTER TABLE assetsmanager.devices MODIFY service_tag varchar(20)     COMMENT 'service tag, equivalent to a serial number for any non DELL device';

ALTER TABLE assetsmanager.devices MODIFY express varchar(30)     COMMENT 'Express service code, useful to get support from DELL is service tag is not present';

CREATE INDEX idx_devices ON assetsmanager.devices ( owner_fk );

ALTER TABLE assetsmanager.devices ADD CONSTRAINT fk_devices_owners FOREIGN KEY ( owner_fk ) REFERENCES assetsmanager.owners ( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;
