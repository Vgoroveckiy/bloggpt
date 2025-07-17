# Используем официальный образ Python как базовый
FROM python:3.9-slim

# Устанавливаем рабочий каталог в /app
WORKDIR /app

# Копируем файл requirements.txt
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем код приложения
COPY . .

# Открываем порт, на котором будет работать приложение
EXPOSE 8000

# Запускаем команду для запуска приложения при старте контейнера
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]