# Домашнее задание к занятию «Уязвимости и атаки на информационные системы» - Новиков Кирилл

# Задание 1

После сканирования виртуальной машины Metasploitable с помощью nmap , обнаруживаются следующие основные сетевые службы:

FTP (vsftpd 2.3.4) — порт 21
SSH (OpenSSH 4.7p1) — порт 22
Telnet — порт 23
SMTP (Postfix) — порт 25
DNS (ISC BIND 9.4.2) — порт 53
HTTP (Apache 2.2.8) — порт 80
RPC — порт 111
Samba (Samba 3.x) — порты 139, 445
MySQL (MySQL 5.0.51a) — порт 3306
PostgreSQL — порт 5432
VNC — порт 5900
IRC (UnrealIRCd) — порт 6667
Apache Tomcat — порт 8180

 Примеры обнаруженных уязвимостей:
Уязвимость в vsftpd 2.3.4 (Backdoor Command Execution)
Описание: В версии vsftpd 2.3.4 существует бэкдор, который позволяет злоумышленнику получить оболочку с правами root при подключении к порту 21.
Ссылка: https://www.exploit-db.com/exploits/49757

Уязвимость в Samba 3.x (RCE через утилиту distccd)
Описание: Служба Samba использует уязвимую версию distccd, которая позволяет выполнить произвольные команды без аутентификации.
Ссылка: https://www.exploit-db.com/exploits/9915

Уязвимость в UnrealIRCd 3.2.8.1 (Backdoor Command Execution)
Описание: В версии UnrealIRCd, установленной на Metasploitable, присутствует бэкдор, позволяющий выполнить команды на сервере через IRC-порт (6667).
Ссылка: https://www.exploit-db.com/exploits/16922

