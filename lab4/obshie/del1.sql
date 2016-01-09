create procedure del_min_pr (i integer) as begin
    delete from player where clubid=:i and transferprice=(select min(transferprice)
        from player where clubid=:i);
end;

