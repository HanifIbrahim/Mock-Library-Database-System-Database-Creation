/*
Hanif Lumsden
Oracle SQL DDL Script
08/10/2021
*/

--DROP statements below
DROP TRIGGER LibraryUser;
DROP TRIGGER Searches;
DROP TRIGGER Provider;
DROP TRIGGER Subject;
DROP TRIGGER Publisher;
DROP TRIGGER Sources;

DROP SEQUENCE LibraryUser_userid;
DROP SEQUENCE Searches_searchid;
DROP SEQUENCE Provider_id;
DROP SEQUENCE Subject_id;
DROP SEQUENCE Publisher_publisherid;
DROP SEQUENCE Sources_sourceid;

DROP VIEW UserInfo;
DROP VIEW SearchInfo;

DROP INDEX Publisher_providerid_FK;
DROP INDEX Publisher_issnisbn_FK;
DROP INDEX Publisher_publication;
DROP INDEX Publisher_author_name;

DROP INDEX Sources_subjectid_FK;
DROP INDEX Sources_title;

DROP INDEX Subject_name;

DROP INDEX Provider_name;
DROP INDEX Provider_url;

DROP INDEX Searches_fields;

DROP INDEX LibraryUser_institution;
DROP INDEX LibraryUser_username;

DROP TABLE Publisher;
DROP TABLE Sources;
DROP TABLE Subject;
DROP TABLE Provider;
DROP TABLE Searches;
DROP TABLE LibraryUser;

/* Tables are created below */

CREATE TABLE LibraryUser (
    userid          INTEGER         NOT NULL,
    name            VARCHAR2(255)   NOT NULL,
    username        VARCHAR2(30)    NOT NULL,
    password        VARCHAR2(30)    NOT NULL,
    institution     VARCHAR2(255),
    
    CONSTRAINT PK_LibraryUser PRIMARY KEY (userid)
);

CREATE TABLE Searches (
    searchid        INTEGER         NOT NULL,
    fields          VARCHAR2(512)   NOT NULL,
    discipline      VARCHAR2(200),
    search_mode     CHAR(1),
    
    CONSTRAINT PK_Searches PRIMARY KEY (searchid)
);

CREATE TABLE Provider (
    id              INTEGER         NOT NULL,
    name            VARCHAR2(512)   NOT NULL,
    subject_area    VARCHAR2(512)   NOT NULL,
    parent_company  VARCHAR2(512)   NOT NULL,
    url             VARCHAR2(1024)  NOT NULL,
    
    CONSTRAINT PK_Provider PRIMARY KEY (id)
);

CREATE TABLE Subject (
    id              INTEGER         NOT NULL,
    name            VARCHAR2(512)   NOT NULL,
    language        VARCHAR2(512)   NOT NULL,
    geography       VARCHAR2(512)   NOT NULL,
    
    CONSTRAINT PK_Subject PRIMARY KEY (id)
);

CREATE TABLE Sources (
    sourceid        INTEGER         NOT NULL,
    subjectid       INTEGER         NOT NULL,
    source_type     VARCHAR2(512)   NOT NULL,
    title           VARCHAR2(1024)  NOT NULL,
    year            INTEGER,
    url             VARCHAR2(1024)  NOT NULL,
    
    CONSTRAINT PK_Sources PRIMARY KEY (sourceid),
    CONSTRAINT FK_Sources_subjectid FOREIGN KEY (subjectid) REFERENCES Subject(id)

);

CREATE TABLE Publisher (
    publisherid     INTEGER         NOT NULL,
    providerid      INTEGER         NOT NULL,
    issnisbn        INTEGER         NOT NULL,
    publication     VARCHAR2(512)   NOT NULL,
    affiliation     VARCHAR2(512),
    author_name     VARCHAR2(512),
    
    CONSTRAINT PK_Publisher PRIMARY KEY (publisherid),
    CONSTRAINT FK_Publisher_providerid FOREIGN KEY (providerid) REFERENCES Provider(id),
    CONSTRAINT FK_Publisher_issnisbn FOREIGN KEY (issnisbn) REFERENCES Sources(sourceid)
    
);

/*Indices are created below*/

