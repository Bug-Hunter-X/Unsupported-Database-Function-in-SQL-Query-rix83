To fix this, use standard SQL functions or the equivalent functions provided by the specific database system.  For example, replace the SQL Server's `GETDATE()` function with the PostgreSQL equivalent `NOW()`:
```sql
-- Correct usage in PostgreSQL
SELECT * FROM my_table WHERE created_at > NOW() - INTERVAL '7 days';
```
Another solution is to use a database-agnostic approach. You can use a parameterized query to set the date, allowing you to switch databases without needing to change your function calls. This is generally a better practice for portability and maintaining your code.
Example using parameterized query:
```sql
-- Database-agnostic approach using parameterized query
SELECT * FROM my_table WHERE created_at > ?;
```
This parameterized query could be used with any database and would only need adjustments in how you bind the date value '7 days before now' to the query.