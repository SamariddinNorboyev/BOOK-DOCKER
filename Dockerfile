# Dockerfile

FROM python:3.11-slim

# Ishchi papka
WORKDIR /app

# Talab qilinadigan kutubxonalarni nusxalash va o'rnatish
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Loyihani konteynerga nusxalash
COPY . /app/

# Portni e'lon qilish
EXPOSE 8000

# Django serverini ishga tushirish
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]