### Инструкция по запуску приложения
***

##### База
* В **PostgreSQL** создайте базу ```studentscores```
> ```create database studentscores;``` 

* Создайте роль ```root``` с паролем ```root```
> ```create user root with encrypted password 'root';```

* Дайте права роли ```root``` на базу ```studentscores```
> ```grant all on database studentscores to root;```


##### Код
* Создайте виртуальное окружение
> ```python3 -m venv ./venv```

* Запустите виртуальное окружение
> ```source venv/bin/activate```

* Установите зависимости
> ```pip install -r requirments.txt```

##### Миграции
* Создайте миграции
> ```./manage.py makemigrations```

* Примените миграции
> ```./manage.py migrate```

* Создайте суперпользователя
> ```./manage.py createsuperuser```


##### Запуск
* Запустите проект
> ```./manage.py runserver 0.0.0.0:8000```
* Зайдите на админ-страницу [http://127.0.0.1:8000/admin](http://127.0.0.1:8000/admin)
* Введите логин и пароль от суперпользователя
* Заполните данные вручную в Админ панели или запустите bash-скрипт 
> ```./create_data.sh```
* Проверяйте результаты по адресам
> [http://127.0.0.1:8000/student/](http://127.0.0.1:8000/student/) <br />
> [http://127.0.0.1:8000/subject/](http://127.0.0.1:8000/subject/) <br />
> [http://127.0.0.1:8000/scores/](http://127.0.0.1:8000/scores/) <br />
> [http://127.0.0.1:8000/student/:id/](http://127.0.0.1:8000/student/:id/) <br />

### P.S.
- Проект разработан на **nix* (MacOS, Linux) системе;
- Инструкция расчитана на размещение ОС семейства **nix*;
- В settings.py пароли доступа и т.п. оставлены специально для быстрого запуска проекта (os.getenv не стал использовать);
