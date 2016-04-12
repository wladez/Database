connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

insert into Club (id, club_name, city) values (1, "Arsenal", "London");
insert into Club (id, club_name, city) values (2,"Brighton & Hove Albion FC", "Brighton");
insert into Club (id, club_name, city) values (3, "Reading", "Reading");
insert into Club (id, club_name, city) values (4, "Cardiff City", "Cardiff");

insert into Player  values (1, "Theo Walcott", 14, 1, "England", 25000000, "winger");
insert into Player  values (2, "Samuel Baldock", 9, 2, "England", 2000000, "striker");
insert into Player  values (3, "Pavel Pogrebnyak", 7, 3, "Russia", 1000000, "striker");
insert into Player  values (4, "Kenwyne Jones", 9, 4, "Trinidad and Tobago", 2500000, "striker");
insert into Player  values (5, "Mesut Ozil", 11, 1, "Germany", 40000000, "attacking midfielder");
insert into Player  values (6, "Laurent Koscielny", 6, 1, "France", 20000000, "central defender");
insert into Player  values (7, "Danny Holla", 22, 2, "Netherlands", 1250000, "defensive midfielder");
insert into Player  values (8, "Christopher Gunter", 2, 3, "Wales", 2500000, "central defender");
insert into Player  values (9, "Federico Macheda", 14, 4, "Italy", 1000000, "striker");


insert into season values (1, '2000-08-01', '2001-05-31');
insert into season values (2, '2001-08-01', '2002-05-31');
insert into season values (3, '2002-08-01', '2003-05-31');
insert into season values (4, '2003-08-01', '2004-05-31');
insert into season values (5, '2004-08-01', '2005-05-31');
insert into season values (6, '2005-08-01', '2006-05-31');
insert into season values (7, '2006-08-01', '2007-05-31');
insert into season values (8, '2007-08-01', '2008-05-31');
insert into season values (9, '2008-08-01', '2009-05-31');
insert into season values (10, '2009-08-01', '2010-05-31');
insert into season values (11, '2010-08-01', '2011-05-31');
insert into season values (12, '2011-08-01', '2012-05-31');
insert into season values (13, '2012-08-01', '2013-05-31');
insert into season values (14, '2013-08-01', '2014-05-31');
insert into season values (15, '2014-08-01', '2015-05-31');
insert into season values (16, '2015-08-01', '2016-05-31');



commit;

