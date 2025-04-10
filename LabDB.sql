CREATE TABLE Destinations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Destinations (Name, Price)
VALUES ('BenThanh', 15000),
       ('SuoiTien', 20000);


CREATE TABLE Transactions (
    Id INT PRIMARY KEY IDENTITY(1,1),
    DestinationId INT NOT NULL,
    CardNumber NVARCHAR(50) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    TransactionDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (DestinationId) REFERENCES Destinations(Id)
);

CREATE TABLE Tickets (
    Id INT PRIMARY KEY IDENTITY(1,1),
    TransactionId INT NOT NULL,
    TicketCode NVARCHAR(50) NOT NULL,
    IssueDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (TransactionId) REFERENCES Transactions(Id)
);