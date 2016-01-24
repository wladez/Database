connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create view showSumPrice as select Player.player_name as name,
    sum(Transfer.price) as Sum_price from Transfer, Player where
    Transfer.playerid=Player.id group by Player.player_name;

commit;

