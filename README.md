# bulut-odev-son
Render'dan Web Service kurulumu
Sağlıklı dosyayı atma
sonra dosyadan hata kodunu yazma 
ve en sonunda çalıştıramama en son çalışan sürüm çalışma

Kodlar
from flask import Flask  
import os                

app = Flask(__name__)    

@app.route('/')         
def home():
    return "Dockerize Edilmiş Bulut Uygulaması - v1 (Sağlam)"

# --- Sağlıklı kod:200 sağlıklı ---
# @app.route('/health')
# def health():
#     return "OK", 200


# --- Bozuk KOd :500 hata kodu ---
@app.route('/health')    
def health():
    return "CRITICAL ERROR", 500


if __name__ == '__main__':
    port = int(os.environ.get("PORT", 10000))
    
    app.run(host='0.0.0.0', port=port)
