create procedure update_champ(t integer)
as 
declare variable home_sc int;
declare variable away_sc int;
declare variable home_id int;
declare variable away_id int;
declare variable i int;
begin
    for select Match_champ.id from Match_champ where Match_champ.tour=:t into :i
    do
    begin
        select Matchstat_champ.home_scored, Matchstat_champ.away_scored,
            Match_champ.home, Match_champ.away from Matchstat_champ, Match_champ
            where Match_champ.id=:i and Matchstat_champ.matchid=Match_champ.id
            into :home_sc, :away_sc, :home_id, :away_id;
        if(home_sc>away_sc) then
        begin
            /*обновление статистики для победившего*/
            update Championship set goalsFor=goalsFor+:home_sc
                where clubid = :home_id;
            update Championship set goalsAgainst=goalsAgainst+:away_sc
                where clubid = :home_id;
            update Championship set played=played+1 where clubid = :home_id
                and clubid = :away_id;
            update Championship set won=won+1 where clubid = :home_id;
            update Championship set points=points+3 where clubid = :home_id;

            /*обновление статистики для проигравшего*/
            update Championship set goalsFor=goalsFor+:away_sc
                where clubid = :away_id;
            update Championship set goalsAgainst=goalsAgainst+:home_sc
                where clubid = :away_id;
            update Championship set lost=lost+1 where clubid = :away_id;
        end

        if(home_sc<away_sc) then
        begin
            /*обновление статистики для победившего*/
            update Championship set goalsFor=goalsFor+:away_sc
                where clubid = :away_id;
            update Championship set goalsAgainst=goalsAgainst+:home_sc
                where clubid = :away_id;
            update Championship set played=played+1 where clubid = :home_id
                and clubid = :away_id;
            update Championship set won=won+1 where clubid = :away_id;
            update Championship set points=points+3 where clubid = :away_id;

            /*обновление статистики для проигравшего*/
            update Championship set goalsFor=goalsFor+:home_sc
                where clubid = :home_id;
            update Championship set goalsAgainst=goalsAgainst+:away_sc
                where clubid = :home_id;
            update Championship set lost=lost+1 where clubid = :home_id;
        end

        if(home_sc=away_sc) then
        begin
            update Championship set goalsFor=goalsFor+:home_sc
                where clubid = :home_id and clubid = :away_id;
            update Championship set goalsAgainst=goalsAgainst+:away_sc
                where clubid = :home_id and clubid = :away_id;
            update Championship set played=played+1 where clubid = :home_id
                and clubid = :away_id;
            update Championship set drawn=drawn+1 where clubid = :home_id
                and clubid = :away_id;
            update Championship set points=points+1 where clubid = :home_id
                and clubid = :away_id;
        end
    end
end;
