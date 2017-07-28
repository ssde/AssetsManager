CREATE TABLE assetsmanager.devices_owners ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	device_fk            bigint UNSIGNED NOT NULL  ,
	owner_fk             bigint UNSIGNED NOT NULL  ,
	CONSTRAINT pk_devices_owners PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE INDEX idx_devices_owners ON assetsmanager.devices_owners ( device_fk );

CREATE INDEX idx_devices_owners_0 ON assetsmanager.devices_owners ( owner_fk );

ALTER TABLE assetsmanager.devices_owners COMMENT 'Links between devices and owners';

ALTER TABLE assetsmanager.devices_owners MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'relationship identificator';

ALTER TABLE assetsmanager.devices_owners MODIFY device_fk bigint UNSIGNED NOT NULL   COMMENT 'Device foreign key';

ALTER TABLE assetsmanager.devices_owners MODIFY owner_fk bigint UNSIGNED NOT NULL   COMMENT 'Owner foreign key';

ALTER TABLE assetsmanager.devices_owners ADD CONSTRAINT fk_devices_owners_devices FOREIGN KEY ( device_fk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.devices_owners ADD CONSTRAINT fk_devices_owners_owners FOREIGN KEY ( owner_fk ) REFERENCES assetsmanager.owners( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

