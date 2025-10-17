#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi

if [[ $1 =~ ^[0-9]+$ ]]
then
  CONDITION="e.atomic_number = $1"
elif [[ $1 =~ ^[A-Z][a-z]?$ ]]
then
  CONDITION="e.symbol = '$1'"
else
  CONDITION="e.name = '$1'"
fi

RESULT=$($PSQL "
  select e.atomic_number, e.symbol, e.name, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius, t.type
  from elements e
  join properties p using(atomic_number)
  join types t using(type_id)
  where $CONDITION;
")

if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
else
  echo "$RESULT" | while read AN BAR SYMBOL BAR NAME BAR MASS BAR MELT BAR BOIL BAR TYPE
  do
    echo "The element with atomic number $AN is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
  done
fi