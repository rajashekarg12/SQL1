BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE City';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

CREATE TABLE City (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO City (id, name) VALUES (1, 'New York');
INSERT INTO City (id, name) VALUES (2, 'London');
INSERT INTO City (id, name) VALUES (3, 'Tokyo');
