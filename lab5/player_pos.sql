connect 'D:\database\FOOTBALL.fdb' user 'SYSDBA' password 'masterkey';

create domain PlayerPositionDomain
    AS varchar(20)
    check (value in ("goalkeeper", "central defender", "fullback", "central midfielder",
    "defensive midfielder", "attacking midfielder", "winger", "centre forward", "striker"));

alter table Player add PlayerPosition PlayerPositionDomain;

commit;

