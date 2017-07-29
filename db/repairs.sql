CREATE TABLE assetsmanager.repairs ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	log                  varchar(5000)  NOT NULL  ,
	log_date             date  NOT NULL  ,
	techname             varchar(200)    ,
	device_fk             bigint UNSIGNED   ,
	CONSTRAINT pk_repairs PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE INDEX fk_repairs_devices ON assetsmanager.repairs ( device_fk );

ALTER TABLE assetsmanager.repairs COMMENT 'Repair logs';

ALTER TABLE assetsmanager.repairs MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'Repair identificator';

ALTER TABLE assetsmanager.repairs MODIFY log varchar(5000)  NOT NULL   COMMENT 'Detail of the repair';

ALTER TABLE assetsmanager.repairs MODIFY log_date date  NOT NULL   COMMENT 'date time of the repair';

ALTER TABLE assetsmanager.repairs MODIFY techname varchar(200)     COMMENT 'Tech name assigned for such repair';

ALTER TABLE assetsmanager.repairs MODIFY device_fk bigint UNSIGNED    COMMENT 'Device foreign key';

ALTER TABLE assetsmanager.repairs ADD CONSTRAINT fk_repairs_devices FOREIGN KEY ( device_fk ) REFERENCES assetsmanager.devices( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

