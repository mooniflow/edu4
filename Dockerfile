FROM python:3.11-alpine3.19  # ✅ 최신 안정 버전으로 업데이트

WORKDIR /usr/src/app

# ⬇️ 기본 도구 최신화
RUN pip install --upgrade pip setuptools wheel

COPY . .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
