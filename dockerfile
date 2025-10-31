FROM python:3.10-slim
LABEL "language"="python"
LABEL "framework"="flask"

WORKDIR /src

COPY . .

RUN pip install --no-cache-dir -e .

EXPOSE 8080

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8080", "src.ui.ui_server:app"]
