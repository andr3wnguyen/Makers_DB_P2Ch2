DROP TABLE IF EXISTS "public"."books";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
-- CREATE SEQUENCE IF NOT EXISTS books_id_seq;

-- Table Definition
CREATE TABLE "public"."books" (
    "id" SERIAL,
    "title" text,
    "author_name" text,
    PRIMARY KEY ("id")
);

-- TRUNCATE TABLE books RESTART IDENTITY CASCADE; 

INSERT INTO books (title, author_name) VALUES ('Nineteen Eighty-Four', 'George Orwell');
INSERT INTO books (title, author_name) VALUES ('Mrs Dalloway', 'Virginia Woolf');