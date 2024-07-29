-- COUNT questions from hands-on lab
1. Retrieve the number of locations of the films which are directed by Woody Allen.
SELECT COUNT(*)
   ...> FROM locations
   ...> WHERE Director='Woody Allen';
31

2. Retrieve the number of films shot at Russian Hill.
SELECT COUNT(Title) UNQIUE
   ...> FROM locations
   ...> WHERE Locations='Russian Hill';
1

3. Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.
SELECT COUNT(*)                 
   ...> FROM locations
   ...> WHERE "Release Year"<1950;           
31


-- DISTINCT questions from hands-on lab
1. Retrieve the names of all unique films released in the 21st century and onwards, along with their release years.
SELECT DISTINCT Title, "Release Year"
   ...> FROM locations
   ...> WHERE "Release Year">=2001
   ...> ORDER BY Title;

2. Retrieve the directors'' names and their distinct films shot at City Hall.
SELECT DISTINCT Title, Director, Locations
   ...> FROM Locations
   ...> WHERE Locations='City Hall'
   ...> ORDER BY Title;

3. Retrieve the number of distributors who distributed films with the 1st actor, Clint Eastwood.
SELECT COUNT(DISTINCT Distributor)
   ...> from locations                     
   ...> WHERE "Actor 1"='Clint Eastwood';

-- LIMIT questions from hands-on lab
1. Retrieve the names of the first 50 films.
SELECT DISTINCT Title
   ...> FROM locations 
   ...> LIMIT 50;

2. Retrieve the first 10 film names released in 2015.
SELECT DISTINCT Title
   ...> FROM locations
   ...> WHERE "Release Year"=2015
   ...> LIMIT 10;

3. Retrieve the next 3 film names that follow after the first 5 films released in 2015.
SELECT Title
   ...> FROM locations
   ...> WHERE "Release Year"=2015
   ...> LIMIT 3 OFFSET 5;