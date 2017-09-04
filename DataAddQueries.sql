--USE SECOND

USE dbOregonLibrary
GO

insert into BORROWER (CardNo, Name, Address, Phone) values ('551541389', 'Paul Mcdonald', '18222 2nd Place', '9341840691');
insert into BORROWER (CardNo, Name, Address, Phone) values ('68999626', 'Cynthia Duncan', '411 Debra Point', '8132978685');
insert into BORROWER (CardNo, Name, Address, Phone) values ('43353768', 'Jacqueline Reed', '275 Dayton Lane', '7573879017');
insert into BORROWER (CardNo, Name, Address, Phone) values ('650440538', 'Terry Wheeler', '682 Service Lane', '1532331297');
insert into BORROWER (CardNo, Name, Address, Phone) values ('548686387', 'Craig Fields', '652 New Castle Place', '2123455675');
insert into BORROWER (CardNo, Name, Address, Phone) values ('52685343', 'Antonio Gutierrez', '77 Miller Place', '5548093273');
insert into BORROWER (CardNo, Name, Address, Phone) values ('33261224', 'Michelle Gibson', '44565 Northview Plaza', '6905484980');
insert into BORROWER (CardNo, Name, Address, Phone) values ('02681496', 'Gregory Brooks', '43 Monica Lane', '6068948244');
insert into BORROWER (CardNo, Name, Address, Phone) values ('76366001', 'Rose Butler', '774 Lawn Terrace', '7251885914');
insert into BORROWER (CardNo, Name, Address, Phone) values ('369871170', 'Irene Harrison', '57639 Hintze Court', '8988272131'); 
insert into BORROWER (CardNo, Name, Address, Phone) values ('369111170', 'Bill Harrison', '57639 Hintze Court', '8988272131');

insert into LIBRARY_BRANCH (BranchID, BranchName, Address) values (1, 'Sharpstown', '83 Summer Ridge Way');
insert into LIBRARY_BRANCH (BranchID, BranchName, Address) values (2, 'Dullstown', '2 Schlimgen Road');
insert into LIBRARY_BRANCH (BranchID, BranchName, Address) values (3, 'Central', '351 Union Parkway');
insert into LIBRARY_BRANCH (BranchID, BranchName, Address) values (4, 'Western', '4 Corben Junction');
insert into LIBRARY_BRANCH (BranchID, BranchName, Address) values (5, 'Eastern', '6566 Bultman Court');


insert into PUBLISHER (PublisherName, Address, Phone) values ('Publication Study', '6367 Caliangt Drive', '5033622702');
insert into PUBLISHER (PublisherName, Address, Phone) values ('Taverns Book', '7394 Donald Pass', '5038977043');
insert into PUBLISHER (PublisherName, Address, Phone) values ('Macrocosm Publishing', '8 Drewry Court', '5032113666');

