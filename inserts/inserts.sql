INSERT INTO tbl_publisher (publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone) VALUES
('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'), -- ID 1
('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'), -- ID 2
('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'), -- ID 3
('Chilton Books','Not Available','Not Available'), -- ID 4
('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'), -- ID 5
('Alfred A. Knopf','1745 Broadway, New York, NY 10019','212-940-7390'), -- ID 6
('Bloomsbury','1385 Broadway, New York, NY 10018','212-419-5300'), -- ID 7
('Shinchosa','Tokyo, Japan','+81-3-5577-6507'), -- ID 8
('Harper and Row','195 Broadway, New York, NY 10007','212-207-7000'), -- ID 9
('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'), -- ID 10
('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'), -- ID 11
('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'), -- ID 12
('W.W. Norton','500 Fifth Avenue, New York, NY 10110','212-354-5500'), -- ID 13
('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'), -- ID 14
('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'), -- ID 15
('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745'); -- ID 16

-- Inserir Filiais
INSERT INTO tbl_library_branch (library_branch_BranchName, library_branch_BranchAddress) VALUES
('Sharpstown','32 Corner Road, New York, NY 10012'),
('Central','491 3rd Street, New York, NY 10014'),
('Saline','40 State Street, Saline, MI 48176'),
('Ann Arbor','101 South University, Ann Arbor, MI 48104');

-- Inserir Usuários
INSERT INTO tbl_borrower (borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone) VALUES
('Joe Smith','1321 4th Street, NY','212-312-1234'),
('Jane Smith','1321 4th Street, NY','212-931-4124'),
('Tom Li','981 Main Street, MI','734-902-7455'),
('Angela Thompson','2212 Green Avenue, MI','313-591-2122');

INSERT INTO tbl_book (book_Title, fk_publisherID) VALUES 
('The Name of the Wind', 1), ('It', 2), ('The Green Mile', 3), ('Dune', 4), 
('The Hobbit', 5), ('Eragon', 6), ('A Wise Mans Fear', 1), 
('Harry Potter and the Philosophers Stone', 7), ('Hard Boiled Wonderland', 8),
('The Giving Tree', 9), ('The Hitchhikers Guide', 10), ('Brave New World', 11),
('The Princess Bride', 12), ('Fight Club', 13), ('Holes', 14), 
('Harry Potter and the Chamber of Secrets', 7), ('Harry Potter and the Prisoner of Azkaban', 7),
('The Fellowship of the Ring', 5), ('A Game of Thrones', 15), ('The Lost Tribe', 16);

INSERT INTO tbl_book_loans (book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate) VALUES
(1, 1, 1, '2018-01-01', '2018-02-02'),
(2, 1, 1, '2018-01-01', '2018-02-02');