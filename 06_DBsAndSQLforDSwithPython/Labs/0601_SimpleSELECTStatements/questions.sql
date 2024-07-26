-- Questions
-- 1. Retrieve the fun facts and filming locations of all films.
SELECT "id", "Title", "Fun Facts", "Locations" 
    ...> FROM "locations" 
    ...> WHERE "Fun Facts"!='' 
    ...> LIMIT 10;

-- 2. Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000), along with filming locations and release years.
SELECT "id", "Title", "Locations", "Release Year"
   ...> FROM "locations"
   ...> WHERE "Release Year" <= 2000 
   ...> LIMIT 10;

-- 3. Retrieve the names, production company names, filming locations, and release years of the films not written by James Cameron.
SELECT "id", "Title", "Director", "Production Company", "Locations", "Release Year"
   ...> FROM "locations"
   ...> WHERE "Director" != 'James Cameron' 
   ...> LIMIT 10;