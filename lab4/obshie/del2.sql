create procedure del_match as begin
    delete from Match where id not in (select matchid from Matchstat);
end;


