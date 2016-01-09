create view countActs as select Act.acttype as act_type,
    count(Act.acttype) as numb from Act group by Act.acttype;

