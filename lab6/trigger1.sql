create generator autoinc;
set generator autoinc TO Plater.id;

create trigger auto_trigger for Player before insert
as begin
	new.id=gen_id(autoinc, 1);
end;