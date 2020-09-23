-- Generated by Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   at:        2020-04-06 18:42:34 IST
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c



DROP TABLE client CASCADE CONSTRAINTS;

DROP TABLE full_service CASCADE CONSTRAINTS;

DROP TABLE minimum_service CASCADE CONSTRAINTS;

DROP TABLE party_service CASCADE CONSTRAINTS;

DROP TABLE party_service_to_resources CASCADE CONSTRAINTS;

DROP TABLE resources CASCADE CONSTRAINTS;

CREATE TABLE client (
    client_id         NUMBER NOT NULL,
    client_name       VARCHAR2(20),
    client_address    VARCHAR2(50),
    client_number     NUMBER,
    recieved_invoice  VARCHAR2(10)
)
LOGGING;

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( client_id );

CREATE TABLE full_service (
    full_service_id                 NUMBER NOT NULL,
    fmain_course                    VARCHAR2(30),
    f_starters                      VARCHAR2(30),
    f_desserts                      VARCHAR2(30),
    client_client_id                NUMBER NOT NULL,
    party_service_party_service_id  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE full_service ADD CONSTRAINT full_service_pk PRIMARY KEY ( full_service_id );

CREATE TABLE minimum_service (
    minimum_service_id  NUMBER NOT NULL,
    m_starters          VARCHAR2(30),
    mmain_course        VARCHAR2(30),
    m_coffee            VARCHAR2(30),
    client_client_id    NUMBER NOT NULL
)
LOGGING;

ALTER TABLE minimum_service ADD CONSTRAINT minimum_service_pk PRIMARY KEY ( minimum_service_id );

CREATE TABLE party_service (
    party_service_id  NUMBER NOT NULL,
    pmain_course      VARCHAR2(30),
    p_starters        VARCHAR2(30),
    pcheese_platters  VARCHAR2(30),
    p_desserts        unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    p_beverages       VARCHAR2(30),
    client_client_id  NUMBER NOT NULL
)
LOGGING;

ALTER TABLE party_service ADD CONSTRAINT party_service_pk PRIMARY KEY ( party_service_id );

CREATE TABLE party_service_to_resources (
    party_service_party_service_id  NUMBER NOT NULL,
    resources_resource_id           NUMBER NOT NULL
)
LOGGING;

ALTER TABLE party_service_to_resources ADD CONSTRAINT party_service_to_resources_pk PRIMARY KEY ( party_service_party_service_id,
                                                                                                  resources_resource_id );

CREATE TABLE resources (
    resource_id       NUMBER NOT NULL,
    r_cutlery         VARCHAR2(10),
    r_staff           VARCHAR2(10),
    r_vans            VARCHAR2(10),
    r_tableware       VARCHAR2(10),
    r_table           VARCHAR2(10),
    r_chairs          VARCHAR2(10),
    client_client_id  NUMBER NOT NULL
)
LOGGING;

CREATE UNIQUE INDEX resources__idx ON
    resources (
        client_client_id
    ASC )
        LOGGING;

ALTER TABLE resources ADD CONSTRAINT resources_pk PRIMARY KEY ( resource_id );

ALTER TABLE full_service
    ADD CONSTRAINT full_service_client_fk FOREIGN KEY ( client_client_id )
        REFERENCES client ( client_id )
    NOT DEFERRABLE;

ALTER TABLE full_service
    ADD CONSTRAINT full_service_party_service_fk FOREIGN KEY ( party_service_party_service_id )
        REFERENCES party_service ( party_service_id )
    NOT DEFERRABLE;

ALTER TABLE minimum_service
    ADD CONSTRAINT minimum_service_client_fk FOREIGN KEY ( client_client_id )
        REFERENCES client ( client_id )
    NOT DEFERRABLE;

ALTER TABLE party_service
    ADD CONSTRAINT party_service_client_fk FOREIGN KEY ( client_client_id )
        REFERENCES client ( client_id )
    NOT DEFERRABLE;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE party_service_to_resources
    ADD CONSTRAINT party_service_to_resources_party_service_fk FOREIGN KEY ( party_service_party_service_id )
        REFERENCES party_service ( party_service_id )
    NOT DEFERRABLE;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE party_service_to_resources
    ADD CONSTRAINT party_service_to_resources_resources_fk FOREIGN KEY ( resources_resource_id )
        REFERENCES resources ( resource_id )
    NOT DEFERRABLE;

ALTER TABLE resources
    ADD CONSTRAINT resources_client_fk FOREIGN KEY ( client_client_id )
        REFERENCES client ( client_id )
    NOT DEFERRABLE;



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             1
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   3
-- WARNINGS                                 0
