### SQL Practical Task
This task is designed to evaluate your understanding of SQL queries and database management. Please follow the instructions carefully and perform each task as described. Make sure to save your queries and results for review.

---

### **Database Creation and Setup**
1. **Create a database** using an SQL query.
2. **Select the created database** for subsequent operations.
3. **Create tables** using SQL queries:
   - **`members` table**:
     - Fields: `id`, `full_name`, `gender`, `date_of_birth`, `address`, `contacts`, `email`.
   - **`category` table**:
     - Fields: `id`, `title`.
   - **`movies` table**:
     - Fields: `id`, `title`, `director`, `year_released`, `category_id`, `membership_id`.
4. **Insert records** into all the tables. Insert at least 3 records per table.

---

### **Basic Data Manipulation**
5. Write SQL **INSERT queries** to add data into the tables.
6. Perform basic data retrieval:
   - Retrieve all records from the `members` table.
   - Retrieve specific fields (`full_name`, `gender`, `address`, `email`) from the `members` table.
   - Retrieve details of a member where `id = 1` from the `members` table.

---

### **Filter and Query Data**
7. Write queries using:
   - DISTINCT, SELECT *, FROM, WHERE, GROUP BY, HAVING.
   - WHERE clauses with conditions such as `IN`, `OR`, `AND`, `NOT IN`, `=`, `!=`, `>`, `<`.
8. Perform specific queries:
   - Get a list of all movies in `category_id = 2` released in 2008.
   - Retrieve movies in either `category_id = 1` or `category_id = 2`.
   - Get rows where `members.id` is 1, 2, or 3.
   - Retrieve all female members (`gender = 'Female'`).
   - Retrieve all payments greater than 2,000 from the `payments` table.

---

### **Sorting and Aggregation**
9. Sort and arrange data:
   - Retrieve members in **descending order** of `date_of_birth`.
   - Sort members by `gender` (ascending) and `date_of_birth` (descending).
10. Perform aggregations:
    - Get the total number of males and females in the `members` table.
    - Find the average payment amount in the `payments` table.

---

### **Pattern Matching**
11. Use pattern matching:
    - Get movies with the word "code" in the title (use `%code%`).
    - Retrieve movies released in the year `200X` (use `_` wildcard).
    - Exclude movies released in the year `200X`.

---

### **Advanced Data Operations**
12. Perform table-specific operations:
    - Create a `movierentals` table based on the provided schema/image.
    - Count the number of times the movie with `id = 2` was rented out.
    - Remove duplicate records (with the same `movie_id`) from the `movierentals` table.
    - Get the latest movie release year using the `MAX` function.
13. Perform specific column and data modifications:
    - Add a new field to the `members` table.
    - Change the `full_name` field's width from 250 to 50 in the `members` table.

---

### **Table and Database Management**
14. Manage tables and databases:
    - Delete a database using the `DROP` command.
    - Delete a table, column, or other objects from a database.
    - Rename the table `movierentals` to `movie_rentals`.
    - Drop the `movierentals` table from the database.

---

### **Pagination**
15. Implement pagination:
    - Retrieve only 10 members from the database.
    - Retrieve data starting from the second row, limiting the results to 2 rows.

---

### **Instructions**
- Save all queries and results.
- Organize queries by their task numbers.
- Use meaningful comments to explain your logic where necessary.
- Prepare a script file containing all SQL queries for submission.
