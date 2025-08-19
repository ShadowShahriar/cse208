# SQL Cheat Sheet

## General Formulas

To create a new database:

```sql
CREATE DATABASE DB_Name;
```

To create a new table:

```sql
CREATE TABLE T_NAME (COL_NAME DATA_TYPE(SIZE), ...);
```

To insert a new row:

```sql
INSERT INTO T_NAME VALUES(val1, val2, ...);
```

To delete an existing column:

```sql
ALTER TABLE T_NAME
DROP COLUMN COL_NAME;
```

To delete existing rows (based on a condition):

```sql
DELETE FROM T_NAME
WHERE CONDITION;
```
