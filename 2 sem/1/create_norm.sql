connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';
drop database;
create database 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create table Club(
    id int primary key,
    club_name varchar(25),
    city varchar(25)
);

create table Player(
    id int primary key,
    player_name varchar(50),
    number integer NOT null,
    clubID int not null,
    country varchar(25)
);

alter table Player add constraint player_to_club
    foreign key (clubID) references Club(id);

create table Season(
    id int primary key,
    begining date,
    ending date
);

create table Match(
    id int primary key,
    matchDate DATE,
    home int not null,
    away int not null,
    home_scored int,
    away_scored int,
    seasonID int not null
);

alter table Match add constraint match_to_home
    foreign key (home) references Club(id);
alter table Match add constraint match_to_away
    foreign key (away) references Club(id);
alter table Match add constraint match_to_season
    foreign key (seasonID) references Season(id);

create domain StageDomain
    AS integer check (value in (1,2,4,8,16,32));

create table Match_champ(
    id int primary key,
    tour int, 
    matchID int not null
);

alter table Match_champ add constraint match_champ_to_match
    foreign key (matchID) references Match(id);

create table Match_cup(
    id int primary key,
    stage StageDomain,
    winner int not null,
    matchID int not null
);

alter table Match_cup add constraint match_cup_to_winner
    foreign key (winner) references Club(id);
alter table Match_cup add constraint match_cup_to_match
    foreign key (matchID) references Match(id);

create domain ActTypeDomain
    AS varchar(15)
    check (value in ("goal", "assist", "yellow card", "red card"));

create table Act (
    id int primary key,
    playerID int not null,
    actType ActTypeDomain,
    match_minute int,
    matchID int not null
);

alter table Act add constraint act_to_player
    foreign key (playerID) references Player(id);
alter table Act add constraint act_to_match
    foreign key (matchID) references Match(id);

alter table Player add transferPrice int not null;

create table Transfer(
    id int primary key,
    playerID int not null,
    price int,
    fromClub int not null,
    toClub int not null,
    transferDate date
);

alter table Transfer add constraint transfer_to_player
    foreign key (playerID) references Player(id);
alter table Transfer add constraint transfer_fromClub
    foreign key (fromClub) references Club(id);
alter table Transfer add constraint transfer_toClub
    foreign key (toClub) references Club(id);

commit;


