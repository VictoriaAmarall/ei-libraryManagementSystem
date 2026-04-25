CREATE DATABASE eilibraryManagementSystem;
USE eilibraryManagementSystem;

CREATE TABLE tbl_publisher (
    publisher_ID INT PRIMARY KEY AUTO_INCREMENT,
    publisher_PublisherName VARCHAR(255),
    publisher_PublisherAddress VARCHAR(255),
    publisher_PublisherPhone VARCHAR(50)
);

CREATE TABLE tbl_book (
    book_BookID INT PRIMARY KEY AUTO_INCREMENT,
    book_Title VARCHAR(255),
    fk_publisherID INT,
    FOREIGN KEY (fk_publisherID) REFERENCES tbl_publisher(publisher_ID)
);

CREATE TABLE tbl_library_branch (
    library_branch_BranchID INT PRIMARY KEY AUTO_INCREMENT,
    library_branch_BranchName VARCHAR(255),
    library_branch_BranchAddress VARCHAR(255)
);

CREATE TABLE tbl_borrower (
    borrower_CardNo INT PRIMARY KEY AUTO_INCREMENT,
    borrower_BorrowerName VARCHAR(255),
    borrower_BorrowerAddress VARCHAR(255),
    borrower_BorrowerPhone VARCHAR(50)
);

-- Tabelas de Relacionamento
CREATE TABLE tbl_book_authors (
    book_authors_BookID INT,
    book_authors_AuthorName VARCHAR(255),
    FOREIGN KEY (book_authors_BookID) REFERENCES tbl_book(book_BookID)
);

CREATE TABLE tbl_book_copies (
    book_copies_BookID INT,
    book_copies_BranchID INT,
    book_copies_No_Of_Copies INT,
    FOREIGN KEY (book_copies_BookID) REFERENCES tbl_book(book_BookID),
    FOREIGN KEY (book_copies_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID)
);

CREATE TABLE tbl_book_loans (
    book_loans_BookID INT,
    book_loans_BranchID INT,
    book_loans_CardNo INT,
    book_loans_DateOut DATE,
    book_loans_DueDate DATE,
    FOREIGN KEY (book_loans_BookID) REFERENCES tbl_book(book_BookID),
    FOREIGN KEY (book_loans_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID),
    FOREIGN KEY (book_loans_CardNo) REFERENCES tbl_borrower(borrower_CardNo)
);
