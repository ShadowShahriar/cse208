# Lab Evaluation

[**📌 Question Paper**](assets/tasks-set-02.jpg)

## Database Creation

```sql
CREATE DATABASE eval_408;
```

![Database creation](images/00.png)

## Table Creation

```sql
CREATE TABLE student(std_id int(2), name char(2), address varchar(8), phone char(10), age float(4.2));
```

![Table creation](images/01.png)

## Data Insertion

```sql
INSERT INTO student VALUES(1, "Ab", "Dhaka", "12346478", 20.00);
INSERT INTO student VALUES(2, "Ac", "Shylet", "11233573", 21.00);
INSERT INTO student VALUES(3, "Ad", "Rangpur", "12351343", 22.00);
INSERT INTO student VALUES(4, "Ae", "Siraganj", "23455967", 23.00);
INSERT INTO student VALUES(5, "Af", "Pabna", "34561233", 21.00);
```

![Data insertion](images/02.png)

# Lab Tasks

## 1. Find the total number of students (column name should be "Total number of students")

```sql
SELECT Count(*) "Total number of students" FROM student;
```

![Task 1](images/03.png)

## 2. Find the last 3 digits from the contact number for each student

```sql
SELECT Right(phone, 3) "Last Three Digits" FROM student;
```

![Task 2](images/04.png)

## 3. Find the ID and age of those students which has an age greater than the average age of all students

```sql
SELECT std_id, age FROM student WHERE age > (SELECT Avg(age) FROM student);
```

![Task 3](images/05.png)

## 4. Find the name of the student the highest age

```sql
SELECT name FROM student WHERE age=(SELECT Max(age) FROM student);
```

![Task 4](images/06.png)

## 5. Find the ID of those students whose address has `a` in 2nd position and `g` in 4th position

```sql
SELECT std_id FROM student WHERE address LIKE "_a_g%";
```

![Task 5](images/07.png)

## 6. Increase the age of each student by 2%

```sql
UPDATE student
SET age=(age * (1 + 2/100));
```

![Task 6](images/08.png)
