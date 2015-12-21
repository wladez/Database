               create table Club(
                    id int primary key,
                    club_name varchar(25),
                    city varchar(25)
                    );

               create table Player(
                    id int primary key,
                    player_name varchar(25),
                    player_surname varchar(25),
                    number integer NOT null,
                    clubID int not null,
                    country varchar(25)
                    );

               alter table Player add constraint player_to_club
               foreign key (clubID) references Club(id);

               create domain StageDomain
                    AS integer check (value in (1,2,4,8,16,32));

               create table Match(
                    id int primary key,
                    matchDate DATE,
                    stage StageDomain,
                    home int not null,
                    away int not null,
                    result varchar(25),
                    winner varchar(25)
                    );

               alter table Match add constraint match_to_home
               foreign key (home) references Club(id);
               alter table Match add constraint match_to_away
               foreign key (away) references Club(id);

               create domain ActTypeDomain
                    AS varchar(20) check (value in ("goal", "assist", "yellow card", "red card"));

               create table Act (
                    id int primary key,
                    playerID int not null,
                    actType ActTypeDomain,
                    match_minute time
                    );

               alter table Act add constraint acts_to_player
               foreign key (playerID) references Player(id);

               create table MatchStat (
                    id int primary key,
                    matchID int not null,
                    home_scored integer,
                    away_scored integer,
                    actsID int not null
                    );

               alter table MatchStat add constraint matchStat_to_match
               foreign key (matchID) references Match(id);
               alter table MatchStat add constraint match_to_act
               foreign key (actsID) references Act(id);

               commit;
