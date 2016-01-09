create view showSumPrice as select Player.player_name as name,
    sum(Transfer.price) as Sum_price from Transfer, Player where
    Player.id in(select playerid from Transfer) and Transfer.playerid=Player.id
    and Player.id<10 group by Player.player_name;

