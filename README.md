# **Docker**

## **HomeWork**

Docker dockerfile docker-compose.

- Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен отдавать кастомную страницу (достаточно изменить дефолтную страницу nginx).
- Определите разницу между контейнером и образом. Вывод опишите в домашнем задании.
- Ответьте на вопрос: Можно ли в контейнере собрать ядро?
- Собранный образ необходимо запушить в docker hub и дать ссылку на ваш репозиторий.

Задание со * (звездочкой)

- Создайте кастомные образы nginx и php, объедините их в docker-compose.
- После запуска nginx должен показывать php info.
- Все собранные образы должны быть в docker hub.

**Ответы на вопросы**

Разница между контейнером и образом:

- образ представляет собой исполняемый пакет, включающий все необходимое для запуска приложения - программный код, среду выполнения, библиотеки, переменные среды и файлы конфигурации;
- контейнер запускается из образа и является его экземпляром, т.е. из одного образа может быть запущено несколько контейнеров.

Можно ли в контейнере собрать ядро?

Собрать ядро можно, загрузиться с него не получится.

**Создание своего кастомного образа nginx на базе alpine**

Сборка образа:

[root@admin OtusHW17]# docker build -t natali1701/nginx .
 
Successfully built fe6271ce1e02

Successfully tagged natali1701/nginx:latest

Запускаем контейнер:

[root@admin OtusHW17]# docker run -d -p 8000:80 natali1701/nginx

4fe133050173bdf16c40f1b2074128fbfc7c58e4f0143bdec221b3bfdc78afa5

Проверяем отдает ли nginx после заупска кастромную страницу:

[root@admin OtusHW17]# curl  http://localhost:8080

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

    <head>

        <title>Test Page for the Nginx HTTP Server on Fedora</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <style type="text/css">

            /*<![CDATA[*/

            body {

                background-color: #fff;

                color: #000;

                font-size: 0.9em;

                font-family: sans-serif,helvetica;

                margin: 0;

                padding: 0;

            }

...

Собранный образ пушим в docker hub :

[root@admin OtusHW17]# docker login 

Authenticating with existing credentials...

WARNING! Your password will be stored unencrypted in /root/.docker/config.json.

Configure a credential helper to remove this warning. See

https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded

[root@admin OtusHW17]# docker push natali1701/nginx

The push refers to repository [docker.io/natali1701/nginx]

314e340451b9: Pushed 

5b1058dac6b6: Pushed 

3d60a1e55272: Pushed 

df2236baa385: Pushed 

b2babec7eb92: Pushed 

a464c54f93a9: Pushed 

latest: digest: sha256:20a060cc9a8aee010b69b1ea1b2ff91328de7819aaf15b04530ba3586bdd92d8 size: 1567

**[Репозиторий на Docker Hub](https://hub.docker.com/r/natali1701/nginx)**
