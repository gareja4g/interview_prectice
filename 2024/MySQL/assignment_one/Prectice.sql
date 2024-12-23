
--MySQL Practice Question

--Section A: Database Creation and Table Management

--1. Create a new database named `movie_rentals`.
CREATE DATABASE movie_rentals;

--2. Select the `movie_rentals` database for use.
USE movie_rentals;

-- 3. Create two tables:
--    - `members`: Fields should include `id`, `full_name`, `gender`, `date_of_birth`, `address`, `contacts`, `email`.
CREATE TABLE members (
   id INT(4) PRIMARY KEY AUTO_INCREMENT,
   full_name VARCHAR(30),
   email VARCHAR(30) UNIQUE,
   contacts VARCHAR(20),
   gender ENUM('Male', 'Female'),
   date_of_birth DATE,
   address LONGTEXT
);
--    - `category`: Fields should include `id`, `title`.
CREATE TABLE category (
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(30) UNIQUE
);

-- 4. Create a third table named `movies` with the following fields: `id`, `title`, `director`, `year_released`, `category_id`, `membership_id`. Ensure that appropriate foreign keys are added for `category_id` and `membership_id`.

CREATE TABLE movies (
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(30) UNIQUE,
   director VARCHAR(30),
   year_released YEAR,
   category_id INT,
   membership_id INT,
   FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (membership_id) REFERENCES members(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Section B: Data Manipulation

-- 5. Insert records into the `category` table with the following values: 'Action', 'Drama', 'Comedy'.
INSERT INTO category (title) 
VALUES 
  ("Science Fiction"), 
  ("Action"), 
  ("Crime"), 
  ("Drama"), 
  ("Animation");

-- 6. Insert records into the `members` table with data for at least two members.
INSERT INTO members (full_name, email, contacts, gender, date_of_birth, address) 
VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', 'Male', '1985-02-15', '123 Elm Street, Springfield, IL, 62701'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', 'Female', '1990-06-20', '456 Oak Avenue, Madison, WI, 53703'),
('Alice Johnson', 'alice.johnson@example.com', '555-123-4567', 'Female', '1995-12-05', '789 Pine Road, Chicago, IL, 60601'),
('Michael Brown', 'michael.brown@example.com', '222-333-4444', 'Male', '1988-09-10', '101 Maple Street, Austin, TX, 73301'),
('Sarah Wilson', 'sarah.wilson@example.com', '333-444-5555', 'Female', '1992-03-14', '202 Cedar Boulevard, Houston, TX, 77001'),
('David Clark', 'david.clark@example.com', '444-555-6666', 'Male', '1980-01-30', '303 Birch Drive, Los Angeles, CA, 90001'),
('Emma Harris', 'emma.harris@example.com', '555-777-8888', 'Female', '1994-07-22', '404 Cherry Crescent, New York, NY, 10001'),
('James Lee', 'james.lee@example.com', '666-888-9999', 'Male', '1987-11-18', '505 Willow Lane, Boston, MA, 02108'),
('Emily White', 'emily.white@example.com', '777-999-0000', 'Female', '1996-04-10', '606 Ash Road, Phoenix, AZ, 85001'),
('Robert King', 'robert.king@example.com', '888-111-2222', 'Male', '1983-10-25', '707 Redwood Drive, Seattle, WA, 98101');

-- 7. Insert records into the `movies` table with data for at least two movies, ensuring that one belongs to 'Action' and the other belongs to 'Drama'.
INSERT INTO movies (title, director, year_released, category_id, membership_id) 
VALUES
('Inception', 'Christopher Nolan', 2010, 1, 1),
('The Dark Knight', 'Christopher Nolan', 2008, 2, 2),
('The Godfather', 'Francis Ford Coppola', 1972, 3, 3),
('The Shawshank Redemption', 'Frank Darabont', 1994, 4, 4),
('Action Packed Adventure', 'John Doe', 2008, 2, 1),
('Mystery of the Dark', 'Jane Smith', 2008, 2, 2),
('Pulp Fiction', 'Quentin Tarantino', 1994, 3, 5),
('Forrest Gump', 'Robert Zemeckis', 1994, 4, 6),
('Avatar', 'James Cameron', 2009, 1, 7),
('The Matrix', 'The Wachowskis', 1999, 1, 8),
('The Lion King', 'Roger Allers, Rob Minkoff', 1994, 5, 9),
('Gladiator', 'Ridley Scott', 2000, 2, 10);

-- 8. Write a generic SQL query to insert a new record into a table.
INSERT INTO members (full_name, email, contacts, gender, date_of_birth, address)
VALUES ('New Member', 'new.member@example.com', '555-123-4567', 'Male', '1995-08-15', '123 New Street, New York, NY, 10001');

INSERT INTO category (title) VALUES ('Horror');

INSERT INTO movies (title, director, year_released, category_id, membership_id)
VALUES ('The New Movie', 'John Director', 2024, 1, 1);


--Section C: SELECT Queries and Filtering Data

-- 9. Write a query to select all records from the `members` table.
SELECT * FROM members;

-- 10. Write a query to select only the `full_name`, `gender`, `address`, and `email` columns from the `members` table.
SELECT full_name, gender, address, email FROM members;

-- 11. Write a query to get the details of the member with `id = 1` from the `members` table.
SELECT * FROM members WHERE id = 1;

-- 12. Write a query using the `WHERE` clause to filter all female members from the `members` table.
SELECT * FROM members WHERE gender = 'Female';

-- 13. Write a query to get all movies in category 2 that were released in the year 2008.
SELECT * FROM movies WHERE category_id = 2 AND year_released = 2008;

-- 14. Write a query to get all movies from either category 1 or category 2.
SELECT * FROM movies WHERE category_id = 1 OR category_id = 2;

-- Section D: Aggregation and Grouping

-- 15. Write a query to count the number of male and female members from the `members` table.
SELECT COUNT(gender), gender FROM members GROUP BY gender;

-- 16. Write a query to find the total number of rentals for the movie with `id = 2` in the `movierentals` table.
17. Write a query to get the latest movie year released using the `MAX` function in the `movies` table.
18. Write a query to find the average payment amount from the `payments` table.

Section E: Sorting and Pattern Matching

19. Write a query to get the members sorted in descending order by `date_of_birth`.
20. Write a query to get the members sorted first by `gender` (ascending) and then by `date_of_birth` (descending).
21. Write a query to select all movies whose title contains the word "code".
22. Write a query to select all movies released in the year "200X" using the underscore (`_`) wildcard.
23. Write a query to select all movies that were not released in the year "200X".

Section F: SQL Modifications and Management

24. Write a query to add a new column `phone_number` to the `members` table.
25. Write a query to modify the column `full_name` in the `members` table to have a width of 50 characters instead of 250.
26. Write a query to rename the `movierentals` table to `movie_rentals`.
27. Write a query to drop the `movierentals` table from the database.
28. Write a query to drop the `movie_rentals` table from the database.
29. Write a query to delete the `movie_rentals` database.

Section G: Advanced SQL Queries

30. Write a query to get unique values for `gender` from the `members` table.
31. Write a query to get the movie `category_id` and the corresponding year in which each movie was released from the `movies` table.
32. Write a query to get the number of times a movie has been rented from the `movierentals` table, ensuring that duplicates are omitted.
33. Write a query to retrieve the first 10 rows from the `members` table.
34. Write a query to get records from the second row and limit the results to 2 rows in the `members` table.

Instructions:
- Write the SQL queries in the spaces provided.
- Ensure that your queries are correct and follow the proper syntax.
- You may assume that the tables are already created as described in the task.
