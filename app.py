from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return "Dockerize Edilmiş Bulut Uygulaması - v1 (Sağlam)"

 @app.route('/health')
 def health():
     # Her şey yolunda, Render bu 200 OK yanıtını görünce mutlu olacak.
     return "OK", 200

#@app.route('/health')
#def health():
    # BİLEREK BOZUYORUZ: Veritabanı veya servis çöktü simülasyonu
   # return "CRITICAL ERROR", 500


if __name__ == '__main__':
    port = int(os.environ.get("PORT", 10000))
    app.run(host='0.0.0.0', port=port)
