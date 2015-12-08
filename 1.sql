               CREATE TABLE command (command_name varchar(25),
                                    city varchar(25));
               CREATE TABLE player (player_name varchar(25),
                                    player_surname varchar(25),
                                    number integer NOT null,
                                    command varchar(25),
                                    country varchar(25),
                                    transfer_price integer NOT null);
               CREATE TABLE match  (date DATE,
                                    round,
                                    home varchar(25),
                                    away varchar(25),
                                    result varchar(25),
                                    winner varchar(25));
               CREATE TABLE match_statistic (match,
                                            home_scored integer,
                                            away_scored integer,
                                            player_acts);
               CREATE TABLE player_acts (player,
                                        act_type,
                                        match_minute time);
               CREATE TABLE transfers (player,
                                        price integer,
                                        from_club varchar(25),
                                        to_club varchar(25));
               CREATE TABLE championship (club varchar(25),
                                            match_played integer,
                                            win integer,
                                            draw integer,
                                            loss integer,
                                            points integer,
                                            goals_scored integer,
                                            goals_missed integer);
