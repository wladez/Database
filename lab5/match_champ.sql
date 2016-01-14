connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create table Match_Champ(
    id int primary key,
    matchDate DATE,
    tour int,
    home int not null,
    away int not null,
    result varchar(25)
);

alter table MatchChamp add constraint match_champ_to_home
    foreign key (home) references Club(id);
alter table MatchChamp add constraint match_champ_to_away
    foreign key (away) references Club(id);

create table MatchStat_Champ (
    id int primary key,
    matchID int not null,
    home_scored integer,
    away_scored integer,
    actsID int not null
);

alter table MatchStatChamp add constraint matchStat_champ_to_match
    foreign key (matchID) references MatchChamp(id);
alter table MatchStatChamp add constraint matchstat_champ_to_act
    foreign key (actsID) references Act(id);

commit;

