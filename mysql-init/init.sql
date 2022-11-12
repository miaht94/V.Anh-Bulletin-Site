CREATE DATABASE bbs;
USE bbs;

CREATE TABLE user (
    id         bigint(20)   NOT NULL AUTO_INCREMENT,
    username   varchar(50)  NOT NULL,
    email      varchar(255) NOT NULL,
    password   varchar(300) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE post (
    id         bigint(20)    NOT NULL AUTO_INCREMENT,
    title      nvarchar(251) NOT NULL,
    content    longtext      NOT NULL,
    authorid   bigint(20)    NOT NULL,
    thumbnail  varchar(255)  NOT NULL,
    created_at timestamp     NOT NULL DEFAULT NOW(),
    updated_at timestamp     NOT NULL DEFAULT NOW()
    ON UPDATE now(),
    PRIMARY KEY (id)
);