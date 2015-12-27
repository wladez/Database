connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

alter table Player add transferPrice int not null;

create table Transfer(
    id int primary key,
    playerID int not null,
    price int,
    fromClub int not null,
    toClub int not null
);

alter table Transfer add constraint transfer_to_player
    foreign key (playerID) references Player(id);

create table Championship(
    id int primary key,
    clubID int not null,
    played int,
    won int,
    drawn int,
    lost int,
    points int,
    goalsFor int,
    goalsAgainst int
);

alter table Championship add constraint champ_to_club
    foreign key (clubID) references Club(id);

commit;


