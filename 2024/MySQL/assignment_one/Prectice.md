
MySQL Practice Question

Section A: Database Creation and Table Management

1. Create a new database named `movie_rentals`.
2. Select the `movie_rentals` database for use.
3. Create two tables:
   - `members`: Fields should include `id`, `full_name`, `gender`, `date_of_birth`, `address`, `contacts`, `email`.
   - `category`: Fields should include `id`, `title`.
4. Create a third table named `movies` with the following fields: `id`, `title`, `director`, `year_released`, `category_id`, `membership_id`. Ensure that appropriate foreign keys are added for `category_id` and `membership_id`.

Section B: Data Manipulation

5. Insert records into the `category` table with the following values: 'Action', 'Drama', 'Comedy'.
6. Insert records into the `members` table with data for at least two members.
7. Insert records into the `movies` table with data for at least two movies, ensuring that one belongs to 'Action' and the other belongs to 'Drama'.
8. Write a generic SQL query to insert a new record into a table.

Section C: SELECT Queries and Filtering Data

9. Write a query to select all records from the `members` table.
10. Write a query to select only the `full_name`, `gender`, `address`, and `email` columns from the `members` table.
11. Write a query to get the details of the member with `id = 1` from the `members` table.
12. Write a query using the `WHERE` clause to filter all female members from the `members` table.
13. Write a query to get all movies in category 2 that were released in the year 2008.
14. Write a query to get all movies from either category 1 or category 2.

Section D: Aggregation and Grouping

15. Write a query to count the number of male and female members from the `members` table.
16. Write a query to find the total number of rentals for the movie with `id = 2` in the `movierentals` table.
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
