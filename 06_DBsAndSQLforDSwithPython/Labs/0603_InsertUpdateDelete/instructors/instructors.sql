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
    (3, 'Vasudevan', 'Hima', 'Chicago', 'US')
;

-- -- to read this .SQL file into a sqlite3 db run the following command
-- .read instructors.sql

