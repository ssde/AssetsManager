CREATE TABLE assetsmanager.users_roles ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT,
	user_fk               bigint UNSIGNED   ,
	rol_fk                bigint UNSIGNED   ,
	CONSTRAINT pk_users_roles PRIMARY KEY ( id )
 );

CREATE INDEX idx_users_roles ON assetsmanager.users_roles ( user_fk );

CREATE INDEX idx_users_roles_0 ON assetsmanager.users_roles ( rol_fk );

ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_users FOREIGN KEY ( user_fk ) REFERENCES assetsmanager.users( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE assetsmanager.users_roles ADD CONSTRAINT fk_users_roles_roles FOREIGN KEY ( rol_fk ) REFERENCES assetsmanager.roles( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

