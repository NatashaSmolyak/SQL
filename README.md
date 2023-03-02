![image](https://github.com/NatashaSmolyak/SQL/blob/main/assets/SQL-header-image.png)
## 1. Интерактивный тренажер по SQL.
### Stepik, декабрь 2022 [Сертификат](https://stepik.org/cert/1871051)
## 2. Курс повышения квалификации "Основы баз данных и SQL запросов".
### Дальневосточный федеральный университет (ДВФУ), декабрь 2022 [Сертификат](https://drive.google.com/file/d/1MTX_HnqjswkfOXJbQ3I6VxIsd1Wk-x8C/view?usp=share_link)
---
### Задание 1. Базовые конструкции SQL. SELECT, WHERE, LIKE, OR, AND, BETWEEN, ORDER BY, GROUP BY MAX, MIN, COUNT. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_1_SQL.sql)
### Задание 2. DDL. CREATE, INSERT, UPDATE, ALTER, DELETE. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_2_SQL.sql)
### Задание 3. JOINs. INNER JOIN, RIGHT JOIN, LEFT JOIN, FULL JOIN. [Просмотр](https://github.com/NatashaSmolyak/SQL/blob/main/HW_3_SQL.sql)
---
### Некоторые упражнения с сайта https://sql-ex.ru/
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







