update u set u.Code='ncels_deputyceo' from Units u
inner join Employees e on e.PositionId=u.Id
where e.LastName='Кабденова' and e.FirstName='Акмарал' and e.MiddleName='Талаповна'
update u set u.Code='ncels_deputyceo' from Units u
inner join Employees e on e.PositionId=u.Id
where LastName='Сабденалиев' and FirstName='Даулет' and MiddleName='Мусралиевич'
update u set u.Code='ncels_ceo' from Units u
inner join Employees e on e.PositionId=u.Id
where LastName='Шоранова' and FirstName='Айгуль' and MiddleName='Едигеевна'