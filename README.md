# Запуск для разработки 
Необходимо установить Docker и Postgres

## Клонирование репозитория
```
git clone --recurse-submodules https://github.com/ReagentFlow/docker.git
```

## Интерпретатор 
1. Зайти в настройки проекта (Settings -> Project: docker -> Python Interpreter)
2. Add Interpreter -> Docker Compose. 
   1. Добавить `docker-compose-dev.yml` в `Configuration files`, 
   2. выбрать `Service: rf-backend`, 
   3. `Language runtime: python`
   2. Нажать `Next`, 
   3. дождаться пока PyCharm соберет Docker Compose, 
   4. нажать Next, 
   5. выбрать предложенный системный интерпретатор (`/usr/local/bin/python3`), 
   6. нажать Finish

## Скачивание зависимостей
1. Открыть терминал
2. В папке `frontend` выполнить команду `npm run build` (должен быть установлен `nodejs` - командой `brew install node`)

## Запуск проекта

1. Открыть файл `docker-compose-dev.yml` в PyCharm
2. Нажать треугольник (`Run`)

## Миграции и добавление суперпользователя

1. Открыть терминал контейнера `docker-gmw-backend-1` (в PyCharm: Services (cmd+8) -> Docker -> rf-backend -> docker-rf-backend-1 -> Terminal)
2. Выполнить команды
```
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
```

## Итог

По адресу `http://localhost:3000` будет доступен фронтенд, по адресу `http://localhost:8000/admin` - админка
