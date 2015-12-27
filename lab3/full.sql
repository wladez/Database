connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

insert into Club (id, club_name, city) values (1, "Arsenal", "London");
insert into Club (id, club_name, city) values (2,"Brighton & Hove Albion FC", "Brighton");
insert into Club (id, club_name, city) values (3, "Reading", "Reading");
insert into Club (id, club_name, city) values (4, "Cardiff City", "Cardiff");

insert into Player  values (1, "Theo", "Walcott", 14, 1, "England");
insert into Player  values (2, "Samuel", "Baldock", 9, 2, "England");
insert into Player  values (3, "Pavel", "Pogrebnyak", 7, 3, "Russia");
insert into Player  values (4, "Kenwyne", "Jones", 9, 4, "Trinidad and Tobago");

insert into Match values (1, '2015-01-25', 16, 2, 1, "2:3", "Arsenal");
insert into Match values (2, '2015-01-24', 16, 4, 3, "1:2", "Reading");

insert into Act values (1, 1, "goal", 2);
insert into Act values (2, 2, "goal", 75);
insert into Act values (4, 4, "goal", 25);

insert into MatchStat values (1, 1, 2, 3, 1);
insert into MatchStat values (2, 2, 1, 2, 4);

commit;



