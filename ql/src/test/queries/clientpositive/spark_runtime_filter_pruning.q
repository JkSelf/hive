set hive.optimize.index.filter=true;
set hive.auto.convert.join=false;
set hive.spark.dynamic.runtimefilter.pruning=true;

create table pokes(foo int);
create table poke1(foo1 int, fil string);
insert into table pokes values(1);
insert into table poke1 values(1, "123");

explain select count(*) from pokes join poke1  on (pokes.foo = poke1.foo1) where poke1.fil=123;