--NK for User
CREATE INDEX LibraryUser_username ON LibraryUser (username);
--FQC for User
CREATE INDEX LibraryUser_institution ON LibraryUser (institution);

--NK for Search
CREATE INDEX Searches_fields ON Searches (fields);

--NK for Provider
CREATE UNIQUE INDEX Provider_url ON Provider (url);
--FQC for Provider
CREATE INDEX Provider_name ON Provider (name);

--FQC for Subject
CREATE INDEX Subject_name ON Subject (name);

--FK for Source
CREATE INDEX Sources_subjectid_FK ON Sources (subjectid);
--FQC for Source
CREATE INDEX Sources_title ON Sources (title);

--FK for Publisher
CREATE INDEX Publisher_providerid_FK ON Publisher (providerid);
CREATE INDEX Publisher_issnisbn_FK ON Publisher (issnisbn);
--FQC for Publisher
CREATE INDEX Publisher_publication ON Publisher (publication);
CREATE INDEX Publisher_author_name ON Publisher (author_name);

/*Alters tables*/

ALTER TABLE LibraryUser ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);

ALTER TABLE Searches ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);


ALTER TABLE Provider ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);

ALTER TABLE Subject ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);

ALTER TABLE Sources ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);

ALTER TABLE Publisher ADD (
    created_by      VARCHAR2(50),
    date_created    DATE,
    modified_by     VARCHAR2(50),
    date_modified   DATE
);

/*Views*/
--Business requirement: To fetch information quickly regarding user of library database
CREATE OR REPLACE VIEW UserInfo AS
SELECT userid, name, institution
FROM LibraryUser;

--Business requirement: To fetch information quickly regarding search of library engaged via user
CREATE OR REPLACE VIEW SearchInfo AS
SELECT searchid, fields, search_mode
FROM Searches;

/*Creates Sequence*/
CREATE SEQUENCE LibraryUser_userid
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE Searches_searchid
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE Provider_id
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE Subject_id
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE Sources_sourceid
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
CREATE SEQUENCE Publisher_publisherid
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    NOCACHE;
    
/*Create Triggers*/
--The modified by, date modified, created by, date created, values will be updated in a newly inserted row in the User schema when a new user is inserted.
CREATE OR REPLACE TRIGGER LibraryUser
    BEFORE INSERT OR UPDATE ON LibraryUser
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.userid IS NULL THEN
                :NEW.userid := LibraryUser_userid.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
--When a new search is added, the modified by, date modified, created by, date created, values will be updated in a newly inserted row.
CREATE OR REPLACE TRIGGER Searches
    BEFORE INSERT OR UPDATE ON Searches
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.searchid IS NULL THEN
                :NEW.searchid := Searches_searchid.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
--The modified by, date modified, created by, date created, values will be updated in a newly inserted row.
CREATE OR REPLACE TRIGGER Provider
    BEFORE INSERT OR UPDATE ON Provider
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.id IS NULL THEN
                :NEW.id := Provider_id.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
--The modified by, date modified, created by, date created, values will be updated in a newly inserted row.
CREATE OR REPLACE TRIGGER Subject
    BEFORE INSERT OR UPDATE ON Subject
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.id IS NULL THEN
                :NEW.id := Subject_id.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
--The modified by, date modified, created by, date created, values will be updated in a newly inserted row.
CREATE OR REPLACE TRIGGER Publisher
    BEFORE INSERT OR UPDATE ON Publisher
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.publisherid IS NULL THEN
                :NEW.publisherid := Publisher_publisherid.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
--The modified by, date modified, created by, date created, values will be updated in a newly inserted row.
CREATE OR REPLACE TRIGGER Sources
    BEFORE INSERT OR UPDATE ON Sources
    FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            IF :NEW.sourceid IS NULL THEN
                :NEW.sourceid := Sources_sourceid.NEXTVAL;
            END IF;
            IF :NEW.created_by IS NULL THEN
                :NEW.created_by := USER;
            END IF;
            IF :NEW.date_created IS NULL THEN
                :NEW.date_created := SYSDATE;
            END IF;
        END IF;
        IF INSERTING OR UPDATING THEN
            :NEW.modified_by := USER;
            :NEW.date_modified := SYSDATE;
        END IF;
END;
/
