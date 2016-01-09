create procedure delUnusedActs as begin
    delete from Act where Act.id not in(select actsid from Matchstat);
end;

