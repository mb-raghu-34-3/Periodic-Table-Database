-- run using
-- psql --username=freecodecamp --dbname=periodic_table -f create.sql 




-- create table types(
--   type_id int primary key,
--   type varchar not null
-- );

-- insert into types(type_id,type) values
-- (4,'metal'),
-- (5,'nonmetal'),
-- (6,'metalloid');

-- alter table properties rename column weight to atomic_mass;
-- alter table properties rename column melting_point to melting_point_celsius;
-- alter table properties rename column boiling_point to boiling_point_celsius;
-- alter table elements alter column symbol set not null;
-- alter table elements alter column name set not null;
-- alter table elements add constraint unique_symbol unique(symbol);
-- alter table elements add constraint unique_name unique(name);



-- alter table properties add column type_id int references types(type_id);

-- update elemnets set symbol=initcap(symbol)

-- alter table properties
-- alter column atomic_mass type DECIMAL
-- using atomic_mass::DECIMAL


-- insert into elements(atomic_number,symbol,name)
-- values
-- (9,'F','Fluorine'),
-- (10,'Ne','Neon');

-- insert into properties(atomic_number,type,atomic_mass,melting_point_celsius,boiling_point_celsius,type_id)
-- values
-- (9,'nonmetal',18.998,-220,-188.1,5),
-- (10,'nonmetal',20.18,-248.6,-246.1,5);

-- UPDATE properties
-- SET atomic_mass = atomic_mass::float8;

-- delete from properties where atomic_number = 1000;
-- delete from elements where atomic_number = 1000;

-- alter table properties drop column type;


