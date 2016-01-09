connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

insert into Club (id, club_name, city) values (1, "Arsenal", "London");
insert into Club (id, club_name, city) values (2,"Brighton & Hove Albion FC", "Brighton");
insert into Club (id, club_name, city) values (3, "Reading", "Reading");
insert into Club (id, club_name, city) values (4, "Cardiff City", "Cardiff");

insert into Player  values (1, "Theo Walcott", 14, 1, "England", 25000000);
insert into Player  values (2, "Samuel Baldock", 9, 2, "England", 2000000);
insert into Player  values (3, "Pavel Pogrebnyak", 7, 3, "Russia", 1000000);
insert into Player  values (4, "Kenwyne Jones", 9, 4, "Trinidad and Tobago", 2500000);
insert into Player  values (5, "Mesut Ozil", 11, 1, "Germany", 40000000);
insert into Player  values (6, "Laurent Koscielny", 6, 1, "France", 20000000);
insert into Player  values (7, "Danny Holla", 22, 2, "Netherlands", 1250000);
insert into Player  values (8, "Christopher Gunter", 2, 3, "Wales", 2500000);
insert into Player  values (9, "Federico Macheda", 14, 4, "Italy", 1000000);

insert into Match values (1, '2015-01-25', 16, 2, 1, "2:3", 1);
insert into Match values (2, '2015-01-24', 16, 4, 3, "1:2", 3);

insert into Act values (1, 1, "goal", 2);
insert into Act values (2, 2, "goal", 75);
insert into Act values (4, 4, "goal", 25);

insert into MatchStat values (1, 1, 2, 3, 1);
insert into MatchStat values (2, 2, 1, 2, 4);

commit;



