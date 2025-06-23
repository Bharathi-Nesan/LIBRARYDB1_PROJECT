create database LibraryDB;
use LibraryDB;
create table Authors( AuthorID int Primary Key auto_increment, name varchar(20) NOT NULL, bio text);
create table categories( CategoryID int primary key auto_increment, CategoryName varchar(20) Not null);
create table Books( BookID int primary key auto_increment, Title varchar(20) not null, ISBN varchar(20) unique, categoryID int, foreign key(categoryID) references categories(categoryID));
CREATE TABLE BookAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    JoinDate DATE
);
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
