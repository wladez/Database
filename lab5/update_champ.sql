create procedure update_champ
as begin
    if(Matchstat_champ.home_scored>Matchstat_champ.away_scored and Matchstat_champ.matchid=Match_champ.id) then
    begin
        /*обновление статистики для победившего*/
        update Championship set goalsFor=goalsFor+Matchstat_champ.home_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.home=Championship.clubid;
        update Championship set goalsAgainst=goalsAgainst+Matchstat.away_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.home=Championship.clubid;
        update Championship set played=played+1 where Match_champ.home=Championship.clubid
            and Match_champ.away=Championship.clubid;
        update Championship set won=won+1 where Match_champ.home=Championship.clubid;
        update Championship set points=points+3 where Match_champ.home=Championship.clubid;

        /*обновление статистики для проигравшего*/
        update Championship set goalsFor=goalsFor+Matchstat_champ.away_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.away=Championship.clubid;
        update Championship set goalsAgainst=goalsAgainst+Matchstat_champ.home_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.away=Championship.clubid;
        update Championship set lost=lost+1 where Match_champ.away=Championship.clubid;
    end

    if(Matchstat_champ.home_scored<Matchstat_champ.away_scored and Matchstat_champ.matchid=Match_champ.id) then
    begin
        /*обновление статистики для победившего*/
        update Championship set goalsFor=goalsFor+Matchstat_champ.away_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.away=Championship.clubid;
        update Championship set goalsAgainst=goalsAgainst+Matchstat_champ.home_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.away=Championship.clubid;
        update Championship set played=played+1 where Match_champ.home=Championship.clubid
            and Match_champ.away=Championship.clubid;
        update Championship set won=won+1 where Match_champ.away=Championship.clubid;
        update Championship set points=points+3 where Match_champ.away=Championship.clubid;

        /*обновление статистики для проигравшего*/
        update Championship set goalsFor=goalsFor+Matchstat_champ.home_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.home=Championship.clubid;
        update Championship set goalsAgainst=goalsAgainst+Matchstat_champ.away_scored
            where Matchstat_champ.matchid=Match_champ.id and Match_champ.home=Championship.clubid;
        update Championship set lost=lost+1 where Match_champ.home=Championship.clubid;
    end

    if(Matchstat_champ.home_scored=Matchstat_champ.away_scored and Matchstat_champ.matchid=Match_champ.id) then
    begin
        update Championship set goalsFor=goalsFor+Matchstat_champ.home_scored
            where Championship.clubid=Match_champ.home and Match_champ.away=Championship.clubid;
        update Championship set goalsAgainst=goalsAgainst+Matchstat_champ.away_scored
            where Championship.clubid=Match_champ.home and Match_champ.away=Championship.clubid;
        update Championship set played=played+1 where Match_champ.home=Championship.clubid
            and Match_champ.away=Championship.clubid;
        update Championship set drawn=drawn+1 where Match_champ.home=Championship.clubid
            and Match_champ.away=Championship.clubid;
        update Championship set points=points+1 where Match_champ.home=Championship.clubid
            and Match_champ.away=Championship.clubid;
    end

end;