insert into BOOKS (BookID, Title, PublisherName) values (1, 'To Kill a Mockingbird', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (2, 'The Man Without Qualities', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (3, 'The Lost Tribe', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (4, 'One Hundred Years of Solitude', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (5, 'A Heartbreaking Work of Staggering Genius', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (6, 'Another Bullshit Night in Suck City', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (7, 'A Clockwork Orange', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (8, 'Neverwhere', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (9, 'I Am America', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (10, 'A Confederacy of Dunces', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (11, 'Send More Idiots', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (12, 'Brave New World', 'Macrocosm Publishing');
insert into BOOKS (BookID, Title, PublisherName) values (13, 'No Country For Old Men', 'Macrocosm Publishing');
insert into BOOKS (BookID, Title, PublisherName) values (14, 'The Gunslinger', 'Macrocosm Publishing');
insert into BOOKS (BookID, Title, PublisherName) values (15, 'Full Dark, No Stars', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (16, 'Of Mice and Men', 'Publication Study');
insert into BOOKS (BookID, Title, PublisherName) values (17, 'This Is Not a Novel', 'Macrocosm Publishing');
insert into BOOKS (BookID, Title, PublisherName) values (18, 'I Capture the Castle', 'Macrocosm Publishing');
insert into BOOKS (BookID, Title, PublisherName) values (19, 'Tinker, Tailor, Soldier, Spy', 'Taverns Book');
insert into BOOKS (BookID, Title, PublisherName) values (20, 'Catch-22', 'Macrocosm Publishing');


insert into BOOK_AUTHORS (BookID, AuthorName) values (1, 'Harper Lee');
insert into BOOK_AUTHORS (BookID, AuthorName) values (2, 'Robert Musil ');
insert into BOOK_AUTHORS (BookID, AuthorName) values (3, 'Stephen Chbosky');
insert into BOOK_AUTHORS (BookID, AuthorName) values (4, 'Gabriel Garcí­a Márquez');
insert into BOOK_AUTHORS (BookID, AuthorName) values (5, 'Dave Eggers');
insert into BOOK_AUTHORS (BookID, AuthorName) values (6, 'Nick Flynn');
insert into BOOK_AUTHORS (BookID, AuthorName) values (7, 'Anthony Burgess');
insert into BOOK_AUTHORS (BookID, AuthorName) values (8, 'Neil Gaiman');
insert into BOOK_AUTHORS (BookID, AuthorName) values (9, 'Stephen Colbert');
insert into BOOK_AUTHORS (BookID, AuthorName) values (10, 'John Kennedy Toole');
insert into BOOK_AUTHORS (BookID, AuthorName) values (11, 'Tony Perez-Giese');
insert into BOOK_AUTHORS (BookID, AuthorName) values (12, 'Aldous Huxley');
insert into BOOK_AUTHORS (BookID, AuthorName) values (13, 'Cormac McCarthy');
insert into BOOK_AUTHORS (BookID, AuthorName) values (14, 'Stephen King');
insert into BOOK_AUTHORS (BookID, AuthorName) values (15, 'Stephen King');
insert into BOOK_AUTHORS (BookID, AuthorName) values (16, 'John Steinbeck');
insert into BOOK_AUTHORS (BookID, AuthorName) values (17, 'David Markson');
insert into BOOK_AUTHORS (BookID, AuthorName) values (18, 'Dodie Smith');
insert into BOOK_AUTHORS (BookID, AuthorName) values (19, 'John le Carré');
insert into BOOK_AUTHORS (BookID, AuthorName) values (20, 'Joseph Heller');

--GO
--SELECT * FROM BOOK_AUTHORS
--USE dbOregonLibrary
--GO

insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (1, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (2, 1, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (3, 1, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (4, 1, 5);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (5, 1, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (6, 1, 5);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (7, 1, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (8, 1, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (9, 1, 5);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (10, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (11, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (12, 1, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (13, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (14, 1, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (15, 1, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (16, 1, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (17, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (18, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (19, 1, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (20, 1, 2);

insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (1, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (2, 2, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (3, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (4, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (5, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (6, 2, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (7, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (8, 2, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (9, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (10, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (11, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (12, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (13, 2, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (14, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (15, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (16, 2, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (17, 2, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (18, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (19, 2, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (20, 2, 2);

insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (1, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (2, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (3, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (4, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (5, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (6, 3, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (7, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (8, 3, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (9, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (10, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (11, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (12, 3, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (13, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (14, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (15, 3, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (16, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (17, 3, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (18, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (19, 3, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (20, 3, 3);

insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (1, 4, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (2, 4, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (3, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (4, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (5, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (6, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (7, 4, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (8, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (9, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (10, 4, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (11, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (12, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (13, 4, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (14, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (15, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (16, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (17, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (18, 4, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (19, 4, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (20, 4, 2);

insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (1, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (2, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (3, 5, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (4, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (5, 5, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (6, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (7, 5, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (8, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (9, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (10, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (11, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (12, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (13, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (14, 5, 3);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (15, 5, 2);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (16, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (17, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (18, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (19, 5, 4);
insert into BOOK_COPIES (BookID, BranchID, Number_of_Copies) values (20, 5, 4);

SELECT * FROM BOOK_COPIES

GO

USE dbOregonLibrary
GO

insert into BOOK_LOANS (DateOut, BookID, BranchID, CardNo) values ('20160414', 3, 4, 52685343)

insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values 
(5, 16, '551541389', '20160725'),
(5, 4, '76366001', '20160715'),
(4, 12, '369871170', '20160709'),
(4, 15, '369871170', '20160712'),
(1, 9, '548686387', '20160704'),
(4, 7, '369871170', '20160719'),
(3, 16, '551541389', '20160712'),
(5, 1, '02681496', '20160714'),
(2, 20, '76366001', '20160721'),
(1, 3, '650440538', '20160716'),
(4, 3, '43353768', '20160715'),
(3, 11, '02681496', '20160720'),
(2, 15, '369871170', '20160708'),
(3, 1, '33261224', '20160706'),
(2, 17, '548686387', '20160708'),
(4, 10, '548686387', '20160723'),
(3, 10, '650440538', '20160715'),
(4, 16, '68999626', '20160717'),
(4, 12, '548686387', '20160720'),
(1, 15, '68999626', '20160710'),
(3, 12, '76366001', '20160711'),
(3, 17, '33261224', '20160721'),
(1, 8, '548686387', '20160710'),
(1, 5, '33261224', '20160721'),
(4, 12, '551541389', '20160721'),
(4, 5, '551541389', '20160709'),
(5, 7, '33261224', '20160703'),
(4, 18, '33261224', '20160725'),
(2, 3, '33261224', '20160713'),
(1, 15, '68999626', '20160702'),
(5, 11, '548686387', '20160721'),
(4, 1, '548686387', '20160726'),
(3, 20, '650440538', '20160722'),
(1, 16, '52685343', '20160719'),
(4, 3, '33261224', '20160711'),
(4, 19, '548686387', '20160722'),
(1, 15, '650440538', '20160708'),
(1, 17, '548686387', '20160714'),
(5, 3, '548686387', '20160714'),
(4, 18, '33261224', '20160713'),
(2, 6, '52685343', '20160709'),
(1, 17, '551541389', '20160725'),
(4, 17, '551541389', '20160718'),
(5, 17, '76366001', '20160726'),
(1, 18, '43353768', '20160705'),
(2, 11, '68999626', '20160712'),
(3, 11, '43353768', '20160727'),
(3, 13, '43353768', '20160726'),
(5, 19, '33261224', '20160720'),
(2, 5, '551541389', '20160716')
GO
ALTER TABLE "BOOK_LOANS"
ADD "DateDue" AS dateadd(m, 1, DateOut)
GO



/* SELECT *
FROM BOOKS
SELECT * 
FROM BOOK_AUTHORS
SELECT * 
FROM PUBLISHERS
SELECT * 
FROM LIBRARY_BRANCH
SELECT *
FROM AUTHORS
SELECT * 
FROM BOOK_COPIES
SELECT * 
FROM BOOK_LOANS
SELECT *
FROM BORROWER
 */

/*




*/

/*
ALTER TABLE "BOOK_LOANS"
ADD "DueDate" AS dateadd(m, 1, DateOut)
*/
--insert into BOOK_LOANS (DateOut, BookID, BranchID, CardNo) values ('20160414', 3, 4, 52685343)
/*
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 16, '551541389', '20160725');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 4, '76366001', '20160715');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 12, '369871170', '20160709');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 15, '369871170', '20160712');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 9, '548686387', '20160704');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 7, '369871170', '20160719');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 16, '551541389', '20160712');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 1, '02681496', '20160714');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 20, '76366001', '20160721');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 3, '650440538', '20160716');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 3, '43353768', '20160715');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 11, '02681496', '20160720');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 15, '369871170', '20160708');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 1, '33261224', '20160706');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 17, '548686387', '20160708');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 10, '548686387', '20160723');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 10, '650440538', '20160715');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 16, '68999626', '20160717');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 12, '548686387', '20160720');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 15, '68999626', '20160710');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 12, '76366001', '20160711');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 17, '33261224', '20160721');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 8, '548686387', '20160710');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 5, '33261224', '20160721');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 12, '551541389', '20160721');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 5, '551541389', '20160709');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 7, '33261224', '20160703');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 18, '33261224', '20160725');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 3, '33261224', '20160713');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 15, '68999626', '20160702');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 11, '548686387', '20160721');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 1, '548686387', '20160726');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 20, '650440538', '20160722');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 16, '52685343', '20160719');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 3, '33261224', '20160711');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 19, '548686387', '20160722');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 15, '650440538', '20160708');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 17, '548686387', '20160714');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 3, '548686387', '20160714');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 18, '33261224', '20160713');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 6, '52685343', '20160709');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 17, '551541389', '20160725');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (4, 17, '551541389', '20160718');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 17, '76366001', '20160726');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (1, 18, '43353768', '20160705');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 11, '68999626', '20160712');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 11, '43353768', '20160727');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (3, 13, '43353768', '20160726');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (5, 19, '33261224', '20160720');
insert into BOOK_LOANS (BranchID, BookID, CardNo, DateOut) values (2, 5, '551541389', '20160716');





SELECT * FROM BOOK_LOANS
SELECT * FROM BOOK_COPIES
SELECT * FROM BORROWER
SELECT * FROM LIBRARY_BRANCH
SELECT * FROM PUBLISHERS
SELECT * FROM BOOKS
SELECT * FROM AUTHORS



UPDATE Authors
SET  AuthorName='Mark Lee'
Where BookID = 3

*/


--SELECT * FROM BOOK_LOANS ORDER BY CardNo



--insert into BORROWER (CardNo, Name, Address, Phone) values ('369111170', 'Bill Harrison', '57639 Hintze Court', '8988272131');




