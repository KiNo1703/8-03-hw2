# Домашнее задание к занятию «Работа с данными (DDL/DML)» - Новиков Кирилл

## Задание 1



# 1.1. Поднимите чистый инстанс MySQL версии 8.0+. Можно использовать локальный сервер или контейнер Docker.

## Обновление системы
sudo apt update && sudo apt upgrade -y

## Установка MySQL
sudo apt install mysql-server -y

## Запуск службы
sudo systemctl start mysql
sudo systemctl enable mysql

## Проверка статуса 
sudo systemctl status mysql

<img width="852" height="608" alt="image" src="https://github.com/user-attachments/assets/c6207bd7-26ec-4ff2-9729-5154080d9c30" />

Скрин статуса 


# 1.2. Создайте учётную запись sys_temp.

Подключение к MySQL 

```sudo mysql -u root -p```

Создание пользователя sys_temp

```CREATE USER 'sys_temp'@'localhost ' IDENTIFIED BY 'temp_password123';```

Предоставление прав 
 
```GRANT ALL PRIVILEGES ON *.* TO 'sys_temp'@'localhost';```

Обновление привилегий

```FLUSH PRIVILEGES;```




### 1.3. Выполните запрос на получение списка пользователей в базе данных. (скриншот)

### 1.4. Дайте все права для пользователя sys_temp.

### 1.5. Выполните запрос на получение списка прав для пользователя sys_temp. (скриншот)

### 1.6. Переподключитесь к базе данных от имени sys_temp.



### Задание 2. Kibana

<img width="1908" height="793" alt="image" src="https://github.com/user-attachments/assets/0541f459-a888-4e26-b181-302f428abb57" />

Скрин где  выполнен запрос GET /_cluster/health?pretty.


### Задание 3. Logstash

<img width="1648" height="800" alt="image" src="https://github.com/user-attachments/assets/97ccbc5b-4ce6-40d0-a3ab-6992a6443b55" />


Скрин интерфейса Kibana, на котором видны логи Nginx.



### Задание 4. Filebeat.

<img width="1659" height="758" alt="image" src="https://github.com/user-attachments/assets/c7386c5c-0886-485f-a6fe-0599226ef8db" />



Скрин интерфейса Kibana, на котором видны логи Nginx, которые были отправлены через Filebeat
