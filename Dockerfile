# Resmi Python imajını kullanıyoruz
FROM python:3.11-slim

# Çalışma dizinini ayarlıyoruz
WORKDIR /app

# Gereksinim dosyasını kopyalayıp kütüphaneleri yüklüyoruz
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kodların tamamını konteynera kopyalıyoruz
COPY . .

# Render'ın dinamik portunu kullanabilmesi için çevresel değişken bırakıyoruz
ENV PORT=10000

# Gunicorn ile uygulamayı ayağa kaldırıyoruz
CMD gunicorn app:app --bind 0.0.0.0:$PORT