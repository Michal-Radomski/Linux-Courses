SQL injection (SQLi) is a type of cyberattack where malicious SQL code is inserted into input fields or application queries
to manipulate a database. Attackers exploit vulnerabilities in applications that fail to properly validate or sanitize user
input before including it in SQL statements. This enables attackers to interfere with queries the application sends to its
database.

### What is SQL Injection?

- An attacker inserts or "injects" SQL commands into input areas (such as login forms, search boxes, or URL parameters) that
  get executed by the database.
- Successful SQL injection can allow attackers to read sensitive data (like user details or passwords), modify or delete
  data, execute administrative tasks on the database, and sometimes even execute commands on the underlying operating system.
- It is one of the most common and dangerous web security vulnerabilities, often leading to data breaches and loss of data
  integrity.

### Consequences of a SQL Injection Attack:

- Unauthorized viewing and theft of data.
- Tampering with or deleting data.
- Bypassing application authentication.
- Gaining administrative control over the database.
- In severe cases, full system compromise.

### How It Happens:

- When an application constructs SQL queries by concatenating user input directly into SQL commands without validation,
  attackers craft inputs that alter the intended SQL behavior.
- For example, a login form that directly inserts a username and password into a SQL query can be manipulated to always
  return true, allowing unauthorized access.

### Prevention:

- Use prepared statements and parameterized queries.
- Validate and sanitize user input.
- Employ least privilege for database users.
- Regularly update and patch applications and database systems.

Understanding and mitigating SQL injection is critical for securing data-driven web applications.[1][2][3][5][8]

[1](https://owasp.org/www-community/attacks/SQL_Injection) [2](https://en.wikipedia.org/wiki/SQL_injection)
[3](https://www.crowdstrike.com/en-us/cybersecurity-101/cyberattacks/sql-injection-attack/)
[4](https://www.fortinet.com/uk/resources/cyberglossary/sql-injection)
[5](https://portswigger.net/web-security/sql-injection) [6](https://www.w3schools.com/sql/sql_injection.asp)
[7](https://www.imperva.com/learn/application-security/sql-injection-sqli/)
[8](https://www.cloudflare.com/learning/security/threats/sql-injection/)
[9](https://www.proofpoint.com/au/threat-reference/sql-injection)
