USE dbOregonLibrary
GO

--insert into BOOK_LOANS (DateOut, BookID, BranchID, CardNo) values ('20160414', 3, 4, 52685343)

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

SELECT * FROM BOOK_LOANS

--Delete BOOK_LOANS FROM BOOK_LOANS