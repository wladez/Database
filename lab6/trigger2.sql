create exception data_error 'Deleting club with key';

create trigger data_control for club before delete or update
as begin
    if(old.id in (select Player.clubid from Player)) then
        exception data_error;
end;
