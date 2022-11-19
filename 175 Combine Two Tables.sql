select firstName, lastName, city, state -- notice city, state are columns in Address, but one can select them when using join statement
from Person
left join Address
on Person.personId = Address.personId
