CREATE TABLE "locations" (
    "id" INTEGER,
    "Title" TEXT NOT NULL,
    "Release Year" INTEGER,
    "Locations" TEXT NOT NULL,
    "Fun Facts" TEXT,
    "Production Company" TEXT,
    "Distributor" TEXT,
    "Director" TEXT,
    "Writer" TEXT,
    "Actor 1" TEXT,
    "Actor 2" TEXT,
    "Actor 3" TEXT,
    "SF Find Neighborhoods" INTEGER, 
    "Analysis Neighborhoods" INTEGER, 
    "Current Supervisor Districts" INTEGER,
    PRIMARY KEY("id")
);

-- INSERT INTO "Locations" ("Title", "Release Year", "Locations", "Fun Facts", "Production Company", "Distributor", "Director", "Writer", "Actor 1", "Actor 2", "Actor 3", "SF Find Neighborhoods", "Analysis Neighborhoods", "Current Supervisor Districts")
-- VALUES
-- ('Experiment in Terror', 1962, '100 St. Germain Avenue', '', 'Columbia Pictures Corporation', 'Columbia Pictures', 'Blake Edwards', 'The Gordons', 'Glenn Ford', 'Lee Remick', 'Stefanie Powers', 47, 38, 8),
-- ('Chan is Missing', 1982, 'Li Po (916 Grant Avenue at Washington, Chinatown)', '', 'New Yorker Films', 'New Yorker Films', 'Wayne Wang', 'Wayne Wang', 'Wood Moy', 'Marc Hayashi', 'Lauren Chew', 104, 6, 3)
-- ;


-- -- insert csv file into table in sqlite, --we use skip 1 to skip the heading line of the file when importing
-- INSERT --csv --skip 1 Film_Locations_in_San_Francisco_20240726.csv "locations"