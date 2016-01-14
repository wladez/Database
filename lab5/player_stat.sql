create procedure playerstat(plid integer)
returns (name varchar(50), goals float, assists float, yellowCards float, redCards float,
raznGoals float, raznAssists float, raznYellowCards float, raznRedCards float) as
declare variable pos varchar(20);
declare variable cnt int;
declare variable avGoals float;
declare variable avAssists float;
declare variable avYellowCards float;
declare variable avRedCards float;
declare variable tmpGoals float;
declare variable tmpAssists float;
declare variable tmpYellow float;
declare variable tmpRed float;
begin
    select Player.player_name, Player.playerposition from Player, Act where :plid=Player.id
        and :plid=Act.playerid into :name, :pos;
    select count(Act.acttype) from Act where :plid=Act.playerid and Act.acttype="goal" into :goals;
    select count(Act.acttype) from Act where :plid=Act.playerid and Act.acttype="assist" into :assists;
    select count(Act.acttype) from Act where :plid=Act.playerid and Act.acttype="yellow card" into :yellowCards;
    select count(Act.acttype) from Act where :plid=Act.playerid and Act.acttype="red card" into :redCards;

    select count(Player.playerposition) from Player where Player.playerposition=:pos
        and Player.id<1000 into :cnt;
    select count(Act.acttype) from Act, Player where Player.id=Act.playerid
        and Act.acttype="goal" and Player.playerposition=:pos into :tmpGoals;
    select count(Act.acttype) from Act, Player where Player.id=Act.playerid
        and Act.acttype="assist" and Player.playerposition=:pos into :tmpAssists;
    select count(Act.acttype) from Act, Player where Player.id=Act.playerid
        and Act.acttype="yellow card" and Player.playerposition=:pos into :tmpYellow;
    select count(Act.acttype) from Act, Player where Player.id=Act.playerid
        and Act.acttype="red card" and Player.playerposition=:pos into :tmpRed;

    avGoals=tmpGoals/cnt;
    avAssists=tmpAssists;
    avYellowCards=tmpYellow/cnt;
    avRedCards=tmpRed/cnt;
    raznGoals=goals-avGoals;
    raznAssists=assists-avAssists;
    raznYellowCards=yellowCards-avYellowCards;
    raznRedCards=redCards-avRedCards;
end;
