create view allPlayers as select Club.club_name as Team, Player.player_name as Player_name,
    Player.number as Number from Club, Player where Club.id = Player.clubid;

create view allActs as select Player.player_name as name, Act.acttype,
    Act.match_minute from Player, act where Player.id = Act.playerid;
