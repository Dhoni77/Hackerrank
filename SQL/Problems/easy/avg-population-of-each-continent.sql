select c.continent,floor(avg(city.population)) from country c inner join city on c.code=city.countrycode group by c.continent;
