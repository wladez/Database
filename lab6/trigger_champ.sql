create trigger champ_trig for Championship before update
as
declare variable cnt int;
begin
    select count(Match_Champ.tour) from Match_champ where Match_champ.tour=new.played into :cnt;
    if(cnt=10) then
        execute procedure update_champ;
end;
