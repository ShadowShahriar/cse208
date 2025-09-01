---
title: Database Systems
author: S. Shahriar <shadowshahriar@gmail.com>
subject: Lab Report 5
keywords: xampp, mysql
colorTheme: light
codeTheme: stackoverflow-light
fonts: ['Nunito:ital,wght@0,200..1000;1,200..1000', 'JetBrains+Mono:ital,wght@0,100..800;1,100..800']
cssFontText: ['Nunito']
cssFontCode: ['JetBrains Mono']
cssFontEmoji: ['Noto+Color+Emoji']
cssWatermark: ['20245103408']
specialWords: ['Ans.', 'Output:']
cssPageHeader: ['']
headerClass: new-page
lang: none
addCover: true
coverPageName: Cover Page
cssPageNumberPlacement: right
preset: none
---

::: {#cover.border}

<section>
	<img id="watermark" class="round" src="./bubt.png" width="200px" />
</section>
<section>
	<p class="h1 w800 underline text-upr">Lab Report</p>
	<table class="compact borderless table-large table-upr padless" style="width: 5.1in">
		<tr>
			<th>Course Title</th>
			<th>:</th><td>Database Systems Lab</td>
		</tr>
		<tr>
			<th>Course Code</th>
			<th>:</th><td>CSE 208</td>
		</tr>
		<tr>
			<th>Lab Report No.</th>
			<th>:</th><td>05</td>
		</tr>
		<tr>
			<th>Submission Date</th>
			<th>:</th><td>03-09-2025</td>
		</tr>
	</table>
</section>
<section style="--hw: 7.2rem;">
	<p class="h2 w800 text-upr">Submitted To</p>
	<table class="compact borderless table-large table-upr padless withleader">
		<tr>
			<th>Name</th>
			<td>Farha Akhter Munmun</td>
		</tr>
		<tr>
			<th>Dept. of</th>
			<td>Computer Science and Engineering (CSE)</td>
		</tr>
		<tr>
			<th></th>
			<td>Bangladesh University of Business & Technology (BUBT)</td>
		</tr>
	</table>
</section>
<section style="--hw: 7.2rem;">
	<p class="h2 w800 text-upr">Submitted By</p>
	<table class="compact borderless table-large table-upr padless withleader">
		<tr>
			<th>Name</th>
			<td>Shadman Shahriar</td>
		</tr>
		<tr>
			<th>ID No.</th>
			<td>20245103408</td>
		</tr>
		<tr>
			<th>Intake</th>
			<td>53</td>
		</tr>
		<tr>
			<th>Section</th>
			<td>1</td>
		</tr>
		<tr>
			<th>Program</th>
			<td>B.Sc. Engg. in CSE</td>
		</tr>
	</table>
</section>

:::

::: {.centered-heading}

# Database Systems Lab

:::

This is a continuation of the topics discussed in the previous labs. It inherits the six data tables from the **2nd lab** and primary keys from the **3rd lab**.

<!-- <p align="center">
<img src="images/account.png" width="660px" alt="Account relation"/>
<img src="images/branch.png" width="660px" alt="Branch relation"/>
<img src="images/depositor.png" width="660px" alt="Depositor relation"/>
<img src="images/customer.png" width="660px" alt="Customer relation"/>
<img src="images/loan.png" width="660px" alt="Loan relation"/>
<img src="images/borrower.png" width="660px" alt="Borrower relation"/>
</p> -->

![Account relation](images/account.png)

![Branch relation](images/branch.png)

![Depositor relation](images/depositor.png)

![Customer relation](images/customer.png)

![Loan relation](images/loan.png)

![Borrower relation](images/borrower.png)

# Lab Tasks

## 1. Fetch all the customer's name in alphabetic order who lives in `Harrison`

```sql
SELECT customer_name FROM customer
WHERE customer_city="Harrison"
ORDER BY customer_name;
```

![Task 1](images/Q1.png)

## 2. Find the list of all customers in alphabetic order who have a loan at the `Perryridge` branch

```sql
SELECT * FROM loan, borrower
WHERE loan.loan_number=borrower.loan_number
AND branch_name="Perryridge";
```

![Task 2A](images/Q2a.png)

Alternative approach:

```sql
SELECT * FROM loan NATURAL JOIN borrower
WHERE branch_name="Perryridge";
```

![Task 2B](images/Q2b.png)

## 3. Find all customers who have a loan from the bank, find their names, loan numbers and loan amount

```sql
SELECT customer_name, loan.loan_number, amount
FROM loan, borrower
WHERE borrower.loan_number=loan.loan_number;
```

![Task 3](images/Q3.png)

## 4. Find the name of all branches from `loan` table

```sql
SELECT DISTINCT branch_name FROM loan;
```

![Task 4](images/Q4.png)

## 5. Find loan number and 5 times amount from `loan` relation and replace the column name with `Total Balance`

```sql
SELECT loan_number, amount*5 "Total Balance" FROM loan;
```

![Task 5](images/Q5.png)

## 6. Increase all loan amount by 5 percent from `loan` relation

```sql
SELECT loan_number, amount*1.05 FROM loan;
```

![Task 6](images/Q6.png)

## 7. Give 6 percent interest for all loans with amount over `1000`

```sql
SELECT loan_number, amount*1.06 FROM loan
WHERE amount > 1000;
```

![Task 7](images/Q7.png)

## 8. Delete all information of Perryridge branch from `branch` table

```sql
DELETE FROM branch WHERE branch_name="Perryridge";
```

![Task 8A](images/Q8a.png)

![Task 8B](images/Q8b.png)

## 9. Delete all loans with loan amounts between `1300` and `1500`

```sql
DELETE FROM loan
WHERE amount >= 1300 AND amount <= 1500;
```

![Task 9A](images/loan.png)

![Task 9B](images/Q9.png)
