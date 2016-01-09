connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create procedure ins_club (i integer, name varchar(25), city varchar(25)) as begin
    insert into Club values (:i, :name, :city);
end;

create procedure ins_player (i integer, name varchar(50), numb integer,
    clubid integer, country varchar(25), price integer) as begin
    insert into Player values (:i, :name, :numb, :clubid, :country, :price);
end;

create procedure ins_match (i integer, d date, stage stagedomain, home integer,
    away integer, result varchar(25), win integer) as begin
    insert into Match values (:i, :d, :stage, :home, :away, :result, :win);
end;

create procedure ins_act (i integer, playerid integer, acttype acttypedomain,
    m integer) as begin
    insert into Act values (:i, :playerid, :acttype, :m);
end;

create procedure ins_matchstat (i integer, matchid integer, hS integer,
    awS integer, actid integer) as begin
    insert into Matchstat values (:i, :matchid, :hS, :awS, :actid);
end;

create procedure ins_tranfer (i integer, playerid integer, price integer,
    source integer, dest integer) as begin
    insert into Transfer values (:i, :playerid, :price, :source, :dest);
end;

create procedure ins_champ (i integer, clubid integer,  played integer, won integer,
    drawn integer, lost integer, points integer,  gf integer, ga integer) as begin
    insert into Championship values (:i, :clubid, :played, :won, :drawn, :lost, :points, :gf, :ga);
end;

commit;
