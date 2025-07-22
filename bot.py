
import logging
import os
from aiogram import Bot, Dispatcher, types, executor

BOT_TOKEN = os.getenv("8138873257:AAFrhH5LJyFZTtfuKXlAz74wUUM5PeS28Y4")

bot = Bot(token=BOT_TOKEN)
dp = Dispatcher(bot)
logging.basicConfig(level=logging.INFO)

@dp.message_handler(commands=['start'])
async def start_handler(message: types.Message):
    await message.reply("Привет! Это калькулятор лизинга. Введите стоимость техники:")

if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True)
