# Запуск для разработки 
Необходимо установить Docker

## Клонирование репозитория
```
git clone --recurse-submodules https://github.com/ReagentFlow/docker.git
```

## Скачивание зависимостей
1. Открыть терминал
3. В папке `frontend` выполнить команду `npm install`, после `npm run build` (должен быть установлен `nodejs`)

## Запуск проекта
```
docker compose -f docker-compose-dev.yml up -d --build
```

## Миграции и добавление суперпользователя

1. Открыть терминал и перейдите в консоль контейнера
```
docker exec -it rf-backend /bin/sh
```
3. Выполнить команды в контейнере rf-backend
```
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py collectstatic --noinput
exit
```

## Итог

По адресу `http://localhost:3000` будет доступен фронтенд, по адресу `http://localhost:8000/admin` - админка
