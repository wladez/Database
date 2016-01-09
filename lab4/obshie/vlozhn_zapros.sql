create view playersWithoutActs as select * from player where id not in (select playerid from Act);

