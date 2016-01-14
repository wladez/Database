create exception lot_of_cards 'This player has more than 4 yellow cards';

create trigger yellowcard_trig for Act before insert
as
declare variable cards int;
begin
    select count(Act.acttype) from Act, Player where Act.acttype="yellow card"
        and Player.id=Act.playerid and Player.id=new.playerid into :cards;
     if(cards>4) then
        exception lot_of_cards;
end;

