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
`
SELECT model, speed, hd FROM PC
WHERE price<500;
`
**Упражнение 2.** Найдите производителей принтеров. Вывести: maker.
`
SELECT DISTINCT maker FROM product
WHERE type='Printer';
`
**Упражнение 3.** Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
`
SELECT model, ram, screen FROM Laptop
WHERE price > 1000;
`



