-- 创建 Customer 表
CREATE TABLE Customer (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Create_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Balance FLOAT(10),
    Type CHAR(1)
);

-- 创建 Broker 表
CREATE TABLE Broker (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Salary INT,
);

-- 创建 Transaction 表
CREATE TABLE Transaction (
    ID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    BrokerID INT NOT NULL,
    Type CHAR(1),
    Create_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Execution_Time TIMESTAMP,
    Cancellation_Time TIMESTAMP,
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
    FOREIGN KEY (BrokerID) REFERENCES Broker(ID)
);

-- 创建 Stock 表
CREATE TABLE Stock (
    ID INT PRIMARY KEY,
    TransactionID INT NOT NULL,
    Code VARCHAR(10),
    Name VARCHAR(255),
    FOREIGN KEY (TransactionID) REFERENCES Transaction(ID)
);