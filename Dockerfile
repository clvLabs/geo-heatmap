FROM python:3

WORKDIR /app

COPY requirements.txt /app
COPY geo_heatmap.py /app

RUN pip install -r /app/requirements.txt

ENTRYPOINT [ "python3", "-u", "/app/geo_heatmap.py" ]
