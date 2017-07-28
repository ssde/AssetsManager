CREATE TABLE assetsmanager.users_roles ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	userfk               bigint UNSIGNED   ,
	rolfk                bigint UNSIGNED   ,
	CONSTRAINT pk_users_roles PRIMARY KEY ( id )
 );

CREATE INDEX idx_users_roles ON assetsmanager.users_roles ( userfk );

CREATE INDEX idx_users_roles_0 ON assetsmanager.users_roles ( rolfk );

ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_users FOREIGN KEY ( userfk ) REFERENCES assetsmanager.users( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_roles FOREIGN KEY ( rolfk ) REFERENCES assetsmanager.roles( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

