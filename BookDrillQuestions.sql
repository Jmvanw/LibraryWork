--QUESTION 1.
-----------------
/*
SELECT Bk.Title, Bk.PublisherName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bk
ON BC.BookID = Bk.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE BC.BookID = 3 AND LB.BranchID = 1
*/
---------------
---------------
--QUESTION 2.

/*
SELECT Bs.Title, Bs.PublisherName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bs
ON BC.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
WHERE BC.BookID = 3
*/
---------------
---------------
--QUESTION 3.
/* 
SELECT BO.Name 
FROM BOOK_LOANS AS BL
RIGHT JOIN BORROWER AS BO
ON BL.CardNo = BO.CardNo
WHERE BL.CardNo IS NULL
*/
---------------
---------------
--QUESTION 4.
/* 

DECLARE @today DATE
SET @today = '2016-08-21'

SELECT Bs.Title, Bo.Name, Bo.Address, LB.BranchName
FROM BOOK_LOANS AS BL
INNER JOIN BOOKS AS Bs
ON BL.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BL.BranchID = LB.BranchID
INNER JOIN BORROWER AS Bo
ON Bo.CardNo = BL.CardNo
WHERE BL.DateDue = @today AND LB.BranchID = 1

*/

---------------
---------------
--QUESTION 5.
/*

SELECT COUNT(BL.BranchID) AS BooksOUT, LB.BranchName
FROM LIBRARY_BRANCH AS LB
INNER JOIN BOOK_LOANS AS BL
ON BL.BranchID = LB.BranchID
GROUP BY LB.BranchName
 */
---------------
---------------
--QUESTION 6.
/* 
SELECT COUNT (BO.CardNo) AS Over5BooksOut, BO.CardNo, BO.Name, BO.Address, BO.Phone
FROM BORROWER AS BO 
INNER JOIN BOOK_LOANS AS BL
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo, BO.Name, BO.Address, BO.Phone
Having
COUNT(*) > 5
 */
 

 
---------------
---------------
--QUESTION 7.
/* SELECT Bs.Title, Au.AuthorName, LB.BranchName, BC.Number_of_Copies
FROM BOOK_COPIES AS BC
INNER JOIN BOOKS AS Bs
ON BC.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BC.BranchID = LB.BranchID
INNER JOIN BOOK_AUTHORS AS Au
ON Au.BookID = Bs.BookID
WHERE Au.AuthorName = 'Stephen King' AND LB.BranchID = 3 */

---------------
---------------
--QUESTION STORED PROCEDURE.
/*
USE [SQL-DRILL]

Create Proc DueToday @today DATE

AS

SELECT Bs.Title, Bo.Name, Bo.Address, LB.BranchName
FROM BOOK_LOANS AS BL
INNER JOIN BOOKS AS Bs
ON BL.BookID = Bs.BookID
INNER JOIN LIBRARY_BRANCH AS LB
ON BL.BranchID = LB.BranchID
INNER JOIN BORROWER AS Bo
ON Bo.CardNo = BL.CardNo
WHERE BL.DueDate = @today AND LB.BranchID = 1
*/
EXEC DueToday @today = '20160802'

SELECT * FROM BOOK_LOANS
ORDER BY BOOK_LOANS.DueDate