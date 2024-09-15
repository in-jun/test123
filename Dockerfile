FROM python:3.9-slim

WORKDIR /app

COPY hello.py .

# 컨테이너 실행 시 파이썬 스크립트를 실행
CMD ["python", "hello.py"]
