create procedure upd_price (val integer) as begin
    update Player set transferprice = :val + transferprice where Player.clubid = 3;
end;

