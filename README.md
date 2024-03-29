![image](https://github.com/NatashaSmolyak/SQL/blob/main/assets/SQL-header-image.png)
## 1. Интерактивный тренажер по SQL.
### Stepik, декабрь 2022 [Сертификат](https://stepik.org/cert/1871051)
---
## 2. Курс повышения квалификации "Основы баз данных и SQL запросов".
### Дальневосточный федеральный университет (ДВФУ), декабрь 2022 [Сертификат](https://drive.google.com/file/d/1MTX_HnqjswkfOXJbQ3I6VxIsd1Wk-x8C/view?usp=share_link)
---
## 3. Практический курс по тестированию ПО Вадима Ксендзова.
### Задание 1. Базовые конструкции SQL. SELECT, WHERE, LIKE, OR, AND, BETWEEN, ORDER BY, GROUP BY MAX, MIN, COUNT. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_1_SQL.sql)
### Задание 2. DDL. CREATE, INSERT, UPDATE, ALTER, DELETE. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_2_SQL.sql)
### Задание 3. JOINs. INNER JOIN, RIGHT JOIN, LEFT JOIN, FULL JOIN. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_3_SQL.sql)
---
## 4. Некоторые упражнения с сайта https://sql-ex.ru/
**Упражнение 1.** Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd.

```
SELECT model, speed, hd FROM PC
WHERE price<500;
```
**Упражнение 2.** Найдите производителей принтеров. Вывести: maker.
```
SELECT DISTINCT maker FROM product
WHERE type='Printer';
```
**Упражнение 3.** Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
```
SELECT model, ram, screen FROM Laptop
WHERE price > 1000;
```
**Упражнение 4.** Найдите все записи таблицы Printer для цветных принтеров.
```
SELECT * FROM Printer WHERE color='y';
```
**Упражнение 5.** Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
```
SELECT model, speed, hd FROM PC
WHERE (cd='12x' OR cd='24x') AND price <600;
```
**Упражнение 6.** Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
```
SELECT DISTINCT Product.maker, Laptop.speed
FROM Product INNER JOIN
Laptop ON Product.model=Laptop.model
WHERE Laptop.hd>=10;
```
**Упражнение 7.** Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
```
SELECT PC.model, PC.price
FROM PC inner join
Product ON Product.model=PC.model
WHERE Product.maker='B'
UNION
SELECT Laptop.model, Laptop.price
FROM Laptop inner join
Product ON Product.model=Laptop.model
WHERE Product.maker='B'
UNION
SELECT Printer.model, Printer.price
FROM Printer INNER JOIN
Product ON Product.model=Printer.model
WHERE Product.maker='B';
```
**Упражнение 8.** Найдите производителя, выпускающего ПК, но не ПК-блокноты.
```
SELECT maker FROM product
WHERE type IN ('PC', 'Laptop')
EXCEPT
SELECT maker FROM product
WHERE type IN ('Laptop');
```
**Упражнение 9.** Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker.
```
SELECT DISTINCT Product.Maker from Product
INNER JOIN PC ON Product.model=PC.model
WHERE speed>=450;
```
**Упражнение 10.** Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price.
```
SELECT model, price FROM Printer
```
**Упражнение 11.** Найдите среднюю скорость ПК.
```
SELECT avg(speed) from PC;
```
**Упражнение 12.** Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
```
SELECT avg(speed) FROM Laptop
WHERE price>1000;
```
**Упражнение 13.** Найдите среднюю скорость ПК, выпущенных производителем A.
```
SELECT avg(speed) from PC
iNNER JOIN Product ON PC.model=Product.model
WHERE Product.maker='A';
```
**Упражнение 14.** Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
```
SELECT Ships.class, Ships.name, Classes.country FROM Ships
INNER JOIN Classes ON Ships.class=Classes.class
WHERE numGuns>=10;
```
**Упражнение 15.** Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD.
```
SELECT HD from PC
GROUP BY HD
HAVING count(code)>=2;
```
**Упражнение 16.** Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM. 
```
SELECT DISTINCT A.model AS model_1, B.model AS model_2, A.speed, A.RAM
FROM PC AS A, PC AS B
WHERE A.speed = B.speed and A.RAM = B.RAM AND  A.model>B.model;
```
**Упражнение 17.** Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК. Вывести: type, model, speed.
```
SELECT DISTINCT Product.type, Laptop.model, Laptop.speed FROM Laptop
INNER JOIN Product ON Product.model=Laptop.model
WHERE Laptop.speed < ALL (SELECT speed FROM PC);
```
**Упражнение 18.** Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price.
```
SELECT DISTINCT maker, price
FROM printer INNER JOIN product
ON printer.model = product.model
WHERE (color = 'y')
AND price = (SELECT MIN(price)
FROM printer WHERE color = 'y');
```
**Упражнение 19.** Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов. Вывести: maker, средний размер экрана.
```
SELECT maker, avg(screen) from Product
INNER JOIN Laptop ON Product.model=Laptop.model
GROUP BY maker;
```
**Упражнение 20.** Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.
```
SELECT maker, count (model) FROM Product
WHERE type ='PC'
GROUP BY maker
HAVING count (model)>=3;
```
**Упражнение 21.** Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC. Вывести: maker, максимальная цена.
```
SELECT maker, max (price) FROM product
INNER JOIN PC ON product.model=pc.model
GROUP BY maker;
```
**Упражнение 22.**  Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.
```
SELECT speed, avg(price) FROM pc
WHERE speed >600
GROUP BY speed;
```
**Упражнение 23.** Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц. Вывести: Maker.
```
SELECT maker from product
INNER JOIN PC ON product.model=PC.model
WHERE pc.speed >=750
INTERSECT
SELECT maker from product
INNER JOIN Laptop ON product.model=Laptop.model
WHERE laptop.speed >=750;
```
**Упражнение 24.** Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.
```
SELECT model FROM ( 
SELECT model, price FROM PC
UNION
SELECT model, price from Laptop
UNION
SELECT model, price from Printer) X
WHERE price = (SELECT max(price) from (SELECT price FROM PC
                   UNION
                   SELECT price from Laptop
                   UNION
                   SELECT price from Printer) AS A );     
```

**Упражнение 25.** Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker.
```
SELECT DISTINCT maker FROM product
WHERE type='Printer' and 
maker IN(SELECT maker FROM Product 
WHERE model IN(SELECT model FROM PC
WHERE ram = (SELECT min(RAM) FROM PC))) and
maker IN(SELECT maker FROM Product 
WHERE model IN(SELECT model FROM PC 
WHERE speed = (SELECT MAX(speed) FROM (SELECT speed FROM PC 
WHERE ram=(SELECT MIN(ram) FROM PC)) AS MAX_SPEED )));
```
**Упражнение 26.** Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.
```
SELECT avg(price) FROM (SELECT price FROM PC
INNER JOIN Product ON Product.model=PC.model
WHERE maker='A'
UNION ALL
SELECT price FROM Laptop
INNER JOIN Product ON Product.model=Laptop.model
WHERE maker='A') AS Table_A;
```
**Упражнение 27.** Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.
```
SELECT maker, AVG(hd) 
FROM (SELECT hd, maker
      FROM PC INNER JOIN 
      Product ON PC.model = Product.model
      WHERE maker IN (SELECT maker FROM Product where type='printer')) AS table_A  
GROUP BY maker;
```
**Упражнение 28.** Используя таблицу Product, определить количество производителей, выпускающих по одной модели.
```
SELECT count(maker)
FROM product
WHERE maker in (
SELECT maker from product
GROUP by maker
HAVING count(model) = 1);
```
**Упражнение 29.** В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], написать запрос с выходными данными (пункт, дата, приход, расход). Использовать таблицы Income_o и Outcome_o.
```
SELECT Income_o.point, Income_o.date, Income_o.inc, Outcome_o.out
FROM Income_o LEFT JOIN Outcome_o ON (Income_o.date = Outcome_o.date) AND (Income_o.point = Outcome_o.point)
UNION
SELECT Outcome_o.point, Outcome_o.date, Income_o.inc, Outcome_o.out
FROM Income_o RIGHT JOIN Outcome_o ON (Income_o.date = Outcome_o.date) AND (Income_o.point = Outcome_o.point)
```