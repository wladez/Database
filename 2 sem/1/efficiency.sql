/*неоптимизированный вариант*/
create view eff as select Player.player_name as name, Transfer.price as price,
    count(Act.acttype) as efficiency from Player, Transfer, Act
    where Player.id=Act.playerid and Player.id=Transfer.playerid
    group by Player.player_name, Act.acttype, Transfer.price;
