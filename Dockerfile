# Вибираємо офіційний образ Python як базовий
FROM python:3.9

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо файл вимог (requirements.txt) в контейнер
COPY requirements.txt /app/

# Встановлюємо залежності, зокрема Django та django-allauth
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо всі файли проекту в контейнер
COPY . /app

# Відкриваємо порт 11111 для сервера Django
EXPOSE 11111

# Запускаємо сервер Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:11111"]
