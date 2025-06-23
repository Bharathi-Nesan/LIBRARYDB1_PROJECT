-- data.sql

-- Categories
INSERT INTO Categories (CategoryName) VALUES ('Fiction'), ('Science'), ('History');

-- Authors
INSERT INTO Authors (Name, Bio) VALUES 
('Isaac Asimov', 'Sci-fi writer'),
('J.K. Rowling', 'Fantasy author'),
('Yuval Noah Harari', 'Historian and author');

-- Books
INSERT INTO Books (Title, ISBN, CategoryID) VALUES 
('Foundation', '9780451457998', 2),
('Harry Potter', '9780439708180', 1),
('Sapiens', '9780099590088', 3);

-- BookAuthors
INSERT INTO BookAuthors (BookID, AuthorID) VALUES 
(6, 1),
(7, 2),


-- Members
INSERT INTO Members (Name, Email, JoinDate) VALUES 
('Alice Johnson', 'alice@example.com', '2025-06-01'),
('Bob Smith', 'bob@example.com', '2025-06-02');

-- Loans
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate) VALUES 
(1, 1, '2025-06-03', '2025-06-10'),
(2, 2, '2025-06-04', NULL);
