FROM Python:3.9-slim
WORKDIR /app
COPY requriements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
EXPOSE 9090
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "9090"]

