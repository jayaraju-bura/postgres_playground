CREATE SEQUENCE serial;
SELECT nextval('serial');
SELECT nextval('serial');
\db

CREATE table table_name (
  id integer NOT NULL DEFAULT nextval('serial') PRIMARY KEY,
  name varchar NOT NULL
);

ALTER SEQUENCE serial OWNED BY table_name.id;

INSERT INTO table_name(name) VALUES ('ford');
SELECT * FROM table_name;




-- Output:

-- CREATE SEQUENCE
--  nextval 
-- ---------
--        1
-- (1 row)

--  nextval 
-- ---------
--        2
-- (1 row)

--        List of tablespaces
--     Name    |  Owner   | Location 
-- ------------+----------+----------
--  pg_default | postgres | 
--  pg_global  | postgres | 
-- (2 rows)

-- CREATE TABLE
-- ALTER SEQUENCE
-- INSERT 0 1
--  id | name 
-- ----+------
--   3 | ford
-- (1 row)
