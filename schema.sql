GO
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Loan;
DROP TABLE IF EXISTS Employee;
GO
CREATE TABLE Employee(
    employee_id VARCHAR(15) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(15,2),
    hire_date DATE,
    branch_id VARCHAR(10),

    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
GO
CREATE TABLE Loan(
    loan_id VARCHAR(15) PRIMARY KEY,
    customer_id VARCHAR(15),
    branch_id VARCHAR(10),
    loan_type VARCHAR(30),
    loan_amount DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    duration_in_months INT,
    start_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
GO

CREATE TABLE Transactions(
    transaction_id VARCHAR(20) PRIMARY KEY,
    account_no VARCHAR(20),
    transaction_type VARCHAR(20),
    amount DECIMAL(15,2),
    transaction_date DATETIME,
    description VARCHAR(200),
    reference_number VARCHAR(30),

    FOREIGN KEY (account_no) REFERENCES Account(account_no)
);
GO