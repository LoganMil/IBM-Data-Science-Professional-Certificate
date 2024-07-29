CREATE TABLE "Instructor" (
    "ins_id" INTEGER,
    "lastname" TEXT,
    "firstname" TEXT,
    "city" TEXT,
    "country" TEXT,
    PRIMARY KEY("ins_id")
);

INSERT INTO "Instructor" ("ins_id", "lastname", "firstname", "city", "country")
VALUES
    (1, 'Ahuja', 'Rav', 'Toronto', 'CA'),
    (2, 'Chong', 'Raul', 'Toronto', 'CA'),
    (3, 'Vasudevan', 'Hima', 'Chicago', 'US'),
    (4, 'Saha', 'Sandip', 'Edmonton', 'CA'),
    (5, 'Doe', 'John', 'Sydney', 'AU'),
    (6, 'Doe', 'Jane', 'Dhaka', 'BD'),
    (7, 'Cangiano', 'Antonio', 'Vancouver', 'CA'),
    (8, 'Ryan', 'Steve', 'Barlby', 'GB'),
    (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN')
;

-- -- to read this .SQL file into a sqlite3 db run the following command
-- .read instructors.sql

