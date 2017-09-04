USE dbOregonLibrary
GO



--QUESTION 1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
--is"Sharpstown"?
-----------------

--CREATE PROC Search_TheLostTribeAtSharpstown
--AS

SELECT Bk.Title, Bk.PublisherName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bk
ON BC.BookID = Bk.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE BC.BookID = 3 AND LB.BranchID = 1

SELECT BOOKS.Title, BOOKS.PublisherName, LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_of_Copies
FROM BOOK_COPIES
INNER JOIN BOOKS
ON BOOK_COPIES.BookID = BOOKS.BookID
INNER JOIN LIBRARY_BRANCH
ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
WHERE BOOKS.Title = 'The Lost Tribe' AND LIBRARY_BRANCH.BranchName = 'Sharpstown'



--Search_TheLostTribeAtSharpstown

---------------
---------------
--QUESTION 2.How many copies of the book titled The Lost Tribe are owned by each library branch?


--CREATE PROC Search_TheLostTribeAtAllLibraries
--AS

SELECT Bs.Title, Bs.PublisherName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bs
ON BC.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE BC.BookID = 3

SELECT * FROM BOOK_COPIES

--Search_TheLostTribeAtAllLibraries

---------------
---------------
--QUESTION 3. Retrieve the names of all borrowers who do not have any books checked out.

--CREATE PROC Search_BorrowersWithNoBooksCheckedOut
--AS

SELECT BO.Name, BL.CardNo 
FROM BOOK_LOANS AS BL
RIGHT JOIN BORROWER AS BO
ON BL.CardNo = BO.CardNo
WHERE BL.CardNo IS NULL

SELECT Name FROM BORROWER
	WHERE NOT EXISTS (Select * from BOOK_LOANS
	WHERE BOOK_LOANS.CardNo=BORROWER.CardNo);

--Search_BorrowersWithNoBooksCheckedOut

---------------
---------------
--QUESTION 4.For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
--retrieve the book title, the borrower's name, and the borrower's address. 


--DROP PROC Search_SharpstownBooksDueToday
--CREATE PROC Search_SharpstownBooksDueToday @today DATE
--AS

SELECT Bs.Title, Bo.Name, Bo.Address, LB.BranchName, BL.DateDue
FROM BOOK_LOANS AS BL
INNER JOIN BOOKS AS Bs
ON BL.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BL.BranchID = LB.BranchID
INNER JOIN BORROWER AS Bo
ON Bo.CardNo = BL.CardNo
WHERE BL.DateDue = @today AND LB.BranchID = 1

--Search_SharpstownBooksDueToday @today = '20160802'



---------------
---------------
--QUESTION 5.For each library branch, retrieve the branch name and the total number of books loaned out from
--that branch.

--CREATE PROC Search_NumberOfBooksCheckedOutAtEachLibrary
--AS

SELECT COUNT(*) AS BooksOUT, LB.BranchName
FROM LIBRARY_BRANCH AS LB
INNER JOIN BOOK_LOANS AS BL
ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchName

--Search_NumberOfBooksCheckedOutAtEachLibrary

---------------
---------------
--QUESTION 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
--than five books checked out.

--CREATE PROC Search_BorrowersThatHaveMoreThanFiveBooksCheckedOut
--AS

SELECT COUNT (BO.CardNo) AS Over5BooksOut, BO.CardNo, BO.Name, BO.Address, BO.Phone
FROM BORROWER AS BO 
INNER JOIN BOOK_LOANS AS BL
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo, BO.Name, BO.Address, BO.Phone
Having
COUNT(*) > 5

--Search_BorrowersThatHaveMoreThanFiveBooksCheckedOut

SELECT BO.CardNo, BO.Name, BO.Address
FROM BOOK_LOANS AS BL 
INNER JOIN BORROWER AS BO
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo,Name,Address,Phone
Having
COUNT(bo.name) > 5

 
---------------
---------------
--QUESTION 7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
--copies owned by the library branch whose name is "Central"

--CREATE PROC Search_CentralLibraryNumberofCopiesOfStephenKingBooks
--AS

SELECT Bs.Title, Au.AuthorName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bs
ON BC.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
INNER JOIN BOOK_AUTHORS AS Au
ON Au.BookID = Bs.BookID
WHERE Au.AuthorName = 'Stephen King' AND LB.BranchID = 3 

--Search_CentralLibraryNumberofCopiesOfStephenKingBooks


---------------
---------------
--Searches


SELECT * FROM BOOKS
SELECT * FROM BOOK_LOANS
SELECT * FROM BOOK_COPIES
SELECT * FROM BORROWER
SELECT * FROM LIBRARY_BRANCH
SELECT * FROM PUBLISHER
SELECT * FROM BOOK_AUTHORS




---- Stored Procedures #1

--Search_TheLostTribeAtSharpstown

---- Stored Procedures #2

--Search_TheLostTribeAtAllLibraries

---- Stored Procedures #3

--Search_BorrowersWithNoBooksCheckedOut

---- Stored Procedures #4

--Search_SharpstownBooksDueToday @today = '20160802'

---- Stored Procedures #5

--Search_NumberOfBooksCheckedOutAtEachLibrary

---- Stored Procedures #6

--Search_BorrowersThatHaveMoreThanFiveBooksCheckedOut

---- Stored Procedures #7

--Search_CentralLibraryNumberofCopiesOfStephenKingBooks

