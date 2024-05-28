# Použijeme oficiální Python obraz z Docker Hub
FROM python:3.8-slim

# Nastavíme pracovní adresář ve vnitřku kontejnerů
WORKDIR /app

# Zkopírujeme soubory requirements.txt do kontejneru
COPY requirements.txt .

# Nainstalujeme Python závislosti
RUN pip install --no-cache-dir -r requirements.txt

# Zkopírujeme zbytek aplikace do kontejneru
COPY . .

# Příkaz, který se spustí při startu kontejneru
CMD ["python", "app.py"]