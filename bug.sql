The SQL query uses a function that is not supported by the database system. For example, using a function that is specific to MySQL in a PostgreSQL database will result in an error.  Another example is using a function that is only available in a specific version of a database system.  Here's an example showing a function, `GETDATE()`, that's specific to SQL Server, used incorrectly in PostgreSQL:
```sql
-- Incorrect usage of SQL Server's GETDATE() in PostgreSQL
SELECT * FROM my_table WHERE created_at > GETDATE() - INTERVAL '7 days';
```
This will fail in PostgreSQL because `GETDATE()` is not a standard SQL function, and PostgreSQL uses `NOW()` instead.