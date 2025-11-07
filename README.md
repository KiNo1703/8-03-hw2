# Домашнее задание к занятию «Работа с данными (DDL/DML)» - Новиков Кирилл

# Задание 1



## 1.1. Поднимите чистый инстанс MySQL версии 8.0+. Можно использовать локальный сервер или контейнер Docker.

 Обновление системы
```sudo apt update && sudo apt upgrade -y```

 Установка MySQL
```sudo apt install mysql-server -y```

 Запуск службы
```sudo systemctl start mysql```
```sudo systemctl enable mysql```

 Проверка статуса 
```sudo systemctl status mysql```

<img width="852" height="608" alt="image" src="https://github.com/user-attachments/assets/c6207bd7-26ec-4ff2-9729-5154080d9c30" />

Скрин статуса 


## 1.2. Манипуляции с пользовтелем sys_temp.

Подключение к MySQL 

```sudo mysql -u root -p```

Создание пользователя sys_temp

```CREATE USER 'sys_temp'@'localhost ' IDENTIFIED BY 'temp_password123';```

Предоставление прав 
 
```GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'localhost';```

Обновление привилегий

```FLUSH PRIVILEGES;```

Проверка существующих пользователей

```SELECT user, host FROM mysql.user WHERE user = 'sys_temp';```

Проверка прав пользователя

```SHOW GRANTS FOR 'sys_temp'@'localhost';```


<img width="745" height="499" alt="image" src="https://github.com/user-attachments/assets/bf4d1cca-a53e-4c6e-9f73-30749f02b2a6" />

Скрин пользователей и наличе прав

Подключение под sys_temp

```mysql -u sys_temp -p```

<img width="718" height="227" alt="image" src="https://github.com/user-attachments/assets/7c910a4e-69ed-45f8-913f-1a64ec8f826a" />

Скрин подключение под пользователем sys_temp.

## 1.3. Восстановливаем дамп в базу данных.

Создаем базу данных sakila

```CREATE DATABASE IF NOT EXISTS sakila;```

 Выходим из MySQL
 
```EXIT;```

Восстанавливаем дамп из командной строки:

 Восстанавливаем схему
 
```sudo mysql -u root -p < sakila-db/sakila-schema.sql```

 Восстанавливаем данные
 
```sudo mysql -u root -p < sakila-db/sakila-data.sql```

Проверка после восстановления

```USE sakila;```

```SHOW TABLES;```

```SELECT COUNT(*) AS film_count FROM film;```

```SELECT COUNT(*) AS customer_count FROM customer;```

```SELECT COUNT(*) AS rental_count FROM rental;```

<img width="918" height="901" alt="image" src="https://github.com/user-attachments/assets/d745ee67-bbea-4723-8e8c-fd63c087e71e" />

Скрин восстановления


<img width="1193" height="771" alt="image" src="https://github.com/user-attachments/assets/a55ca28e-1001-4957-9457-de2662dd9c05" />

Скрин всех таблиц базы данных


# Задание 2

```SELECT  TABLE_NAME AS 'Table_Name', COLUMN_NAME AS 'Primary_Key'FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGEWHERE CONSTRAINT_NAME = 'PRIMARY'AND TABLE_SCHEMA = 'sakila'ORDER BY TABLE_NAME;```


<img width="468" height="641" alt="image" src="https://github.com/user-attachments/assets/0587fea2-d32d-476e-ac2d-2265d2ff0295" />

Скрин созданой таблицы 


