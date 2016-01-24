connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create procedure delUnusedActs as begin
    delete from Act where Act.id not in(select actsid from Matchstat);
end;

commit;
