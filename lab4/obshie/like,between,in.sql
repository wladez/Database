create view selArsenal as select * from club where CLUB_NAME like 'Arsenal';
create view selMatch as select * from match where STAGE between 32 and 8;
create view selPlayer as select * from player where NUMBER in (7,8,9,10);
commit;

