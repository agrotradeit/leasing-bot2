
# Используем официальный Python 3.10 образ
FROM python:3.10

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы
COPY . /app

# Устанавливаем зависимости (без проверки конфликтов)
RUN pip install --no-cache-dir --no-deps -r requirements.txt

# Устанавливаем зависимости вручную (чтобы избежать pip ResolutionImpossible)
RUN pip install aiogram==2.25.1 aiohttp==3.9.5 async-timeout==4.0.3 attrs==23.2.0 frozenlist==1.4.1 multidict==6.0.5 typing-extensions==4.11.0 yarl==1.9.4

# Указываем переменную окружения для безопасности
ENV BOT_TOKEN=replace_this_token

# Запускаем бота
CMD ["python", "bot.py"]
