connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create view showAllWinners as select Club.club_name as name, Match.matchdate as data
    from club, Match where Club.id=Match.winner and Match.stage=1 and
    Match.matchdate between '2014-12-01' and '2015-02-01';

commit;
