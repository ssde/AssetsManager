CREATE TABLE assetsmanager.repairs_parts ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	repair_fk            bigint UNSIGNED   ,
	part_fk              bigint UNSIGNED   ,
	CONSTRAINT pk_repairs_parts PRIMARY KEY ( id )
 ) engine=InnoDB;

CREATE INDEX idx_repairs_parts ON assetsmanager.repairs_parts ( part_fk );

CREATE INDEX idx_repairs_parts_0 ON assetsmanager.repairs_parts ( repair_fk );

ALTER TABLE assetsmanager.repairs_parts COMMENT 'Repairs and parts relationships';

ALTER TABLE assetsmanager.repairs_parts MODIFY id bigint UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT 'relationship identificator';

ALTER TABLE assetsmanager.repairs_parts ADD CONSTRAINT fk_repairs_parts FOREIGN KEY ( part_fk ) REFERENCES assetsmanager.parts( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.repairs_parts ADD CONSTRAINT fk_repairs_parts_0 FOREIGN KEY ( repair_fk ) REFERENCES assetsmanager.repairs( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

